Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063F2FF64F
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755140394; cv=none; b=LDDaN97K5Qg1iDanvESM43ST9WsXSRq1fGwkmJ0rXxC60phoT/DpORyYJs4bORLgHlZ8qs1o4ZljpX5HPS+zEkCA3IFmR8nIg+UMlkj4ZrSfkkRiL2VyVUTWBlucWlCtAW03LZ+BMZbUfuf1wlOG0YhPmnvSk3cgZBvtzwBfmn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755140394; c=relaxed/simple;
	bh=DYbmc9yAG0MIg8nvcC3giuf23nuBEs8pCTdLmQGXiRY=;
	h=To:Subject:From:Message-Id:Date; b=HJ18U/F1t4PuptZdUc0SuKKozZtcK4mPKaOcG1zOZrZmgnakJH3qI2rulL517jMcNfa4bCJSZ2DDqsH9l2FEFhcX1jmBQkWztH8cwl776IDv5Nr9A7VXVeGlh7XwOjSDTKpfXX3OCOl5+JcZBMX0iwFfrPcnPiDBQOnU77v54qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZIj1jYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZIj1jYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755140393;
	bh=DYbmc9yAG0MIg8nvcC3giuf23nuBEs8pCTdLmQGXiRY=;
	h=To:Subject:From:Date:From;
	b=aZIj1jYQLOurRqsJ7CuU+x8V8EjK6fg+hdxEiCa1XgZgey/6sRl1DgZAYrCltsfWW
	 x/G2EqRcWsg6gfzRz7PeaHUoIsNPfbRaarmZVDzW7TK/bJL9mE2Ot8ghIJ3LWd3jJt
	 +Vhy+9rmbje5PYeUlXtQPpV1HVsf4Pp2B0e2RryU2nAdLkFr4zlXTUB9h153yMmpA5
	 ot/sa3HwvaKXUoesiD3fLfEL7I670/cSShGFq4TvnCvI07LImq6iY5rxS6YTLwcbeJ
	 RZRE8Uu9/UUCQQYKbio1NjXI6yosIuMaH4DLkHtKS6MVMr6XPky9MtWNcimdFo9fFR
	 pGS2XvPDsCX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282CC87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514039357.21664.9901290588208280237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcd411ad751aaa1135cf934a80315fbdc31d3bc6388c8d0778d919c919dfa6c
Date: Thu, 14 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755140393
