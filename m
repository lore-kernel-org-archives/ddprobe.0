Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8E3255E43
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791666034; cv=none; b=azjvnI9S3WTRlVh2YET/TDu6jTKXaFO9dc8K54YpcaEIBu1D9HyvONSTnLP3lwMITkXMBdEvxUwmXAPdWFmaMal01l2A7mqlVL7CQ1SQzgus9+N9jK4TOHCk+jRm1crV0+Q1pdSkMctqGlMN61aC5pelD2tzEKeZDNAIQoE1p5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791666034; c=relaxed/simple;
	bh=5hzDYdJvxMdgjtYjFxOljeGIgBxHXSCrG7JO66RWJAU=;
	h=To:Subject:From:Message-Id:Date; b=c1DbeVOdJinnD6YGo8TcFNNB0ABHVXvmOp6f9kw8wp+iXvMyPWAMAklCQQuHFUz15gT11bUMz4Jnhng4z4xazoUrLzR8/IAYauMYatM5z1n1LD/tRlMTvHFAQV9WSj4IcKAZ+/GHvnsNFy7j1znOCVhtNWPQMOiyAxfn4wIcsW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/WRp0wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/WRp0wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D01C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791666033;
	bh=5hzDYdJvxMdgjtYjFxOljeGIgBxHXSCrG7JO66RWJAU=;
	h=To:Subject:From:Date:From;
	b=H/WRp0wmX3HdU4K1WFty/j8VNasMuU01kr5I503NFMv1tz2jPIvIhUyGYNL/CvLRi
	 2deOMe9AtNTkrR15MZijiBHYUniQNraBIiMuQgVuomSl3wG3j+uM30am5qs7fx+U0p
	 Faf7QrqOhhtC/ObLDba+OCSsIg9HyUQzAdkPhy3EO/a4+gdL/ofat1jO5WlOAetZhV
	 15/1avAisXJ8E8Ep4AHyCxVNpYXcEdMMc8UG1RIYbGlm8hkqP2l7Tdpu/8+gHUcVOd
	 y/MY5DAnAflF9A0hOY0XTdSeOnqki7+E7YO2fDcbJtum/3n8MSYborn/+X3AVLrGEj
	 D3NEsb9vnfTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD85CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166603368.3531.975894764230237288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587acdb35113d58592f851b26bc29c1f4300d9d12b11cfa007bf2de7beaac3a3
Date: Sat, 10 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791666033
