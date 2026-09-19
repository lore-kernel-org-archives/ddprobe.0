Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C10839E9CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789780234; cv=none; b=OYGITQT9vR6NWJ5zcKoc6fhR49YNUaFKj8KZdIMxyfX2mEvhvS0p1zhEgDEGgX97XkIsb5q6Tz2X9T2W/CDn6GqMcr8vtjBLnPG9dSxCNTYur41Uj0HjvbYG8vWPnopv/kqZNE8mdo1Hy/5Xw/fR3EVNxwZ6AwJeplHdUAtcvNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789780234; c=relaxed/simple;
	bh=CSHDNKZaWNdAH6W1swO2CnstDe3UnqxhuHuhV8R5vEY=;
	h=To:Subject:From:Message-Id:Date; b=KcQj4yfi895OrhennQ0XK3yIMmcpg1SnnM7IAzs/4xDwpE2NffHAZjtHSi+P0UGFUJ0da7ugu+fh2CVag3/TDwjKtjhfMXr6m6zu9quEuWIaB7vlz5QJ78SWmcj9sJB6l2mpvRhOdoIzZA2WAHk5vBTrNOYdNmLnBPgwdYNy164=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTQMe4gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTQMe4gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C85C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789780233;
	bh=CSHDNKZaWNdAH6W1swO2CnstDe3UnqxhuHuhV8R5vEY=;
	h=To:Subject:From:Date:From;
	b=DTQMe4ggusPJozJ9CxnrDoD/lwdmlxh1Ees7HUhZnpZRMkqmXww6/AfYa+f4GDdHd
	 RFXldcW5GYqkweCSp03tfArTDPFXtwhmn2LFP7aeSvfsqoh4G0Q0XiWiUa8Hl1YBws
	 6qIbkCNUCBFoMIc/D1mO/2EOKOWucwuxusnYDSUs3IuWQbYGuls3UaTDUXwqrXlxuo
	 YkgOWVabNPiNLbBVVeTnOYoSwH55jA3F+5ub7f8w6RT8GoWtY4TCFkjIGC3uCHn4Ve
	 qq1ITFCXw8NJ2hFRL79Y/M6B+YPQo1sj7jqMpkxStsWV00k0Hb1xB8LaO67JbJiXFg
	 qUPXFMIVzFRJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0533C982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978023368.1158.17187306714387281860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e35afe11fe05ad06ab0ec04815b073c15cb5970d1a4ca28cf4f1ff86902395
Date: Sat, 19 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789780233
