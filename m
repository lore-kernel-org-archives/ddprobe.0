Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855A12ECD15
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760285994; cv=none; b=bsiSVkXogeQG3obehfv7NGP8UTy8w0J/sKeABTfxr67qzpaJxhjooXqaVWXNvGNYiuVOsRZIAY6+CTELLeUZ27kZ3iGVu8LatgeIj2xiyOIkVDhOa39GVaL5/5DnizOFA6c4oPMwMYDaJyB9d7/QFao+7DaPZhxrl1w/LvDUwjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760285994; c=relaxed/simple;
	bh=beGiJbtegGkwLwFpa81FvDCfsCtacw2GHVBI2YJx62M=;
	h=To:Subject:From:Message-Id:Date; b=dzWVXBz6eWwaNzHOzifSk3jto0oxC3qhiES35RvdYgfiGXX16/xL+G1b9yRj+h4p66uzE4J1veYgbAXf60dXSAQWrArZzSOl3C2iuNXJFqC63brUcM2XbwAobWspK/gFaSlZYeqyXKZRU5fUcUmd91th3+O3f4zrQqVNcGWL54s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EReFPUVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EReFPUVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760285993;
	bh=beGiJbtegGkwLwFpa81FvDCfsCtacw2GHVBI2YJx62M=;
	h=To:Subject:From:Date:From;
	b=EReFPUVy3c1k29fQGTYwMik1b+LH/gLMBxZ7hpG6X/GPGFLuWEahEnsEvZerBDpji
	 A+pcPRrpJ9emMxHdZdSkc0FMm0hihpjYpFskNotf1wJq3bOBwaN180ejCn07CgOoWZ
	 lz0GBZqTPExxfTOEY2dgcB7g/qJVxeKrYDnIvxVqKX0gzXTyRbIZUCDvQ2plCiyIVR
	 2wXsrfoQTgjiUqYsWoB/rwqZEuurK80BNUjJR6V9I63tOlXkXMptfj63ORdzxAAaUy
	 K27+Kuw8A9oUYT1mG5T5T4aUMW/SSq1WAAbYThXYjfqS02qwQ06NqCWrTFtMJG5nBO
	 3t/5mnb1MWRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FACCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028599358.30179.10366790461942954496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3512a6089221a50bfce217b07bbb8f5d347fabf2f86b3b14b1549afe749914a1
Date: Sun, 12 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760285993
