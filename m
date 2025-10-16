Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4624334390
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760619593; cv=none; b=Fpxx1t6udLIRBuVRpbSutbO+ewM8TC1zO7iPluNb9h30JmUz5SHy7F6X6d3qINfG6dKYzdcOBZQCSWmnjrHeirKcFT35h4oCSzeYwqNfDk3DapkNeOX/mxDsgfHTd+aKYmqhPai33QAeckLQE43LZiX/uAUAZFdFUp+TPIBznEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760619593; c=relaxed/simple;
	bh=H+Y9ZehQKpI808BhQ3giS9enFLn5VTT6FkAxlVeLZ3k=;
	h=To:Subject:From:Message-Id:Date; b=pMMpmCEe5E21xESnDi8PnibMsrDyZVk0Imd+wtVFzCs3E8+MwwQ+Vis7+PVD97nnAK28aqy4WxqXmBTprE7wAw4PGPGCRfBE6pbzJN4LgGxv+N/46+qxLmnjcDHghva21mbC9YFZNE89Sm9XmsYTonpW4e9bcb7omk+wPIq32zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuVj6GuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuVj6GuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 986AAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760619593;
	bh=H+Y9ZehQKpI808BhQ3giS9enFLn5VTT6FkAxlVeLZ3k=;
	h=To:Subject:From:Date:From;
	b=DuVj6GuSGdDbHa0HNn3EYCalUfLKxVKcUrllvMlMaEGycF0mIUmFlvo+P8BbEc7Ji
	 NtLxrDAZQWoevmh6yV7gG65OUWDkdT8+UvQOw4DnGaXjal5kVMqftvExweOQ4IwNXL
	 iaDf68WI8d7u0rKAPL6wvl2VxJxCUjTcr3pnubR3QoQVMIVuRuXVfbSUqnslvGO3OT
	 mlOb/ugXsqWO7rekANJXsgw1cxow47eSD5mjTCqIrcQgpJMbaLFZ70M/Efx48Tiiq2
	 3rfeRyIQ90dg30gxvUwMLmquK8ZwVmKhjsCmgjlh6N9zAclGFlfnaLI6gsBOnIZLs0
	 YnYxS5MbYxsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145ECCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061959358.14534.18016658298171665757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9488885ba191485589a2dd03d45ee485fb5937ddc4c8d647fb85936622d6592b
Date: Thu, 16 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760619593
