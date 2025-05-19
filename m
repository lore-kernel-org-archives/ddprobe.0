Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E422AD4B
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747621194; cv=none; b=qn3S9NR6kTZIOW8KrGFnwhMT8ST+CHs239TQ36eQrrAl8Paz/uj74+MTvvzReyZK1aQSkVkkm0xeMP9BJtePSi9d/rdFFBcsfIkIRCxZOl2To0lRL8s4uuNcvD1mResw4vQ22NAK84x2uDjbFcSJ/HeXAprl/pT0nBw0dYbwHJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747621194; c=relaxed/simple;
	bh=/8xh+ymG8Cwke1m/lfiFe0dPJkPXNQGggdutASLU5rg=;
	h=To:Subject:From:Message-Id:Date; b=jVf+v6iUVZtdBIgtRLwWd9/sRHJt9r8zk8IXYfX9h3AYRym/+Dm5gLi4F1dsP3a8xUAp34Led2HfH/GouoRW0BXfZlLZlOA//BQkKIEYujkAuUSh6lfbw/oyZs9XwInMzXBGCdIBd20n58mf0d9Tl+AOUlSpnmeDWIZHApK55so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/cFJbhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/cFJbhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C4BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747621193;
	bh=/8xh+ymG8Cwke1m/lfiFe0dPJkPXNQGggdutASLU5rg=;
	h=To:Subject:From:Date:From;
	b=l/cFJbhLOGDkDbNE+5+pf/jKdzZpZrscXPsL4sKj46drAs0uH0wckhol3c4jbOQ7A
	 D5FmZWPR/DJLhh6T9kEe1NsMdlKsGSj4779m+QIfaDlu/FgjMmtwTJTEu/0xM418LF
	 tE+/vn3SgyjDUDz1Lps0ngLbLxdLDot1rVTyN/QL6xxR3V+6P70KnbUS1AvS9JEwWW
	 3TYUuQhY0SeFIExFPZ9YuONU7UUFhp/HSy2hCbRaG9y06B1FfIuCTJzScMX62+TMr0
	 1FUokrJsYdaYaBL6sAsm38tLg/8TjQ20lykUa9CM9ZAxsx5Ia+fOpLxlHf02BpvKaa
	 CYn6DdsGdNQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B3C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762119357.22099.2186948415474525946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3309bc1ed4d78cc5ae6f0705e864c8f7400d100e48dc64f50c187ebf653ab2
Date: Mon, 19 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747621193
