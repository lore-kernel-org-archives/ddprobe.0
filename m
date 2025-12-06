Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E98478F2E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765002774; cv=none; b=jjVqiQ9j4rduYdrHyXQb71EPWEPegmfxAH/ITFb/+JdsMeCBql46P5S89Oqra3/OwNHwiWNDrtyhp3oaxlA6FWamVeMWpQTQbygbZYq0mOWc0X8YlD0d+KAvs+Qmy8EWLh2Pn0mK3KoH9oLrHDZaJ3ArnoN9eUA9WvfRZgyXMK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765002774; c=relaxed/simple;
	bh=0bOpM6H5S6+ata80EC3us9IvP/+5kHMsBbEIpzEHgXM=;
	h=To:Subject:From:Message-Id:Date; b=UbY0FMSBu5/9q/XdApKKjx2/DsWaeP8W92O5Ul1A42SaLw23zOIzDdQ+c9T0Xmoe8JP/vIyx7Myq2Fc47Jr+D9CobrKqMxfBWNUWYqnHNeXiJVWuO4IOjN4+w203F1DHo4T908Iw4qyhPIARzr1kI1KvzXYfBWPQs7nFoggNUOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQjCOX8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQjCOX8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87FBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765002773;
	bh=0bOpM6H5S6+ata80EC3us9IvP/+5kHMsBbEIpzEHgXM=;
	h=To:Subject:From:Date:From;
	b=CQjCOX8AbpoZS0vVywhLpgB8l1NrCWmlZHSh9/Pu3VPA8M4reUeEg/SztOArXDVOe
	 K1Qlxboqax/KUlEA/pz5dwGcGvspfmDlXK6wYQk2y70psNslK9p9g17jri28NHOIbx
	 xDy+B8m24np0zewPmge9qkWvsa1puWZZTVA9n5u8FLAgf9dlz7UhKcxF+qhV/gjd5m
	 PPwhkX+yaS/Xs/SGTFcCCarZeeneagS1aVNECVL/DNTWXeGjiGAEHazOnwXosXQ9sn
	 XPUCg9qOS0YFryqPKh6fNZ/DQEdlzbrnu5jSpQuqLl1encS4/Gkq3zrlgrJ69mE/KA
	 gipUIC+ajslDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92462D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500277359.540.2973814848973014608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f0ee6287fd43a7d4b6ec59e94611be651c6b666cb66d1b0acef12f5f6242d1
Date: Sat, 06 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765002773
