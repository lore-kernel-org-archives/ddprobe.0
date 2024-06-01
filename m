Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE251E51E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717271123; cv=none; b=tkIKL4wrgacUV01s+a1kyIkbFC83Bv///bSRotTv1AuI1HL7OoFldIcdFicY4xH11pXKflN8nFhKVD/yjWzVxUKu/icCc/UB5ToflfVcEES0rN2MCiaUBL/vbd7FP6WRlLcLNNsQjrAvCTb9O4YvKaiX1lbgXaLnOtz0ktZRSVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717271123; c=relaxed/simple;
	bh=xQN3QF3suDC0LZeDcm30gtoWeQZwy9jdA/o69AsWnxw=;
	h=To:Subject:From:Message-Id:Date; b=dDaYV3fIysDb93Uyss8XQ2qaFSwRnW2wc7sODDXfZPzR4w2E5XH4n20IPw87McBmWZNm0bnoNVAm4YZ5shb+3q4qFe9bz1YO8Bzwdu+JKgBoTD1dQs+TrOt4BMi8UBlgBRCVlukFUWBB2pWxdOWS/emtVSVmUV1nsGBUSiEprEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2uYaHFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2uYaHFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5631C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717271122;
	bh=xQN3QF3suDC0LZeDcm30gtoWeQZwy9jdA/o69AsWnxw=;
	h=To:Subject:From:Date:From;
	b=P2uYaHFPwKFmSEwV7Z71MwqYNCHOVPWq1xM2plGbVUE/LZjOhKtKFoXsMdnJarXlu
	 yyHIKQkRlrerekiKevlte+WRrLbXOYkeo1NvDPdVV+ixyizmFGgYOQPjsptrvoumDF
	 ey9EUCoJIMOLeofgq53AE+ruNSBV7kbDYt71rhQJxOr+uUfuH4WEtZ83djkMvOFOR1
	 2zRbHo5h7ubpzcgnw8kwmZv2u95nm1z0YMFE+2hRQEw3YJEylVjwVM+n+yIar8dWQ8
	 bZW5p6F1XziZUaHUavoqij1mZtb9QJQN2o6u9WEkryhhb1ZDL0u3JOz+N3AGSQhbuq
	 2t6uwhyfGdxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1C5C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727112282.2806.3999167778681126321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d457f47083fc0c4ba43eb4dee4cb8f806d051404ca3869f53b58efa985e12a8
Date: Sat, 01 Jun 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717271122
