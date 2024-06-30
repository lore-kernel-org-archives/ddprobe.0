Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B3978281
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719782663; cv=none; b=HyD9frg6qKBfg8Mphi7XUNTiql4LSh5zNovk4EsYxWuJ2XWHw+lYBbzgZ+V/W0s4k5/Q2Q9vqDfHbRHhtTn95NbZ73BAX/8dllXLkJ4hNkKGtNxIHYjGJypg3hLR6rs/47uds22VQdbMI7xiO46GUVunhQfpG3FLSK+kTi4DAXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719782663; c=relaxed/simple;
	bh=kKLfJqGXJK3UPkFiw071gUuH7nVuO6Hh8UgiVxE1DLM=;
	h=To:Subject:From:Message-Id:Date; b=jL7DFdQtgaTiLykGoD5eLCWyNnyX7rhMLGuo9ieHI1WY9Bc5WeINEFNOvCp5DdLOp9DzZeEOdH5DRoCoP3s1IO0pqirOqlSzOLUop1GAKd+EG6vfJZjKZL1fWt/7b6inyDbz/jroWbs21Etu5UsEOPwkOEDEl5dl7JjS/s/rI4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+FzIQ9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+FzIQ9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719782662;
	bh=kKLfJqGXJK3UPkFiw071gUuH7nVuO6Hh8UgiVxE1DLM=;
	h=To:Subject:From:Date:From;
	b=c+FzIQ9cgxaE8RDa7sMltJNYUq6M1658d21R+/VzpVC0JEl/u9eH4En02iq6Kr3ws
	 Uifg0WfRq7ebOV9suB9xOGSM4fw4m5BQcxJFQxrtvu2qNTz9fiTn9GDVSX58+zIMQS
	 uOX+SP3wXmY0w6rk5hfbq+c1siXEhVILCCtaBEZtL/pJBevL6H4lGPMQAC9CN4u/jW
	 3eGAoC7ZKGmN4PSMlxiV4sPggWp4TYDeWX43/HeEc2YciJ6IzCfhOqTz6TA3qW1XRC
	 QRGNAkMhaznobtiA+hcIQVkXhEgW6bTrO8JzNMluz78rdSNREVVOFDVprQO1QEKHxb
	 ncGVg39zh7Kow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DF9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978266278.32461.10146249200716988618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768142f9322f1411bfb6d6606a8dfe692f4d3d8262d1f9dd33b3e9d725d128e6
Date: Sun, 30 Jun 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719782662
