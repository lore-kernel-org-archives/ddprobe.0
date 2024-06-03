Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447B0631
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717385723; cv=none; b=TtqXP2DbTGuBtyWt7AnL7LQmN5RTH+kWCJkbfI2B4nJ4QHyh8AK0nC25mU7r4eEPorYUbndLAXVKEuVL5pQuIkWNFNWeT3n4z3quY8sy/kdDfO59p0QDvQlTPirz94e5lvIe+5xfN0j8gnPHeGzLT4aVOWD6fc1u+GRICkuJZp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717385723; c=relaxed/simple;
	bh=amzcFdOPN7KdhbmUTm2Ak6eRO2nvy9Kje0b7vKoCEq8=;
	h=To:Subject:From:Message-Id:Date; b=Pws9w0nbm/ARiPNXP7FC3BSvD0U/XyDTAtYTIwMuFmW2v1Levsor9j5Nhe/C8QIXIbpzaENakp8AYQnyAqevqiwgv0nBTuUbLtmaSnKjHCibX/0ZkffHXW9gHknQ5lRcnkWuzmqySLd3tgwpAzqs8UQSRSRDOJFdiThG0MkgsfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g15XHAuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g15XHAuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68A4C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717385722;
	bh=amzcFdOPN7KdhbmUTm2Ak6eRO2nvy9Kje0b7vKoCEq8=;
	h=To:Subject:From:Date:From;
	b=g15XHAuGoM8/GeQKiA8i+giEyPVJrDV1Wb5x67O+nzmk4cpHKvqSNr/6OxRDq2DYN
	 i+1htmGVVONrK6PcRM6yXV5iKATJIJkIeT+hMsOWt8a02UwC7/oka4PKVH5bZzr7J8
	 XXzA1NOjpcdYbk0kN9QmT1DgVJ/ryCA0u0+cOqsngmwSxKsZkB303RDVT3vz51AtHC
	 W/oLG3zdDCqn915EUxg5qLp4fBGYG3jn3VFEeni0IRXvgT1It1jEVdsjk8fCgPNxsF
	 zas0ex/TLOPFzX2NwQR1smzyAklJ+S0rhd5BZPFzxo8yT+HXdhg2Bg4TKSXYJePH3s
	 2SxYBwfG5J44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2148C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738572276.16170.7816780582308779614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaf485207bbbe1f7af1c1ddc6d35b1cee33f6dc7f9d80af3c55dad59b688a1d
Date: Mon, 03 Jun 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717385722
