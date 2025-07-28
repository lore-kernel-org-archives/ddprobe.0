Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4DE1A23AC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753739394; cv=none; b=F1DgeS2QQXwGaPUMy7oqab2EMeJ2qDs9KBs0yFGzXD1MU9PZaHw1FBFtcSP783Oy3xCtgnFuNwhHk3bhR5h3M0vtYLUzqHeW4HFLFNu5+knEFH5m1II69pqkc3k5hgpKRGXqOAuxzISfHhil6qEmGrT3o2C5nGeNRZ+SLAXnb8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753739394; c=relaxed/simple;
	bh=+OQVoKOILuldhGvh2SXnQ1Y2Lt5Gt0bFv99ehmQwpEk=;
	h=To:Subject:From:Message-Id:Date; b=mlirGqZPowBx+b2s6B2JlhIuEaSa4uux01agM2pRzKD8ygejxUFRcooSvS9PBf9HS16ot55Z6vqFLGNQMIs1PlGw6WwaEtJFZ01MrjSxScDjj7isLKphs4ireRKHGkUyrtdvFrU92WZAcDFDlFmrMS0onURls0uCZnJAFmzEIm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js+QF6Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js+QF6Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753739393;
	bh=+OQVoKOILuldhGvh2SXnQ1Y2Lt5Gt0bFv99ehmQwpEk=;
	h=To:Subject:From:Date:From;
	b=js+QF6YbpTyWsA9qGgOlmXQAN4hZpXKUjeVPjFz2Q20zwVxv9dEpbgWdqbpXZ6q5R
	 u3M5HFwn9//76OPqbctQMruIG9JdAIkMV0cQnAfEW25/XOy4jjerBoX1oAfGTDyDuF
	 /QxbsTvnOF0js8GFjMW5UIIDrJWxVUcrIf6ANmPMPolT4+9BuinIN39oTngjKG0QMs
	 tY19ea7CeqgbnOkIhKRBGY3RiUqZm7UEbvKAux6U5E/4NSNvxQyVyjgpzVD8LrNhqG
	 Txg9gbUfe8yTbbPOLmV6RSgJsDmsDP0oUh/mruZ3OCZLASyHiBGvCncCqQkrAkopGN
	 I6sVPMEKboDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91200C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373939358.946.11767818837501815247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56935a97019b6bcc3d38138e4483b7c294c5000cce9bd2319384516843a08665
Date: Mon, 28 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753739393
