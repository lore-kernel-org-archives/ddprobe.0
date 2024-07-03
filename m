Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB691428F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720006523; cv=none; b=ZluOCHLOx32lEDDr8HRNy06bU8tEXEuV9IEKcy1le/0gNRkOzl/7ZbRkuHqXVvGtF3/mF3S16j2zMhwNJFc54uau9qDltg3DZ4UPNMbz2OCUyo49Xx2j+lWK89Kpup0473OFSfTWAWSAkZiFPkZy8BCDOI7dSDLJERJif8O2WyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720006523; c=relaxed/simple;
	bh=5R+bQ5P+MZaYGNra69kxRfWCJ9umnMPwT++HpNXV1k8=;
	h=To:Subject:From:Message-Id:Date; b=n3l25Kqw2bN4+lnltUhKXjHjhuPaiWrP4k2NbLAOCYC3qEeJmQBEjXQqyOkxeBWc3h+nU97PMbmsd0YWL976hsl7o0ZaV5A1viYuwWzeUcK5yeq6wXhPrksFzWVj4zbKBBnQLUt2ZkgqMKKXs25qupkfxgtIwZivRd+Oumbc7FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF3T72Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF3T72Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D53C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720006522;
	bh=5R+bQ5P+MZaYGNra69kxRfWCJ9umnMPwT++HpNXV1k8=;
	h=To:Subject:From:Date:From;
	b=NF3T72EjVOEW0dl1ozCNx3WDIGkCNumbKiaXnbAdCMyEjieeZt7h1bejqFCavc0eu
	 geRwewqw1WBAKsPDnpeDPfKTO9eIn3Owdz1r6gXX5DHxfFDtHtk3o+2fA59saALZ9v
	 wOQnQ9xKbqAnlHc5xJZToYb9Te+2AbifWQvJugTg4Iaoof3879rkLdTmo9C8bBEDo5
	 uqHUtq3F8oJK5uemtxJygbrGEmx6QdBwBB1vjOgjE2exJRGKtxnNhxGMaTnLlCrtwn
	 e4DndNdW4rtM/UKY986E5QoIXgCnfhyb2yyiwW0ni2Hfe9BWMtsJvqRhh4Kbn6AFlB
	 xdwn82ONZl69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4369C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000652277.6827.8107055633544433760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6e2a3acd464926233ea04ed1af32a93746fc968265f47fb438bb67831bc79f
Date: Wed, 03 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720006522
