Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264263595C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760757594; cv=none; b=L4NiOOd0eUDHGU1YSoM6U5dJSxqaovWrEu098TXAxNUabWgXhytBioGDCqfSautDEDAW1PFLVJDI9W/66NY1vj9OLIY5cSCBO9H+P7+7PXTEZYs36ztHauChQmuValB6L5hao59NO5w2gXEtZYg1KZmrIOX79/m/AuYEi4shrKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760757594; c=relaxed/simple;
	bh=of6Ze81wWP4tyW2PP3VVSCDBPnGLacGH9yortI0OUjM=;
	h=To:Subject:From:Message-Id:Date; b=N6+jKdNGzPM1ekEF9H6CDNCAQqHBWEn73GgOkpFZcQQy2gFa7xKWcACk1aAtPtQstkcK+x6ZlvJ1jb+V26I3EjiSd2mVcnSvIZB5YHhJmSc12RWyodFOlho0Uwebx+feUx4s1L23pQZg1GxVuXXbQ3FAKOQnbqw7MHFzyY5lff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4ZJxEis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4ZJxEis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF51C4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760757593;
	bh=of6Ze81wWP4tyW2PP3VVSCDBPnGLacGH9yortI0OUjM=;
	h=To:Subject:From:Date:From;
	b=r4ZJxEisWjksrRmEKSbqRqNZEXbAMUoTVEnlaFLiPyCgoqzsw/Y3GgE/LoZ3Q6kyo
	 57TIsSawQGbPAauBcOTj4DHppqDfMIOclKZWFZ/tywpvkJpXY4XuZ+dh1daHp7OYDY
	 UVqKxejBeB8172pNgCI2CrGGtwwEyQx1cqfZ8SrGKXfQaxKSsoBm8s65qIDQvtDy+N
	 +ZbnaacH6Mw2MLHllZBswFJqibzSaLN4Yu9bQvaI0H4nENLwAdLEPnTwJJYdTXYr2f
	 ai3/jMPn4tjjc3uJNBXQqEEaXZpIWE0aSLLg7Cl7oVWHjCzBXt8JDASfNHbTfD+7AU
	 uZl2rWtsMqmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC36CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075759357.13141.1599342140533298298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a091388f9ae60d085987ff646e28f942ef9f7145aedddb22f228fa46a768de4e
Date: Sat, 18 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760757593
