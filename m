Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BFA1C6A7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717103063; cv=none; b=YO1K9fDGfealg8zppyb8rUSVpwWz2Q+OHzZ5b+oXY9ub3oayF+EGWO5r8zAvhVK5RIOIerrx/glNNmgSpW2zoh7BQFGngpM8P1yY5DLRq24F87rMOeMXo3TnYg47GuXb4fhUR0HKgnwvuFryPeS3O72eNQ4eRz2LTPPXVIxKcl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717103063; c=relaxed/simple;
	bh=Yc2bPVNOLBDipBwIDe5OpytNORySvdqMzYsuSqINAm0=;
	h=To:Subject:From:Message-Id:Date; b=sjQ1qY9+Dm4gI0H9hF29lqixgTmBQ2++me/BnnpBpQOqTjuzNVRImWFncAqzNcHo8Yn0x7NIEuq1hyRHHvyYuIZb7ljU7SulJVDsBu9NodGCBuIhWnbxznUgFIAS2G/IwJdLQ8Yra7jZtJQJP6He6H6oqaa7/CkPYW7gPinukRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P12dXrEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P12dXrEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAB7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717103062;
	bh=Yc2bPVNOLBDipBwIDe5OpytNORySvdqMzYsuSqINAm0=;
	h=To:Subject:From:Date:From;
	b=P12dXrEyXZpDNb6aCWEbUNcpfuP+5W2BzbQNiXjIZuKlHSiGVgyfLiJkeMXoNTORZ
	 /dZEBCIlzL09Kljeey6FTUB3xwaz7nOd9KvezRIKbr1gzHveIL1WlK2wuf9HU68csy
	 vDSdQFBQpeuQMlgiZ8F0McdMS+yYCHu4qpnYC+KfoOGjmqWPguanj8hUh+J+Q5VBbN
	 75D62Mu0qsdqZGcOTePwJBdgwjKpitPpITUJZN/yadg8rPZr4pRURUQ0OUjGc6uld+
	 YgmolKFlGOrbgVIzsLkAV3qNdpLq70WBv2W8lLgkHKmx/hazgBzWGhnFttfTTCnXja
	 WmEX8LEcqioUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BBBC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710306279.30067.7799908890835517169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592fcb2841d1936682e54a886331b7027b93df54a91ae14b8243fc6887a3ced3
Date: Thu, 30 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717103062
