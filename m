Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2059F13A24F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718755163; cv=none; b=RZw15FkPceHw9Ikr1Ffi0CZXqWyJGtSKVpyJE0RnYplE5FVLqnFrA7mJ4xeAKVNA3vVBO0BIZPm34+Gzw1/3QKooaGhXUmco1JGrjFt5zRaQktqSN2DmgVocRCRQ0grkfUzERQ5oQ2KN8Ipv6bOwZ2p/FUPjeCJIfTK9ONyujOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718755163; c=relaxed/simple;
	bh=NO/kuD2OTG1ryVctIrz7aXptMnWNZMZpmB66zxg+aOc=;
	h=To:Subject:From:Message-Id:Date; b=YNNiUpqp4vf8BwBZ8zcnICO0rzYQTaSuBJC/lzi+jl5QtP1TI9NV4Y3G4VDAs6ipXuULrF6YPq8Lor+0iKYm/Totsr68uTWjpM+UYmyTVTedEIIkFzHMgeK1ESUaN6O4irXy5doL1k/1P16H79mCJRWZPGKjDSqE93IPIy5CXDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwALLsBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwALLsBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F4FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718755162;
	bh=NO/kuD2OTG1ryVctIrz7aXptMnWNZMZpmB66zxg+aOc=;
	h=To:Subject:From:Date:From;
	b=gwALLsBxx6VEvW54jghWdl461ToWYnaX0UFGTcr8cvrT9yfg4hxQyIjyJ6EZxK0p4
	 4pxvbPMXO8BPfOgHNe2Mx1PDbaBKgmg3NzaUwcCWFyNLopCNgbodEUhGXB2B8dkX/E
	 4MUva+1GODkvfiPATnUix9CnXyYj6xhoSwHBmT3J5sVhrxJLQgUi3zoC9rfjFvVO0D
	 HhmSP2W7+1gJ5HNGVC3qh9SWlDjUwL2lJevMBbxa2LEbrMsxSPz/tJYXJrE+j555A1
	 6lzhGDJP2/xT9sq1bNWhBpDa1GKldlinOvHTJmwLakmyR5OgDJHI3RB/e255LibBHT
	 kCDzUbbbjzPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2A6C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875516277.17675.10977556557899031050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b2a75bfd4f3c70975ca7c973f7e92af18eed9c5f40d226a11346b48a90f8d3
Date: Tue, 18 Jun 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718755162
