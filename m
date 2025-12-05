Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F281A3165
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764932574; cv=none; b=c6qGQpsiIbGq98HMJPH47VCzl4VsatILGrE55gg98O1nrfa5U1H1GTIwovX1sjUcG/V7bN6SMLKbQvk0meaWqPipFAkxRlX8fUMGbB+Hjhxorc/XO3VNdx3OBJfaUuMcHE8pJokVFCr4aqxQtQhpQNxTvEgePNOob1/ZxxZCkOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764932574; c=relaxed/simple;
	bh=UQ7YJ7CMitU1rOzKZJZPzLr/nv4JL+DigDkB1LR1VQo=;
	h=To:Subject:From:Message-Id:Date; b=glUu2s2qsaunV7u+a9SOMsIhyNekrZzh7/ePA4DlUqNVgaBMt3LnLdgUw8XlNDcr5fqqmsFYg8Fw6qobX+tE4vWRiKgG8QfIg4r8MPbZjT+yJ4bY0qIOxXEslJDnPgvPKw0tsjJXTg4B8DIOi/z4kSwEPJD31aAYN7XU7ObOXz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLsB5vH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLsB5vH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD548C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764932573;
	bh=UQ7YJ7CMitU1rOzKZJZPzLr/nv4JL+DigDkB1LR1VQo=;
	h=To:Subject:From:Date:From;
	b=uLsB5vH1EIS6F8NgGhxQL0IqisGzyyTWhzUQ3l0dvEI8jrcvoYO1ZBJGYzPLMsF+y
	 embA8Zxlfj7VgI2u7CVLFjBef751TZWwXJW5dco3PcoHABCP/O02I4oD9yv9x4d4Gk
	 xRNapN8OyPxasNr4VPM27Ex8hygGzpJbR3pybfgXKkwqpqgFZXI54xhpVT74BHEhVL
	 QOFWJz8Mi5kJI/IL3WvGo0nupT1Y4hiEPwmVK0Eq/VXwbOxsNFMN694NNI6RpC+Se6
	 GzTvp4nGcGTQhD3K2l9q/J86Sv3VVoq96ApyhCdTnmEgEfrzwHhr3Sq6nDTxoz2t9t
	 uK/IGgjS16oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA0ED2E006
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493257359.22108.17872946430511617910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325f7a4e3cfdc3b089a6de47a1fc2688fca26662fc7e08322f999efa5e91761a
Date: Fri, 05 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764932573
