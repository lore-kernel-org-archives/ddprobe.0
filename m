Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9C01F4E41
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741901334; cv=none; b=HGmKXaHupRqqXD3IMQc7ZyjsgGOHxY7tXKPVAAkd0J+h86NrVA1mS0G5Ic21vua9s34IAxnErkcH4KqkFVRyWbDB/gB/D9ccZQdXBz7T+T4BQ/x2bNj6GuUryC9LQu7j6WhZcZoWBIKMHWNZopRLzaHKNmbtHXFwKTXYlPXukgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741901334; c=relaxed/simple;
	bh=Nolfi+8psPo2wrhROR5DFlnhsXp57zkUlNaRoa6lTjI=;
	h=To:Subject:From:Message-Id:Date; b=rDa+db+iE2nL57mJbzlumBYUUsnv70sA9XslDfz+nj7XZRsikP9aRvKSgFfV5IeCSannBX6ZnTbYF1cbMvLUhj/4d1Vn5rU5emJhH/0qi4LYS3CvuSDBC/Ihh1Xw6yWXPVxfegvLSa/qlcM6Bhht8LTqSkjsL5durpqjMuvMkg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3unq0tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3unq0tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9477C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741901333;
	bh=Nolfi+8psPo2wrhROR5DFlnhsXp57zkUlNaRoa6lTjI=;
	h=To:Subject:From:Date:From;
	b=j3unq0tOLufn5oJK3uKBZHuFLGQAcd3aMHys+LemReeuy9akg5ITgUjfxyt1EnbmI
	 MInSW3lqMJwq7VHW6DLHZiS5DHctrCH/GHjdNztX4Gtkrq8IAONARaWEaJv4UUbxaD
	 ASlTt2kHo+OVrsNavnTxEaKARis2EuUmIOaEbm0i6HN2U8eBKc2c0NSP0bTl4P838Y
	 g5M5vulY6wGB/4yVHvqsNdiGTKN53xnevwNjLx7D5sQwsMsqNUQLnpru93nc9imJmG
	 KYEnCkoV3MIyNRkhpAvkxtb9pyOmZIlu/jktQFrH8ELbZH09RLwz2IOvl5NiTUZO8F
	 rlmpVoWS3AK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92219C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190133359.27399.16935974559293635549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8670097db8c05912b407348308fbed8e61ac9180263bb1b1b8747f8a00609d98
Date: Thu, 13 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741901333
