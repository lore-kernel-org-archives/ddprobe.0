Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7171F75AD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734462354; cv=none; b=gMdAu1y2ot0Dh+fkYvc5Fz2iL9JYB7pVGxf73SEcMIKQ9tzhBaLUQWtg+A68tqYw//q3STBDJqYD8aoUOsvuxDtkhUHUYHfqN2RkC/R17/wAQ/5k35yUPlHLm0q9rabd0HCoL8K9IpLCrQW6usK/1KzkMMFNgeT8ZchNEpR7JIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734462354; c=relaxed/simple;
	bh=vyR9yyjtHjUrT18Lo2yyFYbTgdbT3oTkI/WsSoXGauw=;
	h=To:Subject:From:Message-Id:Date; b=fojpehDANZoEo0iGMWaVLAXGH9wUEoPHsjgqSdbbmgVcNckc4PCy3kz1ByWOH9J70cLcv37ic9I44783blS1B3A8szjhkbhAv8BhRJ9y/NNNT4y3HHCby2lhgBZeeVac92J7v3axhtQRAO2hK9vAojXP+23ng3eEI3X/xFo3a2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+tpU/ZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+tpU/ZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F97C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734462353;
	bh=vyR9yyjtHjUrT18Lo2yyFYbTgdbT3oTkI/WsSoXGauw=;
	h=To:Subject:From:Date:From;
	b=h+tpU/ZPVEvDjOxU0VZxdJdw2ADb2KyIKOkqpmWl7Z1o0w9H4ZBezDB6yFKfs7ilR
	 UxiiSzYQCL7rnPTsa54QmxzfonTFbgSTgCmXs1BdB1nukh9uQSENsbqiyTLedVhx2U
	 qy6cL0fWU+lYK3wmBiSeGvfhJMOaqdbvtuZoklkL0L6QZfxzYnkh6RdKyivwfmEbgU
	 EUsoaEWrcbFfKioYvwGsqHhQ1uAeB0mJTETNQCdZsioJEWdqcz9plZB6tcCI6uiFw/
	 faXHWCwcVH04Bo+XQ3FlPkKOTRJpYrnA/C7gfL+9GF+eCFQ4CLxr+SHg2PMU4FOGwa
	 8sBLBJgKgRRDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D8E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446235358.19998.14493032800669000489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56dc522e0de143533e9d7b93a70ad5daf1f9402f603c2f2949481518fbce5516
Date: Tue, 17 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734462353
