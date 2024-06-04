Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E6A33F6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717471523; cv=none; b=SeAAmcf4Od8Qrntmt69MDerrmaLbdGkFm0qSj9oBUSZTX2Eo30XRyOqTTqvMFtVQGR5EKeulw3IvHaZi63TAN9JHyLynPabZIPcyfPVYXNQ+Hj4uINwXm7K9xvpSPYTpdoWh7zkhAivXGNK1Gqsjl9s2z8Pr7Pj1dB1hqFAMLQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717471523; c=relaxed/simple;
	bh=EkRbA6owx/NqdydXFHbGR3CorDAxlyJqxCCvkA4pNx4=;
	h=To:Subject:From:Message-Id:Date; b=UnAX6xoSW0zpgJFObJz1blOilMoN5NptQZErN5n3U0auLsFTrvKhHYJB6hCHMGIbvqlYg4RvQlP+FgH5Kp73BS+PFs9JVK7zno7QbanufzGSk3j5Wv9/L25WHtLkqaIxNNNi2+1HTbnW777MkSWYWSHxQvkETip0uyJYMSCcHT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaJDoi99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaJDoi99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3966C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717471522;
	bh=EkRbA6owx/NqdydXFHbGR3CorDAxlyJqxCCvkA4pNx4=;
	h=To:Subject:From:Date:From;
	b=gaJDoi99oeINDg6QbkapChZ1fZ/MSpg8n5O9eDoWloWoEGyV8vzKnwQLPSuu8usqM
	 jLFW/N2Ba4nncFJ5/lQUw7rbhJ6OSugj0eyNAeqJHn9HJN4AgCdb18Qv3HIfseqoRG
	 t0lXB4ToYCq6EZkorNXTUCbjCDXrSAx2+8q0wRkFUuoAdWf0SZx0CJ9zmC0e2Vgf/o
	 pIX7mXGUeSBRo8r2kOT1hyYJSSC8FpIGqfVBTIHhXP8eZ4ac8aag+wfdjR2Opqql41
	 4dODU4691MaHFXj8kM6T51Ytx7CCftQeYGoOl0UJv469YAmCZKsXttG10PWN+04n/R
	 z3B9yDASXv3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE3BC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747152277.29151.12244535789062629576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960b99da770a4937774850958ea678e911698c02a6c842beb69a3b2c9aef8c18
Date: Tue, 04 Jun 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717471522
