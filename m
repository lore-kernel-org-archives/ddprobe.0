Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258EE2580F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783867114; cv=none; b=p0dr8D4axxcH/gUdBzcl6qNPP9gWiF60OOUomp+lrBFvc5K7qfEunwjtbfaQ9eBbX5pDxIV3AAZXETn4BPyQRB1CXtROi4SKiR701Jis42dIG7uNv4/4mYao+DFCiJHIFtPHZoT2/emWQoRPOpTGHiYgKU/kgLuPGl/iwECpy4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783867114; c=relaxed/simple;
	bh=rBd5/SnmeM9uHChwqx6pcr5bkGUAsW7A3Oet/MUi2Ho=;
	h=To:Subject:From:Message-Id:Date; b=XyMDN6wcJtRcm/Gn3JNus2qqgVNRlcqA0wV2VBXKw5XtY4CxBkoIxJxs1RGkS1eFo++0P1+WeN6rtav7yw/BNmOjSm1J77yrTY7pa8WQ7xDcMzQXUPqpmx5o0QDd/EWxP9PQaMAO5vrlLD2QNQeC+ldgWClVH7hiWs7uwCVXI34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NK9LkgMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NK9LkgMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2AFC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783867113;
	bh=rBd5/SnmeM9uHChwqx6pcr5bkGUAsW7A3Oet/MUi2Ho=;
	h=To:Subject:From:Date:From;
	b=NK9LkgMxIF/m4+YgqdISFWXpAobHbczSZHiXSu8uVX/ojp4qo80QPAK+VkMbpGio8
	 h3/GUIs54labNr3Y3aWv+A2PrCbYo7h1shXmiAIPRJGHK2gbYEO6zeut0NfyMWHkY5
	 uiBqcPBwtuqY7PRF56o2kbI2BQ3tSCECEIpfY64oFl2OeSqWVGqkCQnnpx1N0VhsIs
	 lL6yuQP1B/aJP8R01WawzGDtMcVLfchSay6jjeIur62TYKbXodm0Hsl48K6Ga9YPh3
	 CiIrQK+reeHnDkFgvomVwI2Gis+gwwQKxT/3yWJyEvUKuducjSqDutSsFvb4hcAJ6O
	 8QfMbNJofHVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D59C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386711368.20636.16438787480482016192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87cbc2b57be5cee6d6e13395da232f3263a64b618c601ae1ba17a107539b20b
Date: Sun, 12 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783867113
