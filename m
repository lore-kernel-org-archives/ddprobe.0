Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDB32EAD1C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777476454; cv=none; b=I0ju16kkjAgTVoB1p1WjtPJcTGeVSSRJtodZ5/LGUDC6tfmyI3X2ul5sukrBOrinM8ZkCqspa+8kJ5ZgIut15mbDatoHWy1cbBG7l/IDYLmwMwqAIf0SyvWJQ+RORyPs3Fga9h89ui/+ZBI26V8BohaexqeFoHPne73maf0MAgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777476454; c=relaxed/simple;
	bh=rAcBEUbQ/ex5kplQ/b8MGAh9obX0UJqFSAyHUZDvO48=;
	h=To:Subject:From:Message-Id:Date; b=D5+8GFwonmt71vZ3B1sZSMv0OlvBGl0nXUoua9Dty6laV6nPVlEwhrkxsJy+GpVUMAXWMITpeXcOev1ZWGxI6fiMegxnCZoOesC8hixPj9Jy8Kfshen2aZxA4UUZVh6ccPnoS/EkjJO32sbSRfo8QW7ZreI+tz7rpRkQbEG9Prk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fgj+gEv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fgj+gEv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB64DC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777476453;
	bh=rAcBEUbQ/ex5kplQ/b8MGAh9obX0UJqFSAyHUZDvO48=;
	h=To:Subject:From:Date:From;
	b=Fgj+gEv3AW3vKlc9Tc23+bl6WCxfUqWRF06kvnYcRr1xVE0z/4Z+6xdMrOm0sEsCq
	 CSQU4VxsWVUIO3eK9TNjFq6HAkpL1ZcPZD4BJPtQfLCYW+Slh35Agm19udBWZLr3Qt
	 erP5WpSuIY2jSLuoQXzbLYzbCcu6wiAzvqPr/p/uXShENBlXk8mDnNvh66/yjg9kW6
	 D+x3vgu3jmoqHmj/KuiynofN6eVrrLl1s4XtdWmCxhBR5U9YHYzi36I25kXcIG1Hen
	 fLvyoY728THzS4jrj8ZmlCplT+HvCofXp2v7QCSQ2LvXqI1LZTN9p42Xztj3+QsW7q
	 uX+wUEYfEH5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2DFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747645369.12265.11733813361436841145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2912fba27dc2f5c896b26bd656a455147be5afb3ecbe6913ec1f4b3ede8faf02
Date: Wed, 29 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777476453
