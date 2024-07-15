Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A86018787F
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721046263; cv=none; b=l11+mLD5R2NXKohkHWS03kLvtfhCU3UrSrKRxmfw5uukdXQaUwFfQe8rODJ5U7z8qdu2QBWCE97kiPZxBVjdeyzZ+TVBviWdeVijKTKzNCpn7dIBd6IN2Jy6+ZZgM4rI3XsjlP+yvOjrakBDPpum+5BLQxLEPwe+Z+kyDtg9qf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721046263; c=relaxed/simple;
	bh=VOkt/9YFmq5XHjvRh+gCbRDiB5zR1hPTARmMkUpNr4c=;
	h=To:Subject:From:Message-Id:Date; b=a1Fh4NHuFci6rSedWfFvuTMv4T9duv+7q7xzDQm1hFBjk3+xcJqIaafL80LsdkJi5mTE/mB9nCfrX/X82+sLCTrg5F0wl40gtsPVtow2ZdVGDWhHSkKDLdeM+teI8TdOOLoSpg4r2Aq4xiTaH3Zx/nCaSjCcCNn4uO+zGnx259o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RED2/M+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RED2/M+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DCCC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721046262;
	bh=VOkt/9YFmq5XHjvRh+gCbRDiB5zR1hPTARmMkUpNr4c=;
	h=To:Subject:From:Date:From;
	b=RED2/M+iCpYV1G5Ix088OmRWleh7P5jLhoA+XsyfIuci5wqLv0aRSKMSDjkh69/zJ
	 TwbDz/ayn76zaiVAR30jZ85kv1wiN3vz/0pvM2zVS3PVC6Roo9a8fW+Tzqi++EmW95
	 GsJ+tvErkhbd6r44VAn/21zE5pO7vM27HxousJBTABqPVVUFlpatOutKz/pNOdGx5Q
	 9NqkqAOpmqYHvYbpc91PbhPVZ1ef9UhaMx5M/XDFoZ/Nydh2UAOTwFAFP9c34oVbNY
	 LwG2SwClg8IOCkTqeZVHJxY9PJOqlofKgDWdMV5sXAGEU9Rjmr3ec9Fz4GioRc4zuh
	 dEVKMoDDoLAoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3D5C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104626282.20244.963379537357438141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82afb890d06209242f9ed3f30757602178df2f7df8860916447db71821429748
Date: Mon, 15 Jul 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721046262
