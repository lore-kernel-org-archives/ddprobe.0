Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F8417C6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706260697; cv=none; b=QxWkST63kGzUkadIt8/0gwEe0FhpVmRmGaT71slbloGvItHAOebNtXhCG2J8x174Yb5dERSt+rVbm6MN/kLtNz80wQSr1G8zSKVm2S/pc+FF33vhIl0bIlBbSNcDYxPRl9ucJWZsHpElC4A2LXu9tCI5tkB0uG/HEG7DOttxXus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706260697; c=relaxed/simple;
	bh=jNaOkHzTQU5vGLxQo0sCnfYVdg5WZN7c/ybDCtgfANM=;
	h=To:Subject:From:Message-Id:Date; b=C8pJi1sH9JZxoTFoVOxEgW9u6LfVuE8RPldPgzPo+6vhe4uzFR024ZF7Y2DipeiGqjpgtDchJ7oeO+W3d3IahB4Q7tqgzqK8aB5AS4h4nom4JBdA7kg6J9B7AAzvqUM8FmvTETiPUcCuck8WDS6h63XUWOU+tLvNSQhnS+fqq/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC8tlug1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC8tlug1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FD0C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706260696;
	bh=jNaOkHzTQU5vGLxQo0sCnfYVdg5WZN7c/ybDCtgfANM=;
	h=To:Subject:From:Date:From;
	b=RC8tlug1BhJW0TkpxXOS0JyNW6UbclZ7cGyzG0xk/bY/9Yi04SYidbSyzied1yRmR
	 ooCM29CQbkg9ZxijDvYlfKJybgcSmECYzXaW0mad8ZF9r/22LruEIp42wLajbJYBVi
	 oOmKSOdP/wh9azlzEo1pjRO3DvGAy6Dz6CAQVEsi2/6XTToSUAn3eeV0s6hnzfjNxH
	 vmncFzmQdLcp3p1WRNFg9kYiK8lnuqeAklBiPTScMg8ZmUMFx3Fmb4j0edWtUKZTw/
	 9BihQYyP7+jDXpKa/uaImBpzbOhsJcM8/flvhVaWdrw7Xkts/F9P2i3bejDWbj9Cjc
	 reS4rVbLJghTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C390C47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170626069637.12800.13620483860910998599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfb0118efac41d00dc79a2ad7ad008cb7d4d96d6626691b3b471cffafbb827a
Date: Fri, 26 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706260696
