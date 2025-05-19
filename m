Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF21FDA9E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747697994; cv=none; b=SWtQ6foB6a5Q/sw2QztOpf2Xc+ywZoUgTonmWD0UNd3K9Q7Er7Fav+Rj7eyW0M8PmNP2+dAoi5RbnPXP5kk4KlQL8ppyljhaOwLcaGQzFrNDnG/WF9VoTnCRN3nYJPm8Q4tSruYZ9MFtqjdHh8NemVrfkVHIWzurpj3wN48tFNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747697994; c=relaxed/simple;
	bh=WRJAu6riv2Rdc2cM42PdEeDorgUPFNbVFRVojpDet5I=;
	h=To:Subject:From:Message-Id:Date; b=sGYsqSzo8JxBflnSSvEY9bpcDPkgVR6J5JegoO1f59Psd4FfZEeuSvdRP+D1XCIU4X9rAzTT2bIEStJZoOsOv7+z4P+Ii36pNwZZB8Hb6G6HKcx53szPxlzjrhCn15lVsCNrHvAucomuN5KI3j1s+eFjThtIpOK0zLNhlEMiQko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVOs2BqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVOs2BqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747697993;
	bh=WRJAu6riv2Rdc2cM42PdEeDorgUPFNbVFRVojpDet5I=;
	h=To:Subject:From:Date:From;
	b=lVOs2BqR8yHnDcOeF4MxzOc0HNIwWc4TNWWWWP4Eykmu6OJUDBsA+fgJ0CGoxHxOl
	 At+wXg1ZQ8hxbpmm08kK/TZwId5QQdtrz5uccJXfwwWGUD2mWdfonVdny2Wjj2xYCI
	 HyavZQGHCxxcTX4uQQY5xs7fG9xF7E7lws7bUCRuNFWTDvKBu+VvECE0Q9Pe7pOBnv
	 VI4+7aCogbONsVV9SoQgPLNgy06qMEBX6FiKlqcKTqVd2IdV3hZRXDYeVZJBj3G0st
	 OCCt5DzRrpkw8WagLjRzJ6FjFxnmFRp0uQZn38O8ZdOW5X3DVMTsclXfjez8ocGyd5
	 8YUNVk0zn0j3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1BC54754
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769799357.1421.4760269073604522561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e53afb83c5156814d4ab619fd7d6d5c0cf4bd235cb42b01032ff99155c91de
Date: Mon, 19 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747697993
