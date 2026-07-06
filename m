Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0793ADB97
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783308514; cv=none; b=f/DzO3bSiu5vbfHwOajX5BUOalfI2Nr8Vrpxb2WlADf/aQ/KQE++UphozVZRzOWt7NTe/hFndUd/y3M25g3TnmoI0meKcBTzyNVUMhLbQd17EG8c4Ih722cMWDc5DsO+fqD4YKT/1GTBhNNSJ8ElDNZ+0nX8wj12nhpZ4PwZT40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783308514; c=relaxed/simple;
	bh=zcrmY+vfvI0HW5/VV0w11uh0gLAVrfYb+vcG0I9FU2g=;
	h=To:Subject:From:Message-Id:Date; b=SGfvv3BI9PZbBUH3nvJ/ZaL/QSCzNTtqJ3l9nFoJANBRyoIQrjjK13j9yEspCzH2GWPMfbSYRo1DxoSCLMx+3lbjLv8rXHLMDjunLzkQtPfCTOY+vyIUeRvvBrhM79ZZob8U2uOjFrJSrMt6BSJzuogrWbhVPOnLVQhDpXPgXAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/JZzbxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/JZzbxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F31C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783308513;
	bh=zcrmY+vfvI0HW5/VV0w11uh0gLAVrfYb+vcG0I9FU2g=;
	h=To:Subject:From:Date:From;
	b=r/JZzbxxeiZgmiU/24AgnulWJOq9Z0QZpnEiw75Oay0SvSEPSGdyqOlCuBZx1ttDZ
	 h2ephAoT6gmnar2xqJX3hyVVndTKAeHi4EVBBAWJ+r8rtbnkeCHiXSJfokoGDHcH4D
	 zbs5rB+d0IT7xVaO5W0McHGFqWK6KPdb53eAsLW+Xb8Vk/XtSXNOtzbk0ONFHhdKgX
	 PbOQ5w4IrQSFS9pZg2uweJSk5P6vp4fOHRtV7jXAxHiSZNNJiB75PhV9XwM5Q8Y3SC
	 PbXpEjaGEeTPQehhVs46cVn9ohDRwUPWyopRKAgjhnwKp74wUxgdfqQYLF7VIaHoku
	 6+fiI6GsLe4Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A0C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330851368.16906.469044365361506174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9d2e6d8ffd71dfc8c6d5f59cb9770a69e57dc2cbab29d73e0b7d8ae68c7d9e
Date: Mon, 06 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783308513
