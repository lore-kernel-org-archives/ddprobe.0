Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437671BF309
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722602754; cv=none; b=fcWCbaV9B9GyDmRKQkpb6TWWlwZV7ZWGgYxleI3wGM2d0q3RKTMMRY7KvzSMOruP15FzcIgHkCgrsxlCtmrwNYJhyHND7ErBPJO1QfMvg6qZ9fVJxhPFi1yJ095FqKrtmZFTf4bWUHzORIvboBiKF6so8c5bmzjECK2BCRvJmZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722602754; c=relaxed/simple;
	bh=zLWcZW2EoXHlZzSpVmhgIUA03t4kZeLZgoME34dyMBo=;
	h=To:Subject:From:Message-Id:Date; b=csJy5FiiollzYN8qNxLEgoatQ1WJSBcnZZw9DQXBj+igXvQ3EtPjHFxXaqaSBww4xlbsdJoY/oo4HbWEq2uw9E9i9tk3LDZ+GCKUYigKtU7h6dfvVWtuf7hGFUq5exbvHo777kvlDscpwDNwvQ/IyrLj315g/AAWaPchWRf8kck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5cdMYXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5cdMYXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AEBC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722602753;
	bh=zLWcZW2EoXHlZzSpVmhgIUA03t4kZeLZgoME34dyMBo=;
	h=To:Subject:From:Date:From;
	b=r5cdMYXA5H17hCJ6q5fU2JckYcNH80Erf99Sa+RRBih2zawgZkIOE1rs5Jag7J7cW
	 yDlAbjIRHPejtC5CWwYCOkMYsfv9ZqGOMDH9hQjk8jFNA6sezSV3tJeUReGig2eAxs
	 dj2my9HsaFr7T3Xb13V33YWY5wIaJCEPvk4GO4DPEdWZWijpW5n8LuP/BDBXVsUSte
	 IDBCLHwBP0u92gKfRA/WUKk3BjykqhheXSvlf9EbKN7qo2sJDwPm4nx7cl75j8j6KV
	 rUbyBtj2xtc5doAOXQ0mIKe0YOlXFMSqEL1zWffkPZX549eRSqLze5RGNYYGfu5z4M
	 +27DtnZe78lvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDADC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260275364.27766.13051794895163851981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44e489a6fdbb11669ef53ab791544bca1158afbec4d77c73c3c3b18944eac9d
Date: Fri, 02 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722602753
