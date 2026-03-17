Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19237996B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773720894; cv=none; b=sNLzGFda7jgDGGM+8EwygTIekdYFIzHH8kMTH7/7/EJDGUVmBNZL+aRmX9CdM2bBft6cEuWLY6QkJuqS2OwC93psomagThbh3jZ92XxZZSrY8E/npJ+ONOFgyUAdR/LitAdd5ti6hX14KZpkig16xM9r7ws0LbaQQyCIH0yhv8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773720894; c=relaxed/simple;
	bh=VBOu0P12SQ5zTicMkCTJ4lDPuCEoRG8z4TZlarIfIPE=;
	h=To:Subject:From:Message-Id:Date; b=Nnn/h/b/m2GPGVcsnUW6bCpl/QmR4p95U+uPoqI84YBFtpjJEvvBuu8fhH4SK4PYAsAoYCK3fj0+rwC/lnUeCVLNXXV4/ktoha7WQIMLhovm6RT+Zh1kDsvcUUVS5btc8c8YH1SkbWNOncyFOTkbc4H/e598q5ybGudss4cnxNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdlHIcL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdlHIcL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0251C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773720893;
	bh=VBOu0P12SQ5zTicMkCTJ4lDPuCEoRG8z4TZlarIfIPE=;
	h=To:Subject:From:Date:From;
	b=pdlHIcL3EVvWCv9LkGBk6FYcxqf9BA55W46lOpHxjD2sqSwP8oL6IYG4dZoE6IwWa
	 yqPY/vT6IL3F/eUCGYDWups2SIUH/rRgfrVGiXSSvWePUpZ2DI0GBeQRJob/GGJ9Wd
	 MOS3bJkF5bzvhzE3f8tfzyh03qUg664gbGHOjhhgV83tMlxC7bEJwq0XF9rW+leATL
	 Vy4WfCwI2A2K7enbwqZF3rR0eX3X0Np9EHmutKeZsQy37xld7cSf/pgsZBPptOXvLS
	 fIqFzgmlAE4/HHEOFe2idpTyE3sMJ7L+AqMGFblc1HrYk/RtHtcsHEnqSxy09gtaBl
	 gbYcH2lM8tetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBDDFB5EB0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372089363.11548.3641878239264775827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcf45cb49c3d1f1e093eaa150a4d478bd56d1d056f7f5535a482e83cdf28db7
Date: Tue, 17 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773720893
