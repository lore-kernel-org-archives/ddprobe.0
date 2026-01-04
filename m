Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0B405F7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767561234; cv=none; b=qg/sOegPfE0acS67Jwvz82OiVnLxN9Rr/bq9gD8rdBS50SOalbKm+4zQFS/xsrKFX3ieEZqFECBdfcWSQWwH8pseboiB0sfe22Fp/acfyc6UeVEp5Fy7bcA7DLOrtO8WFaUhSzPsUGEtfnP0u2fiU6HkbNprhfGAdMIyif6j5m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767561234; c=relaxed/simple;
	bh=Rgl0mYPj39UPRTBr/Kju0ofWGxhz5PR8OqMjW3Vfnys=;
	h=To:Subject:From:Message-Id:Date; b=X+o4Ka+Npa3Js1hg9JD2R0DPL/XvJ/Ez0BigamYC5LT/DToFvvFIDCaPMvN2FQ1uKTwyhyCMf684dV4/AW9K3VahGawh3SA56pthpnqkkFFraNDwaGQKr8UjoXsyvpbPxbflDoIfe5HO5Vv+NabgQpZUy5lPMOBn7wDcZrAUWNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCgLKxXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCgLKxXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767561233;
	bh=Rgl0mYPj39UPRTBr/Kju0ofWGxhz5PR8OqMjW3Vfnys=;
	h=To:Subject:From:Date:From;
	b=LCgLKxXY+R8wDbcVdOIHZ8M/EeH2cFfmmW/hWi0OuFZF1Bhrp8mZfVLoX0PjynMWM
	 8p27DOqPb++tHLcII5w/uv6w5ulmI42em8c0Rpxg1JSfzwvYw7YncAU4TcIaEUcwJi
	 EfeP8bkUKqqH7DQs0NcEAl00IDUWcrbWPzqhgIIp5Y4QvOVGz64blDP+rbAse8Ifza
	 dVFQR4X7dHpZoMKbrnE/oywYGqiVNJGXZidcNO8OKemCjvGs1iCPzwtCco0VeYyCA+
	 baKnMEVVkIf6ex+DTHnTZrRuD5acUmxuV+ItN0X+5OewvPRwdAhzziPCEM097j/gN0
	 erAongnls1ZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40AC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756123357.16723.5514881144551509643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b1f3513bd3beaa9bcd14cb4b9903650cc26c40d0543a28f38e04f0952b4be0
Date: Sun, 04 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767561233
