Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E5A14A095
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734417354; cv=none; b=mLQnTnwnnaPvBFpwGua6wQhzVos+v0DFCmMLutCtp+qzhbVNigaqQXFRfITqXQLlzwjlTwZyqExLeaNdFkbqcfaRgRVzZgTtWRD50B+ag5iHaDC4s0BoS3UYB9epMmBV6tk3jfF1NKD72/gGXnO1lsQbkTg0yyIACxGsSXuzb0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734417354; c=relaxed/simple;
	bh=JKVsBw5LwR1Gslpv8s944N5Ae7CtJmYrsZI035DInVM=;
	h=To:Subject:From:Message-Id:Date; b=DSpISbROfLb25QdzfZ7RqjLLn0u7BpIJZfEvcETQ0hRpv553cdQmjcYcNFCNN39qQlpdCqn+NuxCfQDoaYbr7XX6wWX6sAk5Svao3XmlpG0bcBW5NSiqcIFBUuKzmcJftHJiBD8hGbeWS5XK4mLaebY4581lxWmuDwUaHNAvhHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXPqa52F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXPqa52F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E03C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734417353;
	bh=JKVsBw5LwR1Gslpv8s944N5Ae7CtJmYrsZI035DInVM=;
	h=To:Subject:From:Date:From;
	b=LXPqa52FdWhvLxQ0+qYwSUWSUeb2Q0Iii6xPmDUPbqhGGKW5BqHCAHqTiWN5Jax19
	 TDo5v9OCg1KiVDzK/TuEKiRz29eFnb85u3jInx7nusb8+WZMZ+X9Feq6Eav3iOg6HS
	 uooBnI4+VTzn6yThLRLdgvEWQIhUteqNagoC/nQxXHzq4Pab10I6qZSAsmHOrShgVK
	 IoRG7bexDCQV8MpfeTL5zLQZLYtnsk3xQWPGYral+/3QTyjk36hT2bxY7tukN7HKQ6
	 iC7rwC2KVe+C3qZiBu4eVFU0c+aexiLyGw5CB7/3ZV6c35MpxkOA74/jpu2rZHbTO3
	 VS96APixFTrLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317DE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441735359.26029.5607977555431682196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f833b265ad280cf125fb39953d5dc742a543dbbf96e6e9f84d568fea203037c
Date: Tue, 17 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734417353
