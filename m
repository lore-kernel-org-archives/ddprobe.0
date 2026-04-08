Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB33335063
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775656534; cv=none; b=u4p51fHAQ2qcPHLVa6+iQzeWyMg6FldcqFFVJPYwit9T5DI0j5u7yjvzHEz4E4JILXLF2p4ggbIe7Azb9I3pDnv5w55stIKwB7dHmkm4EVVzKiCyRKha4bF55YTv7aFxrJq/l7qV5cbrKoPuan9sFfvFCUrnjFb81MBleMxNmYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775656534; c=relaxed/simple;
	bh=Mez66mOMmKDGJ2AT39wd53fWHVC31CIE0QRh+JC8PpQ=;
	h=To:Subject:From:Message-Id:Date; b=JhgntHDE8vLNaeuOV/g8hGH6zMh3MmLDBk2KNljiNChL3ftFilIPzWFS9U1+sj9mVqgrp5rWA2gQI2M9+Ydhsqqy385pLZK8KM+kWvNBtmox1Vd73rPAzDiwBBOpI5/mb+Yt5EiYmNj/YWHpfoYAgBnFDPCNGnzxT3/4Xg2q0bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS0mO30l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS0mO30l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C590AC2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775656533;
	bh=Mez66mOMmKDGJ2AT39wd53fWHVC31CIE0QRh+JC8PpQ=;
	h=To:Subject:From:Date:From;
	b=NS0mO30lI3iucMeDreEzsnU/7ZgK3RNJ5uPlFivHY7Jfcto/ptxqOKfyBebO4Kfob
	 qvVVip0LbWLWdJtrqKRhekslPR9I8tInJ9dt4uO2mYVuV3Ma0eu2uIGk0DIrkdMFQE
	 EsWCgVDU7VQg+2CFpWcJNJtaD/+MCI7RAXvUyNio8j6SjtjfCRC/T6M3cNHp7KFXbR
	 Flq6ZhnJI7NhAdE1Q4C13gcqAHSTHL9mpOG+ErVazjZrnray8rb7zZ6hSNo0BWoXbx
	 OAr8zrMArS+2WIkkoh/rw2vMKmQ8jpGZ8VsUx5OFONM7BoWHbZ8JwwGC0dYUTmQaze
	 JxeP6NWTHf9tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3441073CBF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565653369.30641.13764954283312676811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5409b21ed9f0e58f6f221960e5b2cf89487cb16d26c391f95e6963739b72e8ab
Date: Wed, 08 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775656533
