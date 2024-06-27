Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713B61CF92
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719468263; cv=none; b=bohvZf7O61Z34q1+sJpHW7BImBGxR3/yZQSD9aJgf+CHc1zrhUjFOTiP4ZfG86HvMjWDTM7yk9RPNW+AvPVKqpb7xesszqHq1227YUvSvHQUfbjCiGcSAJlNKvuLbnmVjWh28N6IygW0uHZeS0GHV07Fon8I6yjUCGNvZegVS84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719468263; c=relaxed/simple;
	bh=EJHsEGQ/CJwLnwMtAL3l7BMbNU3vnA4kArkWm353IpM=;
	h=To:Subject:From:Message-Id:Date; b=Hk6i+nxJFXLgAX8tIGHGBZzi+Q5rPWtmvVSNtodMFUzeHQFM5xjTcT/I4Mamp9cyAz2IX1rX+wmversjGzg9r26hodu9jzmGDsRIEL/ZIA1hmgqt4C2duev1+ae/K0CuPV0W4WqlcNT7YKCq4h6nUdf90ZwZ/gRs3OVGvwXKyPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL2Mmdgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL2Mmdgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B16C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719468262;
	bh=EJHsEGQ/CJwLnwMtAL3l7BMbNU3vnA4kArkWm353IpM=;
	h=To:Subject:From:Date:From;
	b=cL2Mmdgx4B/OXCDcxmk/9Ze6M25n5/FyNRJdB6n81GSsGlXSgl32SHKuBpj/n/vS4
	 RgrGHCwqxh7NgBODOJSgK1fvWCcTMBjM2f5o+3S7s8xea8lThu1zbJ9bGP6pg7+jGc
	 Nhw11Ee3Fg2UREp2uIYNX9fm9UzYtzJ5ZSeESL3ZVd/BIoGISye/EiVEY9fxbYkmOD
	 K5AlNNOXGy5rfCKJJ5EJmNMqGc3Yw6zfY6aAP7AwuHXokWkl1nGCVBCEwP9xDDorLB
	 lvgLLu3BFO7qu4PW4FoYEVwKvSmT3nbO++lUxAaHQGmoZ0WKiR/0OcTc31r+e5pL05
	 zL7a5Cys5GgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5901C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946826286.30734.5652682156285480306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad2ca3dfdaf3756f725620d6aa052c5e150324d00dbcfc25bd4edcf27dc6bf8
Date: Thu, 27 Jun 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719468262
