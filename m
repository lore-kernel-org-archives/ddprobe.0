Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2276714B06E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732032954; cv=none; b=SaFYqZ1xdYHyIveZu5czQRNuH6OGmalVIAiNlQklcrLClSCXIaiyrjej1IxfoCmRyPOGWF9pYxRWWkfTZeZhJBz0aWsBtiGh8jpMOK/8Id4RamNg3XfpFeCgbWnovKCXvVrfgL5ZAJtw4mzhsUfjUzIhiVBguyc+DMKLVkjdeno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732032954; c=relaxed/simple;
	bh=eYCZ9ymgnkjnQ/z1gairNK1TtfAczjraZNybTZUcYVE=;
	h=To:Subject:From:Message-Id:Date; b=XC7j4bHffWw1jz55iiNbedvY12HxJlZXjHHi6BiFMm2zVBx4S+6yKLEnFytQfMh8Dr7sDS4QTuFGQexP4vBEAR8wyPH6kD/xr0E6pPurytkgbV6xbWbTrghAn8B6xSflOMyDg4tfdEF6OGBOhpyrYDqS3S/jBDqwTiSz4Q4zydQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oixelwXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oixelwXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12AFC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732032953;
	bh=eYCZ9ymgnkjnQ/z1gairNK1TtfAczjraZNybTZUcYVE=;
	h=To:Subject:From:Date:From;
	b=oixelwXh5qNHcrRGSuV+9JtuQOaBOr1iJR/SyUf1d+NMjhhQ8Cdul3YmErBnPcqVU
	 ER4tYZH3GwMJnc0yR2eNBJLGA5IrMX088eum0g8xMFOF9GYCC4bd/p35o2s8iHh+kC
	 AHvVHcLq4myI+owG5tu+NhasC974RhesQNVRpXsRZ4XMMn2OvnINYq+/kWuYCzsO3D
	 rK2pyIF18LK6hkAoRb/oICixx5HZxwQFgQFsB7K6hspXJyb01djhwnTbEjl3LZNqgj
	 QS4jzILm3IIOrwhSxcEA/vztuGZNaIGCzV5yQMWC/VOT5ss985u6CM62jOVvRtBzvP
	 UNolLBromK6kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92914D4417E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203295359.5703.8511065727452244837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f530d339c8049621c62f5462fdce6ac07412344df7ac6c6c72c8614cbed53ee
Date: Tue, 19 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732032953
