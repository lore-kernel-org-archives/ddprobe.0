Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0513DE45F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779445354; cv=none; b=qJm940bikaDXwyeV8f8014XB290nx3yWUuM+eVHf5DwBwG4EzwoROfcU5Z+CwCAkjJltdnAB3LyQv9+F7uDMXolWdVw1IHJ56rgoOFBK9dmMkcm32YGN1tP/p6HG6dB9/8L5a9s5GIkRsPQkjL6l3v7U2L6kbm3P4dAG411H8ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779445354; c=relaxed/simple;
	bh=z8cnmvqkTqxRdDV9rve+Jn8dXtUhjSbhC/mO6MSgjvs=;
	h=To:Subject:From:Message-Id:Date; b=u+6GBIHfC8S/BPRms6LS19Eyyl3dtytxhnEnvFkoKuBBKJRPVB7eLhMCpCfV+ExDtwRkupFCqWNpZRnPja6aUMLuRkiJJOoEYHz/K9U+tCrR7yakyWQXkmDR09TV4fufkHRrCqOSZp2W5HU9EGNxwJVq5gdZYaJNmoSLjpYO33k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdpWx2yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdpWx2yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28EEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779445353;
	bh=z8cnmvqkTqxRdDV9rve+Jn8dXtUhjSbhC/mO6MSgjvs=;
	h=To:Subject:From:Date:From;
	b=qdpWx2yj/KE1Y9cfUYO9g7XKU1qNkGLjsPx9Wk3RTh8D0EmzAthu9gyNBnKw0EcQf
	 aWyUKd/gWjFxn64EerIqSERqcxZgXl705jinpT7UCD156BRVV0DgojGhe3EopHCClC
	 nWp/T2TbwTuz5akLpCJHyLegNZWQRGnYquBSUcbmUdEtUg3BwpqG/pOoAdf3/J11F3
	 3SgVY1m7CnjvhRmVsLG0ZtJzBo3zrf3L/R0ei7SXJz1hxAOeRDZ0ZyiKgv73lZbV5I
	 DuQdEHVHnafT7hLu2aRmVVJFQltizi5AX7enpWRYiXtExF/M7ElER6Iv4udW0QvC00
	 zImMgAni9URwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB244CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944535369.26261.9649150970264632567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62abd6d9030ad73ae0d69e18e5715d5a75540d1df2cd5c1535ede6131ce132f9
Date: Fri, 22 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779445353
