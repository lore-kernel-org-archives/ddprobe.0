Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387D63FFD
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771800894; cv=none; b=nqce+9lJEhMXk2tG9GyzgE017k9X8cxqKXbBm5Pva9TRHhi4aVHmsLU1GWeiaFQXobDgIry+BQrAHfOE9QuijdcqyOUGLmurP3gLDyPsknXABZ5nXsb191gVqhGxDHMAi4uSpGfx5vsqlqJuq6wevpXtoc7DJFli4XyLq8e9Q3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771800894; c=relaxed/simple;
	bh=zaWzMuE7j9oEm6AwzyO2bjNIs4EQsEA7lsq7qg2XEi8=;
	h=To:Subject:From:Message-Id:Date; b=f6huhKyBE+sFhjVxpKH0xHwPJLlRS1jBoKiNxVzKq0jZYDEP3zwidRXlbwGhL7BmciB4HYNwXpG6qzkDVOerKXpOr7BCu8XXVD2jhKPLzSqDMmE5nr5potS/aGC/8K5vZSm1v6v6hX9ifW074FvDpzX8sBEy8GOV4r+a1Rw9+9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3RXcPZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3RXcPZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6201C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771800893;
	bh=zaWzMuE7j9oEm6AwzyO2bjNIs4EQsEA7lsq7qg2XEi8=;
	h=To:Subject:From:Date:From;
	b=b3RXcPZKK/gBWHF9Az3F9o4XAfgk/CTYiFpIzRmx0AJi4ngU+f/ZeCtrK0gqDTvLM
	 MODJw2IutP38RFJM6pu5ZOOowo0aw4pY3KazdrlSn7PnjoOPeznW+UTXQg6KW+I/ao
	 eI95NIhTvdqfd8M0m558Pz9xbdW69A2frPrE2srZaQmmEHq1CZD+U5N7RnXBs6DzQ7
	 PWgcZSGQYItcECxTYdcauEMo5W+Igpi4qFKtvc2sud741gXIw5Fwq45uyrZU7xKlv+
	 v2A4vU9UNUuqtElA8+ksWUS8JW/jmFom3Qc3TxAfzG6bNanEPx7YIzzUMKusY/AXRd
	 gK966KIlm5Dyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8CC6369E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180089358.15792.14467874206259789712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38832d75a97b37e3d5cf42c5e6a2ea0a40ce5aa09ba4f636e14f9f3a3c3b777f
Date: Sun, 22 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771800893
