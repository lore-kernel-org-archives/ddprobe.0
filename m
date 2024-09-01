Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD53FC0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725196554; cv=none; b=oVxwj1t6cbUo0F+ruSZrPzqnLnj0nvlAZUwTbpc0jO1vV1eG1jXMN3dT3HT7E+4/pyoDIuC8Xp35/Ves0l77Lx8m5Mx7VySAS2N6MbJBI4UCNGGUmf27En7Z0GVQrI/6a7YVm332Kybb3X/Co2xPlbF5JkohlRc4WT1NokBTF0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725196554; c=relaxed/simple;
	bh=iEfRrGNjnU5UrhTcalKRotWynVHqICFDJ9Y9U1U+sTU=;
	h=To:Subject:From:Message-Id:Date; b=boiQtUjmnBpv24+SWnkMXjbE2RAAoA/lOQIAFyWeKATe42zcd8gyV1AblQX/+55pXNk9KE717yKtO+FjNacPNHkGfQM0tW1u8j5v/iuidYkoK4whX9VGxiVjRop3vIwdqw1Wa4nnDk5dzt4aTXLYOaExpgVw3Xsb73MAha3mV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS/2B/hL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS/2B/hL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B129AC4CEC7
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725196553;
	bh=iEfRrGNjnU5UrhTcalKRotWynVHqICFDJ9Y9U1U+sTU=;
	h=To:Subject:From:Date:From;
	b=CS/2B/hLdS4b8548nZiOmLpspSKMWLm/wntvYOS0ljeVWarn1jnO5mvX5oVT17OZa
	 uzNfcaqSxrHNK00n8S8ruWhXvo9mG9vNmjM4VMY4UmVv7ErdL4DeFUBEi6ixjBIfwG
	 jW3XdnF/wP61uU7X5P88tNDFyfljRJxMMaOBLYpdCwKbPDTi2iI9zXbKjG20j6KYDJ
	 AY5rAMpyho3nWv3MlTuZiPVIg57OJUvSYbmb78dwHkZgQV+BNc4GLenv7XqIkTPKq0
	 PAQThZCZuiI/iRFKG1SsKo3dFmNf+vR8GQzjkclfFwc1Uqg/RIFdSPHKi+jrcz0b3o
	 5nSReHCwKMl7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A0CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519655360.3221.16151313158172185038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f62bc40a27527adef5b2eaad54d3618ca47600dff115642d7e15b1f070c70d3
Date: Sun, 01 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725196553
