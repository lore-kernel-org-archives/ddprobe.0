Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30A283FF6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749215394; cv=none; b=ZQ3mJ/d+PV2tB8blzAj3SzSMmkf+I7zCO4djV14gEAFLLUfdqpHWjDsBeMFXjZVEBLZIosAAWh4QGaxK/R59h9m35+sgjSagxo7pJiSIaTGICbleJyQ1g+BJRHJkcqmjXyom/8K3RlLZBWf03Sl3w3smfsdqP7AsDTEChUyg/ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749215394; c=relaxed/simple;
	bh=cudLpedN+wifkKr7KuWn7+MsFxIWjP2+hgOYMwtGFPo=;
	h=To:Subject:From:Message-Id:Date; b=dwz0GA/PQCpW14dNj7JK7UulC4tq2NGOOEz8qjn9RCA9VtmBnSJ5FFEsThMo/y96kdMaZ9OXMorDLRHOh59mUHVG7qhzD4uJy/6+pbTTUgSrAqytzlTEkF8mJ54WVmFeNL5jGQdCMs/W21GxmuFLUC1iMZvig6SkCP5ExbPBHS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsC37a9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsC37a9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7084C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749215393;
	bh=cudLpedN+wifkKr7KuWn7+MsFxIWjP2+hgOYMwtGFPo=;
	h=To:Subject:From:Date:From;
	b=EsC37a9E6JG4hZUcqlIhb9bBu1Nr0GTLgWrETR4EjZyPjeRoZTYhUn+jhTvkEvyNj
	 c7tqvIwtMR9l/6bbjWuDVHO5kcrU4EIHL7OcrrXDf+WhUdQtUF3F7QF1kH/TjVKPox
	 JZVXwiXNZVGextx894ItkpLJHOW64J+JVT1fVgND56qJudfF/rcknt5pjZ1+fUipIE
	 5zWHZ+x0S6dI7nCv6b9TmzuSru7IYiCq1msbKr4GMv0ZqjKWBizOtPJBMKS4LrpC+b
	 CJu2oBNR50mSNDw14IEGwUHFknB+MKxBl4JMVPWhVqzkpPUt9dDVVTaK5ouKYs1bnd
	 5TVCC1D3G1E0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91487C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921539358.5238.1742927336961515297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea86bbff5ea69c24220b564ee606ab2d2438a200b57c8e574d064c6d884fbe7
Date: Fri, 06 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749215393
