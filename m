Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0200299954
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757066393; cv=none; b=IBqfJuYU1s7Aoc9hzoRolgiesXPeWPK6SLy7jdeqn+bE/TBZwlylbx3D6kUp9y8Bcc2PqxxtiLlKrnDWACgyxw7JokE69OC0Hfd2O2VOXya6LB9i2hnlrDRVsQ3cT780H29iEhI2PvtFFcwvLrZl4Nwdk336BFMkNU14yctv+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757066393; c=relaxed/simple;
	bh=XErz/b4ZLuZgeYjB+tM+gAeIqMHxi3rB9ZEpoI3Xkp4=;
	h=To:Subject:From:Message-Id:Date; b=SNkZ+mk+Qa6hTAXoDx9elf4LI9YfPmXeAA5YQV6EqlrcR5NASflR7LT20SR9h3WJra1u5Uo1S9rQQdWWXweS0Jyc5CRadg817tJ0RrYiVuS8ocnCkBBzTRUNoRF1vEYNWyqQLiUWavTPpjp1QUfVMxtVdHnF0MMoJDWpI6L77+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urrjK+jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urrjK+jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B6DC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757066393;
	bh=XErz/b4ZLuZgeYjB+tM+gAeIqMHxi3rB9ZEpoI3Xkp4=;
	h=To:Subject:From:Date:From;
	b=urrjK+jdReYnNSjf1qvd6n0X8gzQNiBie6D1wzxHtVbj+pU1lmW32U4/Zw20rVjge
	 mlpKqd2Nhqs52uE9sPLz57ooDbQh+RPZzmstSMZDzzWg4N1oUqPOTrY4yQ/m+4gDTw
	 h/zK4Gz4gR09HcmOcFVLCAMTAlOINmz6bmKPGnxPjXZAD3qLVSUSscOpHuBNJjInP8
	 d3Oo0bHScaaejIHanBSFHDFO+jHySrXPOO9aCMX1ff8I1D3Frz3R4NXquUAEeIeBHG
	 y/OgCfWEJiLNEK99nMQUr/pJx8ZkhCYMjPmS9nP4f8rmAV7iCT6niNnpH0y/emGDuM
	 v3W4UUX27Jszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60CCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706639357.2462.4263243650757181416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50d79f520e8398da2232e3030d3e94ade88cf1fefd266f3ac27faa4426c0ee6
Date: Fri, 05 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757066393
