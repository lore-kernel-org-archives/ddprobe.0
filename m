Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B3EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734200154; cv=none; b=nVGokwil54cF7Gt1rRDshYoXE3NYEBcmoyOLj4zEHz8CYAc8P1GzON+D2bajTNkAzJbG5y6/UmLXJYEKU1RFNmrsRmZPkrFb5N21iI8XqUZY2NlHsNOamfq4bgDJXr0iRckWqq4aPe+uDG/R2j+eFf1dxNCgP36iJ7e/co7OiwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734200154; c=relaxed/simple;
	bh=ElHUAZaMWTQqmGUolexeqOX4FxWKFMEIHbhBf66lYnA=;
	h=To:Subject:From:Message-Id:Date; b=eBlf4BST6Oh8Vlbtf6KyQskWzAY1EnL+Gc9W8qMv4wk15muLPy6k7FIkZ9p7adPn1kOKEhioB1oAIE8dQ0VdqyINyIHOYjLigNha3rHmhpjFSVLNUDyxowz/rMWadGvv9/hWdBmOpNQ1ZpJPZQDojSEdDq3hNQJzE8fJrd7adtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmY6+nEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmY6+nEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8459C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734200153;
	bh=ElHUAZaMWTQqmGUolexeqOX4FxWKFMEIHbhBf66lYnA=;
	h=To:Subject:From:Date:From;
	b=JmY6+nEPvGgPTP63vwLq9S6Tf4HygWFUlZbaJuJjMhfMotgBWiY30YxfIjBy8hcCV
	 Baqy6DvFNZ3zRn16e+rr2vPP5w382oK2DIbO2l7XGdYOLhrI/kMuNp6RUfz4mjfSR9
	 FIqqZ/RkO623A+acrQBakLkSb9c1IW0946LjKGWCJ7yviSnfBpDqhNqH+5IhB6wuV4
	 c8XskXRTtfRWlU8A6MXbgSUP/GdXsdjOp5bl3SPXze/lZdFMWWvaW+Bl0H1uFW+m1c
	 nWbTB6Gg7bJ5+5gN0s4dPpzZQSsg/MA+6yTbrOds+rvaWl1xdAZmANQJ1MrY9cxlrl
	 AewjtZwHeTXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D59E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420015363.15552.16066104403822149833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5751f34524ecee28dca0a30807c73cf08f6441c4ca90cfa1c0daebc16e22797
Date: Sat, 14 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734200153
