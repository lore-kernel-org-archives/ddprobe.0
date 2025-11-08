Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893420E011
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762595994; cv=none; b=QDGww3Ktiw9Eiq8oLSzAkf+CIgmAP8r7NmorEd2z1tzOFc7m0Jd7oCp3Qs3vo1rqiKhVGyAZP7hRIGxJU0Wna12sJ1STMa8NllkjG5wd8tbfwOec9gIK/etdSqZdkAP0BbTHItJSIsKI5zJFVLcpK8ajTsEv9DY6F5JHtQbrwLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762595994; c=relaxed/simple;
	bh=ulKKME6Ld1SjrksvUT2xxg7Da7gWOTJ7E3FN+rEYDg0=;
	h=To:Subject:From:Message-Id:Date; b=qeG9YRL6EW0gpyWf6L40YjibTx2RMiLIAjtjUJPmERto51019FiP/4SZQD+Hdku8MFuikN0qfsMRjLwnJhoy1Hi3smjXrsLWasWvoGwV2P4Grnt6sfGGjsMg553S6EHQyVcMvuWX/sjyHIk2DBW91/nMarK+hihq81QWY2K21/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htdrrayO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htdrrayO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C19C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762595993;
	bh=ulKKME6Ld1SjrksvUT2xxg7Da7gWOTJ7E3FN+rEYDg0=;
	h=To:Subject:From:Date:From;
	b=htdrrayO+lFpK/Agk5opUX/mY0SiH7XuMy+voZfnl4aVJEDvMVFpoSwK6ubf6vX3s
	 wRPIkDXYCPaRcgxoSgtSX9qrRPlEYchRcavXi3Uw1Yv6YDxm0ti47UiBebZoV60W3D
	 tD+/pJ5rCg8mW+3TlA5lWhDX/feUMLL06FlsjhpjOMtp0jb0KKOTi78WUAPzZjRpKS
	 yI7CiOYRuJaMNGuN77sJwa8RztszXDFTshusSals7ObY5sTMLugkHsaw5xuhCLcCNh
	 AwIlcUxyNHb8mfrsuEGNR47B+SD7MrAui2R4GU0tQbxz768qDTvt3TASfuB/FHUAp8
	 l3CHs4ykj+EgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91287CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259599358.23609.3367143894982916749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f00ddacb42b6618f0752843ef20aff02bcef58059455535660e42bdd8883021
Date: Sat, 08 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762595993
