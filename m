Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6238384
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735195554; cv=none; b=WpI/qMQn5C983tZgXB/zLO2C9l+pAEXpuT3WoEZFH1BqDEkExtE9gEs24IaV9fsi9w7DtHuLTi5bBmY5pxmbZuBEnnMSSbEAl2cbwwqNlPCDMWIbR7osNboDTVEUU429V9tvaJ7Of5K6dH05r07Dzx7tOetTB7GYCNJdJNDFHSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735195554; c=relaxed/simple;
	bh=/nWRRF/mhC9wHrbZhR9GTUb2DLrMRNdG5/owuiskPns=;
	h=To:Subject:From:Message-Id:Date; b=iB0ecSAbf7Mm4wP4VGTgTVxO38o5a2TffQD+kN+rdPtTnwhhfvtCxdP1Itf/++Kofn8A+ZGVEez8dIwJKHnuI6oFfplggfUCubVDoLRkthuJeBm3owGxIbVmR+jvJ5Gn1DWm3THPUON3Q1XT1uWq360rn27E+k4SDPYJWLhtfTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqZKfjVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqZKfjVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCCAC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735195553;
	bh=/nWRRF/mhC9wHrbZhR9GTUb2DLrMRNdG5/owuiskPns=;
	h=To:Subject:From:Date:From;
	b=NqZKfjVDGhHwY7xFgm95HwNX/yeinaWJvjPvzsc6r7f85HHQkx552FEQ2myOhvb7c
	 v3xEaEL/TmXmJTuR/ayt+fn6SGa8dZQ8JFQXzxZij9xle55pgD8LUsvuiXXp2CwkqN
	 TuLz/2Bm9m6I49t4+I00KfGt7Yg60x0DnPBXHus28Nc9jEpDIPlJiS8a0xAh2LIt/t
	 32qE25p57QckXTA9QK3eoUEALayOI7CoDftGxQ0lO7zVDB8tqgkgwxEf359gsJ0Nas
	 5g2xVvd+ooSgCYwH6L8UdbOymrI+bSgYRHMvr9NcIbu6J3g8EFg/jCBwbbNnioUz2N
	 NcTuE+K1pK6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC54E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519555362.8403.2910604467092516187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3be04df1e9c08ab2bebd2125698049bedb517693ee95a44f2c6d5c1da6d634d
Date: Thu, 26 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735195553
