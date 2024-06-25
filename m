Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4711E1B806
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719295403; cv=none; b=lRnUNou9dc5hbyF/tkljABeICM/z1/Jr1wvnT9f2VSjk8pNLuXwfMXKnBHvgfUJceIXbTYKq7BndbcZ5RRRzptWHHKbeA/FuZs0jG24gRwym0wyzn3mw+xtGetXcOAUMpp0e0syWMUiviq08JAT0g1wtYal0bMDZziveNknsBl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719295403; c=relaxed/simple;
	bh=GD3zBvOlWs1Ws6z+pupz6neW6JFZmzEqg6Mn+of4DkU=;
	h=To:Subject:From:Message-Id:Date; b=QbEtITu6EmmrepbpF6RneBgSi4UShcZAAuKfum29QRdecIOi1fAVWVm5DsbPXywFl7cPBL7qReuz8S18wpYysrnfQB5KweBoZZClw9etRe3UCIouSARzYUmlllgWJtyEXTNvD0uxfyVcI9vLg1jD9NDIlABV2SRTTpTqANAjCko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzvXD05m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzvXD05m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2685C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719295402;
	bh=GD3zBvOlWs1Ws6z+pupz6neW6JFZmzEqg6Mn+of4DkU=;
	h=To:Subject:From:Date:From;
	b=NzvXD05m2wdmGw2H5Zvm47h9LRyJV07troezWnTYRSzQpRUPciSJFZiUN7hNBUrJr
	 I8Cm8D6wNMlVxZZVg+lr2bgSbFcrj5xCnZU2lbrDncZB8EaJ7xyymawxpJ5QP5AkeG
	 OMvT1iDwkcv5dxemjyZjyw4Sprvwpufj3cpVGlp8yCeOyjaZT+SHTJECVwW9oE15As
	 BZXSJ/rTHvYyN4hwLAmOVRNne2092CT/J1hcjNrbl8JA30656O2CTVSHhitdg/mSKL
	 2uxkhioRxXDOYbttIP2KW7wDN7wdaKdGLP37JXh/MwnubiDAIbZaCnGlRiPi7k/0XY
	 MeNBD4RX64oFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB87C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929540276.23260.6065602570384318464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d2f6f64bb6ae6e22ce38a42a70c08add7775fc64c469df48c5d3c79af9d443
Date: Tue, 25 Jun 2024 06:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719295402
