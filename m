Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65244314B82
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756480795; cv=none; b=K/tXrNKGTIlLBX5grPLmvU1SB0GgtSLb9uYwu5kazSSf0F7RLArm0/zWKhxQkHb3ROBSiukic6IbhQ1h+DRLst5JD0biXNYq608sqBkCL9Zq9ka++u186wp8BXdlma9vVHijChneYGCvWm1ajn8ymf1citVwpTqcdKh/VQAlAvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756480795; c=relaxed/simple;
	bh=11mZ8EPso21zhYCVU6EMODP7N0pf6QTerTeoi6c6QDI=;
	h=To:Subject:From:Message-Id:Date; b=W2vnptA2D5JgJUe4HXiAlpSvuGsu8CeceJrEpJ8jeK7BD2QK3O788BRCBxu835s9Krlh9rEBOmfeMc1cPcR4GLTUnmOBT0FmikZ6YPONSO9+xte+/VTuIf5oMSmLMYBOiY3vIoJvw3EXlMyCrurZPXT1XPQnBj4/f414G9AfabE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfZeuBlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfZeuBlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DBC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756480793;
	bh=11mZ8EPso21zhYCVU6EMODP7N0pf6QTerTeoi6c6QDI=;
	h=To:Subject:From:Date:From;
	b=QfZeuBluaNdmYaplvujK3FDk3XgYU7Inmkzi1U03h3we/C0jcAtkfGnOg4mB3Dhr+
	 z0DPtzpA9d+RYa8ze14BWXVUkKdTpEcGGEBF7qrPZ2Ll9oI92xZVwqt9Jdr6wN7wPZ
	 3FUANbwJrQ6LoVRT4IUebOP/Murqx1gbkPjgHxrDv+an2NvGXYr+IyD4iSw3x1YVSK
	 MTgSJvHK24mpM7gKZRHek6mTuFJhquqHJvcJetouYaRwvQO1gQs/hsZ7xkfpbJYXNV
	 Lxzo6P5pofgbfj8zgZg0Mm4XC5XZBCQU8qSs8UNDAEkg21czImfXZIL0xxBPUV1P4O
	 2uRmOD2TzMcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F671CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648079357.24206.9559485326651305482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bc759e54c61a41e95dfd188c378812351a93a6c6f1b2843980e4841c7a4b67
Date: Fri, 29 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756480793
