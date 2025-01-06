Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1B21DF984
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736187354; cv=none; b=jn1BhXw1SWEcyZvK0WdmikPz6VQ/b5c6kBE60HnbjqwBJWcM2m5IiZZuA6QHs7uOuQcEbFzVNIPOjn7qmrTjobPOg6JSovGm39J1yOp70HQkX4kughctuwdHyeBBO0wepP5d9TjXY0hJac26ELSs7sjouIx8UWK4lh2MRmenUQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736187354; c=relaxed/simple;
	bh=lHN9AC7iCjiExXWtgJI11UA8DydcHmDxGljBZmt7bXA=;
	h=To:Subject:From:Message-Id:Date; b=Ewt5aw/YG5JYx8RUhoDAA/2Ux9CrNCWTQsH5ne3zqN1W/SW50cjQey7w02HBtl6sarnsJgrfySzGsiUCYspcqsoIPItsBDsmD+u+UFhSx1Vf5cGAsAKlfxP33yKlJT2INFP5VArzjyPb4Fl0y5CRkzFr+fl0WQXEazHDeBTog2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUnQaAtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUnQaAtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6092C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736187353;
	bh=lHN9AC7iCjiExXWtgJI11UA8DydcHmDxGljBZmt7bXA=;
	h=To:Subject:From:Date:From;
	b=bUnQaAtVbyIsLDPY5LXJW6hm4oHAgqYd8CTRQRrqmG0Uve49rj9y9JtSuJep7jDaK
	 hi58IXYtrG1oZ7HS4WDL05jqUO9FVXJMKbbAgW/WkJSv+2QhK7Vo3lobckzbOZfP2o
	 eJLaPChMAwmUhH/N0Bu/v9Z0Ybk3roziTEBx1/cllNOJop1LL/0Jx0kmV/TaxIba2M
	 5g6C0RFpvUeyEDDUJtxozqOAskY8XKyOrdWNXEmGB3bkvmxQ0iwpXhGQxNgH7XU+gO
	 l7YV/TO091OUa52mTVKhw+2KuQnY4lofPp6UNnZmun04mecMmyRKKrYynE8uGhe5D+
	 fKSDvjtbsi5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C64E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618735366.10795.17909400678449541143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa7e7f972feed2edcf07fc709c26e17585873f49a1f4a8ccab19603b523dddc
Date: Mon, 06 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736187353
