Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3814578F2F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751876996; cv=none; b=Td9ds6GU1uObdy8lUh+VdM279PuP4VQaZM8KOqVbvmdHM37Vhxw+1YzpLWXwabHfr8l2Uzx+sVAYAxvzynmUPXfmOsUkSHEz7FxwEKceLu/ndqdcR++/9lIXK8rPPpHBLFxr8p3TrPNN5Aa5lS0LVO3gRs87YignXy1DrQ+DucY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751876996; c=relaxed/simple;
	bh=874nCnCUCKi5TjKEcYlMwy/wFHBRonHNruGWVBmQ41o=;
	h=To:Subject:From:Message-Id:Date; b=LMEmXNPJxCbqSabqlTfAGakblVkh/qd3AnoLW2StcagcqVasodJFUf8Gqy72K6oyIsSViDF7+2WMXoDg56WoBaWlkmEg5/IeLXzqXsUKwA7GT0+gr1sbtzMDaF6YY58WQCCVOWYuhMGPFVo1y5hFdmg0jVxrMC7KYnFl7lgC9Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNpSLcEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNpSLcEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751876993;
	bh=874nCnCUCKi5TjKEcYlMwy/wFHBRonHNruGWVBmQ41o=;
	h=To:Subject:From:Date:From;
	b=vNpSLcEvvPJ87M9aKs07yI2Eh3zUqQpC1Yr08gMoRoNTUx+N1WNderkLkTB/ypMzw
	 efO1hqoqWrXHTQFETx8B1FmSnwluGKSaZP/wLv1r4+3RABMjrzQ/gqDsU0ZsdArg/E
	 wWIqCTDSQYxin2uSOEhShCaSPu8fbRK++JcSrcTIM3ucde7nXJgK4FWJITEBQLSHw/
	 t9c1IvwsCxsUhCv+lgRoMmJtWXAuc7F1Le7yJYiGYXZCdEZ3B4/FAgJIpYVSd4gP/A
	 0ju2DpWRIEQWtBkUrWKJw4cWmLMZp9ltkVxO1W8kMjcg4Qr8efu8iESKAko9T5Uiut
	 01K78gZigr/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084AC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187699358.20538.8074672479064349474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f387f44061210fad8377b2d5efc9a3f94e1cfdd553038839a34af4a35b80aba
Date: Mon, 07 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751876993
