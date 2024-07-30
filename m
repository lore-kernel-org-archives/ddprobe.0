Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C781310F7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722302153; cv=none; b=UGtjrIAUgVvQn65rgHsAAD3BEobg/WG1khWTgrvCJl+VHLEegRzVnytudzDmsznSzUIXbO5Flh06kghDQuEVCluq5IQmKewzGWNsqXEMmEwuM8GSmXSvvsp1phZyorxq7kebyF+Jjm3bCSwqblNDtwueBzW9hsrCfZVI+Gfs3dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722302153; c=relaxed/simple;
	bh=bSJRERSb9/J9rjN7zA1RzQAtxQVDbMeLFb95/t7yxN0=;
	h=To:Subject:From:Message-Id:Date; b=pRiBY+404xyr4FPOQ9+X7fmJ/kiIMvIDgU5WRTgpMXSIl0tnqlrjom60XZPQCEVRrUCr3Ct9WX8SFMkTwG6dWKrNdiJ8JGFsw8EeMO7ZmZg0I9ddFeR3EDzl1ovDHqPM6aB/ezUAqXpeToCWDOQzh7zycrN1b1m4mjwZuKSeHns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKMFjbJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKMFjbJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4784C32786
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722302153;
	bh=bSJRERSb9/J9rjN7zA1RzQAtxQVDbMeLFb95/t7yxN0=;
	h=To:Subject:From:Date:From;
	b=lKMFjbJDBgq/NaHhAyHKnmZn7rW9h/Frp7QB2kGMPs+M4mHOGVMsU6zlYrsNAlruV
	 luH2FdMtAkRaEAxpgCFzuOJPDsQMKtHxsCM2weiuEsUxbkvRlDw1M1A0IPOoJfPYf1
	 AYqXQE7qmKoyNP8lHJ1GYeUvjXKEnwNsTlcex69CQoLJL1lWxFdLmCv6c53k30TwQe
	 UQYBlnoPD5yhQvM1fyAeleo8KR6FAmPwULrNGpqKwrMPagdWLTGk2oC4L2aqdSrkgz
	 0NVEK4N/1Y53s/aXhMI+hxqPAhVVOPD3Qc7VWLAdfzgkj2Q5szwFnLwtfXk8ot2bN3
	 lG8fV4H7p2BEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BDC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230215357.28989.5318490419944111132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5660e0cbc922dbcd648668afcde9539df9fecf3550cbc591c2788246a793417e
Date: Tue, 30 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722302153
