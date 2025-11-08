Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262A17D098
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762574994; cv=none; b=fHba86ThiOwpYWBOvRQCz3PdMGm+qcPIS+Fy2GtJ33PjGZ8H8ajanVldIzWhjlRf8UFqwVLR8pVyqetw+lBxrSgx92m0fFpNy08etwxDybrvzbitvslvAlRT412KS+zseWWItr08rkMTLhUHSND+2kVygCS8GRT9nKEapnov2Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762574994; c=relaxed/simple;
	bh=F4Ohz94BScCloFfvTmSbADwUxsdREvRmABDhBbVxDho=;
	h=To:Subject:From:Message-Id:Date; b=ZU/KAjP99VsHaPwt/IGM1CmhyfvPguT9E767t3BU3IZBXAJ5zrNleYfzSwZhE2A0m84hEGrrLP+enDhsewwTmZWmLVbRT3Xho9z72qvgAIvaOpiJ4/PgMF4ZHbg/Pt9LbAiZ0FEUvA6g5UgZuXESfeiH/ZuY5iz4AFMeH3pApjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiiZ92e3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiiZ92e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A37C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762574993;
	bh=F4Ohz94BScCloFfvTmSbADwUxsdREvRmABDhBbVxDho=;
	h=To:Subject:From:Date:From;
	b=oiiZ92e3WEjscDPZSBSx0COArCpFUiobColuwMKy+iwqp7zCSSmMY4yxuzWsDJJ/D
	 vljMjHRgt1phiLpIWAy0wdp5xFb8EOoDgyiunFEPxHmtzfrKE35c0EQMKbJzy0uS7H
	 png/r8rUKjLLiHU4VqJit01c+8jyC/kurEcIE3I7tAvpKcA/8ZaJXVFosLNXrTAjuQ
	 oLRIK4ovCNApMcNGgRFJ5uOtE7fdLP5ZBkUjd/UytAIOYeXmpSq/NINceamsjM9mNZ
	 Ehp+EsyGsJF5ns0mmzrypwWaF7WcfacmVc1U1ypPXpDiDJ/xylurGpp63AjyeuXr1M
	 2sANOyjjA58YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCEBCCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257499363.12489.9005221987789886500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74b30747c5fd28a70171ab2d6271f534cc16dff63cd56494e00ac6f70d4e5ea
Date: Sat, 08 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762574993
