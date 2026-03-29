Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2C13C07A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788294; cv=none; b=SJRvKp1m045NQ+c7Rxog2i664f8mJ9r8S/uM8muZULhqir6vGl1f16gpVKEv/WWvtXUgohIR1kHf6Qctkbn2nIJVgld9PWvTWoHrxOWUzkNWClDcyjYq/z+7cyBcmaEJ09+B3f7JJmZmt2Jdg0wCqcpSPgBUfnjpMWl9A2cDGy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788294; c=relaxed/simple;
	bh=waachjUI0HVMXRRawT31vElPUMbWFAoO9YsJNBvPKIo=;
	h=To:Subject:From:Message-Id:Date; b=GSd5HnRgqAKPW6j296XblFg7GkL1Gr+5+Ns+9HPkvFcQcsMU7Z12CInCauclRjJBOyUrdb9yg5Pqp6rWj1kHF+XCd9MaboXZRFrJq6Nk++jPZCh2o59FwtFj5SIZyE94bJ1p6IfWRALaMw4ubjufsNDIbaURL9wgBHY1uP9lZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGI8yXNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGI8yXNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1139C19423
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774788293;
	bh=waachjUI0HVMXRRawT31vElPUMbWFAoO9YsJNBvPKIo=;
	h=To:Subject:From:Date:From;
	b=JGI8yXNaVxOROFXYmPABM+EyD+j4tV9G2RfGXXD6QMn81j0WA8z2QQxKY+UE8JyU8
	 Feb6cs9YyuCUJeQGD6BCU9uoPhkf3IFhew/u/a7ce6BWsIF5U7TJoXORRjK4C87wtH
	 ntqBk8IkibGMuFoezMaTt2xxjQ1v+rVd3wNw+WNBTqiS2uhKjpWRiSGxYODu/aQGT+
	 /URMChhyOc4oX6ezOsdizs5EGB6GEop44Ihg0bIflVgT8SKSMyJPcs5n7i090jEMMh
	 gDqxxCXhjVG4W1M9XZnjaoddG1dg6CP8uqgGVglff2ELUlagoksbf0gWMCgSSGHLe3
	 7OEc9CRLQSG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA1F3D600
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478829359.21952.2339243340205207072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29f3b497d08cbd63e227492d0ce337feebbd759b13560b17bf459b678e8e5a7
Date: Sun, 29 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774788293
