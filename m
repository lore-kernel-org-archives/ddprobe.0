Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE618271441
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752165594; cv=none; b=Y8yBoCBWG0vNr1dYl9+n9pVmZaludTN4NI9R4f/JrHHt0WOsKeoQD5VvkiZl8ncziDo+/lW0MpGT6mAPInhv3oYqXWhmKyadMctNWpefOOtnb7Tdxe09McGvRooTae6TWtLu7gw6dzFzQkBPddbBtBAEwV7tAto1AYaRYFEymP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752165594; c=relaxed/simple;
	bh=G8elFnIIXAu1Q1QdFpVCIUK7bSPRnmWlCPXkRHUisxo=;
	h=To:Subject:From:Message-Id:Date; b=jEWDKxyhDP5MtrAE0tkx5FTtPq3b+VWQ4tXNmsk3VJE1gTo83/XHIFd1LzL20QeFh9JETBdKohthvr8lhNL0a2vsNuOv/OA4s/HZD3rQ05aXG6BozaRKiP9GBEWyZiuKqND+FG+umtL/xmERvNsKuwup2oyvdzZrRKxOWTXrZfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKxxLzhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKxxLzhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE8BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752165593;
	bh=G8elFnIIXAu1Q1QdFpVCIUK7bSPRnmWlCPXkRHUisxo=;
	h=To:Subject:From:Date:From;
	b=DKxxLzhkCIPsOoYtjJAuZtukFXSoWpfdvJkresaGBIItaCKhxEEduirgKf8TSPere
	 foVwFQW61/dG7wffXDIWMcr3OcWajs/4enkQYqkM+SmW12Gszw3sXGvT7gnFEG29Mt
	 KCHjAXq+PgBIW3j15ojHCD8QFev689BElj1Xna+7T4T3DlARa+Dyuf5FrNUt//RY+O
	 b3kHD4/RHhNVTz6g5wekvut0eVbeA5RNlLI9qfrE8DXVu9XJ/S6CYZYqqybYCLZYmL
	 XQRcqtFBtQgU3h42okiUqbqUmY3anYTO+saHorTiO5n7ddoJVxg9Xqo2oS4SDYZE7E
	 H3znMy6N21BPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB06C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216559357.2523.1506014710588458821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00cba1a0fccf08c961a8bb247d67fb0e8b4331527d97c9e27b5f3b61826a04a
Date: Thu, 10 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752165593
