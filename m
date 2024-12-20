Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A3157A48
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734729954; cv=none; b=A5NotVnA+lumd+S1qxfucEyTD9gDCjQgCg1SdzXIQIEHv1cfurdDDjUfj7yc71oDN243xzT2aF78ERwPSmBEJmLOXj73aF/9qdaZQwK4JzTfawawMNPcqpq8eeLgwTyFk+rnI9pwy4IDWA1WD/vVY0vfG7gktX+DYs6f64DGgCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734729954; c=relaxed/simple;
	bh=2MhUk+r/Rtl3Sc53XDM/EUkUrGkYNa65hbXY99Efl2Q=;
	h=To:Subject:From:Message-Id:Date; b=uo/HhOXML4Z4Bu/g3T62H+LMi2mzfe2musR4JTcteoDorZjkThqu1oXn+dKqcN/EYjO+KwPftb8GnqSBLUVEf+bqW0Zd4HwOG35Boovw9+5zs36mNb3HsBwb1C9tGFOpRUChC73FRH+L+T5n66+Rv91eTjc5xukpMOvx9gGP1DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaYM2JLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaYM2JLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B77C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734729953;
	bh=2MhUk+r/Rtl3Sc53XDM/EUkUrGkYNa65hbXY99Efl2Q=;
	h=To:Subject:From:Date:From;
	b=NaYM2JLS0/cUwL4JczzCqk+JfYu0HLTo8OWfHgmXOEdHF/kGfwmQnkgOvvBVEj7kw
	 Sx1cNoHwJ54UB4Jt0aI2txahuTNIBRZm7+zRc4EqPAT7ZzYmRh94a1a/KWCRDHnFtM
	 wVDzlKbhf0l+JYQIJC59idJ07r3Azt81Hy4WcmbpSFhLCt2tfDQM+DOSlDgh/Fcp/6
	 dI8W7OqPpr7ON7bBey9tXEWU0UNlnSnCvVZ4TVlEe9tBZpUUYUuTflYmj3RNSBwSOO
	 zxQRKddEvdHfX8kuQKPI29/DWXEcTZEbboqzpXEZ0rggGrFwY2Owmrgm9VKqsoL+6G
	 69oUft+QU/L2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97961E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472995361.17110.13989732069019959512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9958f9342e0d96c34d2f1de5e10e1fa4f3ab5fa117afb2f52fb5dc23003c733
Date: Fri, 20 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734729953
