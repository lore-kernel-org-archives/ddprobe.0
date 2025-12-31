Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9571EFF9B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767191034; cv=none; b=Awe4F7/squqYYbw3Znd4z/gIFRshjOOoGk3/RkHJ/Da4fwhWIwlsFeVD55Fw7FicvGP6q6a8faIKK6Vp1wSFx+omFIeqLRUJSFzWPJKdsb3XkF36XPCbT9Ata6eTeGu7ZPQJIKIcaSqAvmkvapowcLgZlL78J2iKjxHyBjg4DWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767191034; c=relaxed/simple;
	bh=HE5zX07IbJKp3egEkxFwUBsOGt5E7Ot87EZhULBLYLw=;
	h=To:Subject:From:Message-Id:Date; b=ERtvBQKyvXohZCs56+X3lsMZwdLbTI/gHuPZTk9MzJBBG9g8kqlwC8HOhK8Bgn99QP3n/fq2bWarbGIM7Db0fQnHMkKmE90HGalmtWZ0rTy+zEx3O4dHE0+WKVivQCiTE9oqQl307a4/0qQ1NmrhfhZ800A7TdrsE/OhXUs0LsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQyLyHGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQyLyHGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D1C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767191033;
	bh=HE5zX07IbJKp3egEkxFwUBsOGt5E7Ot87EZhULBLYLw=;
	h=To:Subject:From:Date:From;
	b=lQyLyHGPvLZdl0WXdPmgZa9yzK8JvGk5JnBV5lwXw1emR7Np1tZxswhqteiAAoOLu
	 xu2ZuX5ULVfzMcxhmWVx9Sq+7MgAL07z0vN16YVKQifw4ByMkPV45lkOhH8Aw7EhAS
	 1QEDmAauhGZxTBRg5M0Tw17x3bp27MqmJC61XUVW0om0nY4OMEM5w/XA5MjM1QOTbe
	 H2gVM5MXd0bB18YES+stG1KbVOjGCW4Rmq2SK9z+HE7baKlImpkOCjQN8rMPMF9T2p
	 pJKGXVkz2Zrqu1q5KFLW/dxVSVS1hxN0Mda/tCbhROiVlyS/k+je8RWib/dXUZ/ZZY
	 rUfZocKprtSPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92305EE57D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719103357.23926.15268816296170000137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5aa0dc5bbf75aec73c2d8aa4faf264252231576916f5dccaecf4c7e408bb03f
Date: Wed, 31 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767191033
