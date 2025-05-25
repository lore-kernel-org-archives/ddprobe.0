Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348A25661
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748171394; cv=none; b=hHE7ePG2vPjehhnY/VWaAt0Onl28FyV2BQ6PPYHP2Sd7dcRDbGgSgU0Kai1ZRqZ9mTGluFvwsaYSHAa/jpnbmYJ1pEwSgeICwrPEKG4VrSX2TaYeNHTVcfdKgRu6W2SZQBuNJh6Ov4tPZLgjCNWHpuPX4Cpm/0No6ZIaeg43TX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748171394; c=relaxed/simple;
	bh=ncmVElO75hE4heuKLXldCiyTweZsisB0m6LAQ/L2jEg=;
	h=To:Subject:From:Message-Id:Date; b=qh+lRGPXSSWjmi5VabKHuWGYaFqc5pLai+qQQXiperoxGEsBjLwd5Ee866k0x+UGJvQQfYwn9eZwAkk4hj/nFb3Vx/Vm+oVMN8BfLFddxYa8L122eeaMv4CmqYthBtiOAwjg0rA2jR6rLI8fe34hLobwVMWRqg0mQbqtTWOCZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSBxmzhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSBxmzhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1607C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748171393;
	bh=ncmVElO75hE4heuKLXldCiyTweZsisB0m6LAQ/L2jEg=;
	h=To:Subject:From:Date:From;
	b=PSBxmzhlHJSIGffQLEe+W8gctHJqvifaZbD5oJljqIU94xfU+hOp5Bw/P2N04tI7Z
	 5FEiDHxW4/lWQyJeT19j99bNIqZtPxQkIdO8qvAet/P62EnubOWthSbQ6IUbOR13dk
	 cQ+b8PdGkD38V4/04xWfHIpIs0LV2JE1/uke6vL7ojCzC193zPBhy1FrAuwlMqovcl
	 PqdWc6pFGL0o5biz8omN8mcuNkzvvG7UXaes9RHVIKnORloq3zeM/427n/iAxNY+Bt
	 /khkStq9jXZYPSOEN4f0U02rxTjbDoPI5wCgJDn61xDOTqN5aS0a5LAE4bQ0B7/urR
	 RhVn5tTdDxgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE0C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817139357.24937.10252962508955332595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd1d6007413147e30f6d701e5abd1d45899897aa6e1c65cf0dca0961a705dc5
Date: Sun, 25 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748171393
