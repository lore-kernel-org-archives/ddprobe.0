Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2165C320382
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768931034; cv=none; b=QhsX25nEjaEUTttOgigYIB2U1FX/15f0H9bekfRSTHwnoYxowRTSOyOntX3UtUwWJQucdN1eOMaTLHkdqcwv30VnD+BAn8b5n/wZPMJmGMzdVRwIqsqCkbt42/i20pcfhMCv1iVSqiOqoqldoTiXXekSb+ezpPm+zVaIexaT3w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768931034; c=relaxed/simple;
	bh=U7VB1G4uGhhM3oSQxcWxJogIgY/yL90UZCzzAo+HI6o=;
	h=To:Subject:From:Message-Id:Date; b=rgsZQLDmlY4s4R2BY2EYmXiRM8Bw7+Sep5wlOBMMhKV5iH2wNX0MfMOWMgBAycxdL56V6CBr7CXNNKVdT66tJLrBkG1JplGjz8gRDv0T61nVOphK3jIK1Ll1IGaJTkZzKvDv9gmJDHuFqPO5kENlbne1DrbsxFcpmz0VjR7sqmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/z4mShM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/z4mShM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0041C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768931033;
	bh=U7VB1G4uGhhM3oSQxcWxJogIgY/yL90UZCzzAo+HI6o=;
	h=To:Subject:From:Date:From;
	b=I/z4mShMkbxkSoUw3Xe9X6XzmGmWbDcBpEDdVeAUaAu2eR9JFQInLizo/ETag7muR
	 B3Ieb5ffLbTdLhcZPH48fd9zNBlCdvaJ68BGypOPMYacQiRZ0hBx2XNSqNlwifZYnE
	 wZ+VoFpRVJPsrg8S62KYRcpIRJ0Gw7qXhYkRknzLCE7Oeo31P8BF8WZH6cFzBQn6sC
	 9yO4z0xv3CLwO/Gbirx7lMC/MGDbNr9H/pzFShdnKN6e8Vrhbe0C+r/WGznJe8itwy
	 OB9rTO8NkwnnfrvvDsvIUwuX3p8DXS8eSOi5D5CNdB05FdjYsMG98+GIR0BufeKgXB
	 NGQLUQgYOmFSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFCCA5FB8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893103358.15330.3787396860927255531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb107d816ed48eec4d844d49d95ddb4b63d013cccfc5b1823369520e5ce5f61e
Date: Tue, 20 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768931033
