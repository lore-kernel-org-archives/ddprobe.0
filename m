Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E6A274B48
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764222774; cv=none; b=Ga7pmyFuG1prk0ATA81BCZEVK5BgqG9s1GCeBQIxK70QKZupIczyHDpEKpLrJF8l4QEeNVJk3gX9B6vSZxqJ3uxAvYaq9ubAkmwTRujnQTRvK8EaWhdZzX3G8DF8lI9Bo0t4TufLD+sKmD5QqioR9GZRD+11HD8VtKCfUTqpP4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764222774; c=relaxed/simple;
	bh=0ZUb+R9nguYOsxQP3CBKaRmJOLU3Qpd9sGAZR09xpX8=;
	h=To:Subject:From:Message-Id:Date; b=WzY/VZdiaiA2DVFKcDvFjc043j+T0W6OAT67e1LjgyAt7YPBbHKsjosJ0w0mYOVvW9EuHZcnfG/hqMxYhWGfjAynI0u+5hp7u7rWK39KCTGqNePyrLU3NmvU68D6smVXws1cSoEyhOWIQaQs2pYfKDiLK/4/vEy4obTnwANi8HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pocx1kbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pocx1kbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3608C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764222773;
	bh=0ZUb+R9nguYOsxQP3CBKaRmJOLU3Qpd9sGAZR09xpX8=;
	h=To:Subject:From:Date:From;
	b=pocx1kbF+SNXHdTmy/Cg71YldpIhsfE3mk1Tu2KJqdxO/3Kn/svJC9zL7biBCMuSU
	 4upjhEAAr3KMaSNOWaFry2YKS+9MTJzdhp5YEJWd+RU/nk2ybm80qEzSLcEXITH6GD
	 WYVL7Eww5PvDHc9FRvFkCtcAqqeVu83qyoRLthxNVb0HgKW4xOYXqjfPLvrQNGTQR9
	 eGf9EDpcfCPecQ2vXLHpffKSeg1tN5FDEoG2A6bMVm8+Q48hWFp+2hGfs9nzWeFFOr
	 RC2hzvoBd1MHxwXovj8pcI1YzmoMMFRFk9DXoByEm5rl0BRrLlYX4Rxv+H1XEoonXP
	 zSX6SernaUCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC6CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422277358.2830.9977527084912337608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d25f39d4fcc24d3427a7d11a067b32ae61e062521aac562816aba3936e1a72
Date: Thu, 27 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764222773
