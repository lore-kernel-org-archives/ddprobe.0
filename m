Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2CABE46
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746358794; cv=none; b=XaodetCfOpaHISuaie6VHmhAfKlAOj0rYi6M3MEobVkdfkid4J3OzdhhDaez/f1NArJ4KZhZzEDuuretwBy8A7BJ4wVK08TVBh7sNVJlEijW2mzMMiEotjxBDy06xEv+tWMoC4SqHMMThmOq0xgF05KoXnCR0nf40/XW7oSCjSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746358794; c=relaxed/simple;
	bh=Diny1/bAFuAoGNdsskQENAXoFKmrwzPo7aa75bWM+Hk=;
	h=To:Subject:From:Message-Id:Date; b=p+HbTDC38+m29YsaFKs1XGmpj/my8I4tOOKyjZl6x57rnsIB4h8zqQZkcZreb8IHBPP3czgr08/upy1Bro5qTK9Dbul59GRYyMfdO4t+uWEWl5RNKJwm3tczlFU0Q9V2LOm3rLCILWY9rFYlJtuC5Pc1KrbCi9gOA1WVcJtv1IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfxnNfam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfxnNfam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A461EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746358793;
	bh=Diny1/bAFuAoGNdsskQENAXoFKmrwzPo7aa75bWM+Hk=;
	h=To:Subject:From:Date:From;
	b=sfxnNfam+EZPklWtoVyXuHepQ5GFc6fXPOy6GyWRkn5F0keAIFEIPz4AvXW/dMjG8
	 jqwTS6EfRJfK/d4uRTvcRib7Hezw205WxFTYVYJcapa9EE2vJFVCTled8Nb0WpHKaL
	 vOOImEI2h2z7BO+kONBrF4cUrTIceWZjrrLOtl6oU2C5eOOb4FnDlywvF06aqmPxgB
	 Err7vtlIVFeTC6/IT5XtolL+dg7KPGapajL4M6LTRnZcwAQW4y0B9000u00grsyKnm
	 A+xPfZMF9UtGzXoOy1v5g0KOJLHJm0eQj2OJvUmJlo2jNUY1NXxxHyxd6rkyNlRBa4
	 cpdrTOiedU12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE0C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635879357.29734.16081214188761689282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40f0bae4e7653a2a2855f1695f18cfebdadee2a6ddc3f31bedfce7ce86bf690
Date: Sun, 04 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746358793
