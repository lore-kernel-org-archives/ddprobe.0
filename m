Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB5A79F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735358754; cv=none; b=vAx4JibmPtTzVY9WmvaXHtP1SSPJdE6fJdjhJFd6hoHKFhrakbNgKJ7WNhHRinq+UWLer60fHOmVvIVlyk7w1EJQ8/4pWMKPsovMTAh27WgQemkCgY9+PHqgckF9dgb7maq/YD6ikQ7hl71s3ZuMJMy5ZS6r9HXMYYDBsjk4RCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735358754; c=relaxed/simple;
	bh=wJHAat6LhoEFyhW0O2wt7sdLRYtUUmOkQ7O9YbB3I/w=;
	h=To:Subject:From:Message-Id:Date; b=mgXyK1v/4TfF69xuBOWVqLcLt1zVkzvRwf8H+8MKACtzNVmIzvrFSVNtka3vaM/3WXX/NK9bjNaa8UwBV9rAbVHKaQsgjPbMc+V+tcD80yuy9La6+0BekXJNUU3SuwKyU4twYqGfMI3nTpVE17NE+hXAsc0/8xtLs7VUBZJxEyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiFdL5XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiFdL5XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6602C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735358753;
	bh=wJHAat6LhoEFyhW0O2wt7sdLRYtUUmOkQ7O9YbB3I/w=;
	h=To:Subject:From:Date:From;
	b=GiFdL5XF4hvR0dvFqgBfNuv7QRORGafvZzvLagYmbovFltsIcv/iMWNPUGtbiwYqA
	 sVPt7qqvNaPXOAQnZyYeIVN3b/lpx0PIeNO0Gk57VqUsAC+7qaeLvo4PuD56s8zbVd
	 dhljlcN4QmV/sP2k15vE7r+IaoLcREjJIr/miPEyQ2qwvWNCAsjjtH7x6WqFi1OSGw
	 SdDBt8btcRFrSWeURAeYNGmRpdQS7rvt4CdXaz/VdvFsWZIsZP7Rv9MrRTBgtQiwKn
	 JdUOiVojJnSkzbiLJkIjiJknYJP3SwQ3NklYtIOF8hCuKIq00dKRyU7KY3dztJSedF
	 yJdzri93a1AlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3A6E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535875363.7819.1873481917070495341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc1c6ca861648a5f999b6c122cdd92bab11b131ed65d64e3b9a52e4e4d6ec57
Date: Sat, 28 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735358753
