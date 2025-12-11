Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39B30F7F7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765456374; cv=none; b=f5Pyzu0bBL0hubk0yk0YhMlyR8esiULQJUspyqesguTyWzpGYZSK4J1DS1mwodk8nFyLYjo2l4OZjUrIGy9VP9ETSkgQdFHnYve3Z2CWHTbdC8WzpIifCIwqQ+C70SR6+SE/eOm/K8fTdZ+NCVJ/tvp04SOs3ZEPQd7YZGq57FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765456374; c=relaxed/simple;
	bh=MNf8Wu5+mxIw+Usdhrwg/kThIu2dDWtks2YQs4dt0yA=;
	h=To:Subject:From:Message-Id:Date; b=TwZSMDKetYpPTp5h0NGP8SOzKygPM2f+UnYH63Z25RH6YQxi99N3Arq/5eqjc8GrTkmdkqvtBbxkaK681MAua0sCaNR/8jhBIUEkzn9jHgr04pg078Ga3w7GviTO8OLnSYFx4JewTDuyvjfMiSc44xYmZPIgLsncuxpaABSHrJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf/HVf03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf/HVf03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBEBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765456373;
	bh=MNf8Wu5+mxIw+Usdhrwg/kThIu2dDWtks2YQs4dt0yA=;
	h=To:Subject:From:Date:From;
	b=Kf/HVf03twQjOdA/NwhUOfMxakb6GOkvXmUUiaPOyqg+JuoN3lDEVwzQ16ZERh8tp
	 hmb6r64G2OOVIzk7KuNsZjcnb+knVw5IV9vIaPAHzbOl/7ASQ9JwXMj8IKGcFXV3Bz
	 OHhF66gkDw/ubjRMRx2ekdGRgd8gsQvmLB4V5wqa6KeyMIc3EnTtLFv4ICMO+4wdIu
	 xUQK+RnsoxceThUUb1x+OIdyuqxApW3bemn+tg7YiFh4Pwi2jHqyzDLCAv6VMfPH+a
	 I6cDyR0PdtGg3F6acU9Qm96KIDcPQYxl20IXrBVqmjNMvqjca1E4frpPnG7+KPjQqB
	 WEC0hPld/fpSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DF9D41C2E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545637358.6668.14186660149020843759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca1a2f66e3908c55b2025da9e1d3fd065f171bdd46b71169b607f0499db2371
Date: Thu, 11 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765456373
