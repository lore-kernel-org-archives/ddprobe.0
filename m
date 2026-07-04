Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465962F7EEF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783162114; cv=none; b=kRKEj9LbxETPRG6A+m/ksdvXYy8gzx315e62m4rn5LhvnBGvc69XbHqWiSM+0ZOUN0y45uGAtyS0AW6om7kXDVkOFysZFOcqMRH4PXiXl9aIUlft4FD3BzIbQCIuJb0Bca5GKuvMEonYXe+MImvPFSy3HyRCGfdtEwStiqp6EcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783162114; c=relaxed/simple;
	bh=ug7en8kwc6NOJloxrLlF5VCfz1Czrf5E0esVay2o2UM=;
	h=To:Subject:From:Message-Id:Date; b=slYSKlMiFLc1F1f9SRfGx0oXmw/k0KICWbVJwiIb0a1JqAlFJlAOjcyIblI+DP2oNb5Ovd+cggWHHPdEzmo4ytdC6kW24ZrQQdrZC4dgWcItdmic+CHUyM80qviPzb6kKgsBDsA26PZQxLK+But5wo0HoPDh8aidZPs3rc0lPx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFNFUra3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFNFUra3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2D9C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783162113;
	bh=ug7en8kwc6NOJloxrLlF5VCfz1Czrf5E0esVay2o2UM=;
	h=To:Subject:From:Date:From;
	b=DFNFUra3xWYs12+HsAjNOqtvzJHvNsVxFMC6uyTGqg35731wPkE/XXVIxkhyridcx
	 U5MH8W1Zhqj/iRbGe751/mk5hL4IGK0ppq3Py9+68/CVDO0aNSUk7HuASxnmFwlhGa
	 QICBPF3g4M/rtoU3n8KvNLI60iTDkYHfsZOyjNCkHnp0qaXzrJ+b8bZRV7UjYr8wOL
	 Q2px0sqMA8D3dYpJ56SSDRJIh7eaQawAo2BolVQSu6k5xiUnnczoS8LjD1HbvrVgEF
	 Mh4cpb3h8sesnbN1lmtSyboO0oDIKaDCXTaHZfPEsofxiyjm9b9yB+9SvSvsk0W8HY
	 xWONJIp7TPAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE549C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316211368.13276.15977320652579917402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10c372b7fd02750f5a0e44169c25b72af43c4c6b4304df7f2896133c691ed69
Date: Sat, 04 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783162113
