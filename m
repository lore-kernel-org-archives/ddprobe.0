Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CB6C13B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752407395; cv=none; b=Tioy2rd1jJLJIiO2Jzs3p/50yL+oZBEMdYvfw2XL2kjH/q1A83JAQBtNfJbQb17d1WGS04lCNqxhbFqRowt8jnwYxQYSbP5dSreCYPcXnik27TXhMImnHFq5oUShg6XyNgqq+dbVPi94QAVxIH3zTqvzeLBMLpFQESwuSleeqpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752407395; c=relaxed/simple;
	bh=GB4qsMU3aCxsPQq6/1P9hTOMswQGzpkj2HCtZhjWwO8=;
	h=To:Subject:From:Message-Id:Date; b=aiAdcUCSNgHBKUrq2rpIX1LaVT7zO8t/pkfNyujD2+A7GbpaomlSNHwXUlAqaaTwaAKHGYpP/XdZFrmUj70qdBaAC3X3xm8uO1iigQfic/KX7K85TM6qLJ3stMQiYWuo/ZtTkrb3K72lb8kv2fu/o+djrEZZG/9kO+LrnD+OLfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzSL8/YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzSL8/YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752407393;
	bh=GB4qsMU3aCxsPQq6/1P9hTOMswQGzpkj2HCtZhjWwO8=;
	h=To:Subject:From:Date:From;
	b=MzSL8/YUhNSe9/s5n7cvC0Aher1JAlMOGRgnAdgq0ZTPE8yaP8bf4fblZBt3Z7sZ/
	 mWnIWA4PVGVaCGo+ANJxccr+7ZGd+NVuQAWN1AFVjqOjGVgi8oTAEPvn+ujwizRpX/
	 GK4q3r6YkAuFqY5cGj4UMtLNBcJfwCueH07HuaIz3gYiyWrdK5ld1fHsz4/LObLb9d
	 watKYp82rXRVif0wiNly8Ww0IjkRzCFVtkfvGSnLaC7DGhr8kERu7Q47EHnT/bIfnp
	 S7w1eJGYvc1Q48GH1UVrY+ju8CfSz+hp6BYEmUNoesRDeA1Gx+B6SmWOh/ZaPW8TO8
	 bJxrgvDSf+PNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FAC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240739357.20491.14869964846441871515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f088583e230908aa1246063ab91a5dd99c5526466037d0db22a5cbb2a517c365
Date: Sun, 13 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752407393
