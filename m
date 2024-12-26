Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D932914
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735189554; cv=none; b=kjR8tOa97qpR2kklwZOgA9Ek8NvlxoVs8eSItJcdchAFiw2DKTU6T3mFFZ+/LdooccszD3Nxi941sQC4f8Wmuanb3opU2b7JWk1DHN/WLXc5hoeQsUInv1PNfBfm4TjdJ/6A+HWoIQiBAhLGCCM4Y1uu4x3Orj0vB3vLyo98dQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735189554; c=relaxed/simple;
	bh=pQATWdHGb9aCgic6Koe8/9sumLbt0DE4BhDeJe3i8f8=;
	h=To:Subject:From:Message-Id:Date; b=lIoQctSxhQyg/NUuQDhXThEZMdTIuKbKoXOI56bwUiDbf8TVFJNiOIBktRBV8yHFITrr24VjWT2tDh+pg2sg77eZnxfRNGFhfk/rSm2THl9P2WCV2HygF0eNCyi5BCfrDEda/SrAoxsAvc6V9UqxklSoIa3+o1OpTNwFpR/i/YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O24u5wC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O24u5wC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2771C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735189553;
	bh=pQATWdHGb9aCgic6Koe8/9sumLbt0DE4BhDeJe3i8f8=;
	h=To:Subject:From:Date:From;
	b=O24u5wC6I+i3COr/bBFUlHACtNwQ+WWpHVmM0DfVYGzP665jVyBY5cpZ366H2xhzH
	 yyvCHk3wZ4Ky3pwEtMU+udADCbvOl4fUkoqmCikXD610Evw6JpEkh6h3EZTbInYV/0
	 CMheiVGalGw9qt6KpsVJre6sefI1x6t0axUJi8E/yt7WUy1XL6ftGymrW6a4dmykDH
	 d/CQa77Mj/R5Xeqqkt0zCNGi26W0vUDnzpWb80ny+Dpi7TCGCq5M1DDDr4SjDJITsJ
	 AQvjViLYPPhIVcTgwBiXVEzXk4KjRP24Vy1R36b1SzoveD2vcUkWAbBUpR1ROOiCiv
	 7BdqJqndbdYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008BE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518955358.2134.12299748140711963605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eaa7d32b36ad05b4b4eb163960ddfca20a2be1d99ac96f7e3500a04db246fe8
Date: Thu, 26 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735189553
