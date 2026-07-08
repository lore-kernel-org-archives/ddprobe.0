Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB88420896
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783478314; cv=none; b=c1RsIwFYL/eqhLlaPFjBjkrFqBnbm5rqtV+3GcubUgCytDZVUdqbHGUi1jstX8gM4ezgD69B64NMFaQHnm2SIlb9WNlJhKxosRyQlXmwjnZ1sLNnwfXB3nAiz7gz1GRxRH8jyIqXEECGbMNvNFLMiw/uBWzjgd4Hvoew1LONz6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783478314; c=relaxed/simple;
	bh=5t5P5wsje7i59Y17bFwqLjGbxss4PktVG8yHC86nHT8=;
	h=To:Subject:From:Message-Id:Date; b=K/LrKiqVTin7Lt0DEbOD/SR6p9csNoxg4NCKDxsBqahPxnyI7vHbuVvhgurgv4mlxGfTpkQBsgl6xtJEaF7K9Zf6q7jOww42BDYJY8HIz8ZSVSmtULgDEddWeEij4Dml5lPab0fybw8vNV8ZzcduwnV/+92OIL7lwzhvX+KWi2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miGZffVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miGZffVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC23BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783478313;
	bh=5t5P5wsje7i59Y17bFwqLjGbxss4PktVG8yHC86nHT8=;
	h=To:Subject:From:Date:From;
	b=miGZffVTORXJKiMjmNy5TXiwjvZyymfjC+5iQ4+vgQACiCqHdYHfsVpD1NigvLcR7
	 AMgyQTuOrqM8C+nPdW4bDNm79pQefRSQst0mrh+L4w219nKwAd1Nuz13NCRvuaRVb0
	 unO4Izrqv0HFFTGOtRbCHS4IVdvk/gvOQdPMJLeOc+9fbXVTmrqoPyst140gmSkMX1
	 1KrhP2LvPAtyvNxnfcx883BRdoHnQ0wzYRLfhtOjhFYM1PxeC8fs2JPAAqG30O+xK5
	 XfKTRWe7VbAMoD/a7laR76ugdMZxB0s/synzQy6Ve1ssi3SfMiJS2aeOsmF5DzXxlx
	 NzsC/dpdya5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D25C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347831368.32231.13224485553102536108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81920ffa195aaad5b5df8f3402dae488e9922b9bd865329da4944ee723319fd0
Date: Wed, 08 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783478313
