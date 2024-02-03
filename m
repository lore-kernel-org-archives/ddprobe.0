Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090635D8F3
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706957297; cv=none; b=QYD9nk7vsv5xfgOSokFnrOG4l75e0wzfj3F/FdCYvjpHnDaBp16+OE+CLtGg8JzxRXH3SnaXunkDLRgJNeq6YJQLZVnDOwpTuNv+peWAYpEU3kQYEMZHIhdAXHXFVjt0zHaCil7ccjHnX47ORlvv7qoueQpK9lNO9c05RO4JaQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706957297; c=relaxed/simple;
	bh=hctbgtjz+glR1Pilw3wjfFahK2CkJeD0ALnQvomRu2E=;
	h=To:Subject:From:Message-Id:Date; b=VIySnDMMPX9chh6UW6gwKB+/Qa6DhORRh2QhBnzeG2z+Ai2vxhY2eg2tS6Ol8ESn5zXXwz5yhIoddwVxl5qcYzDBO3rovSm+qzG+XzxovV2bRH5coWDMc6GxxyEdx8la+ahdx2/uh6hYqEXvJgYGs0FVNMaKvU3gU9RuukUPdzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7X4M/kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7X4M/kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFE4C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706957296;
	bh=hctbgtjz+glR1Pilw3wjfFahK2CkJeD0ALnQvomRu2E=;
	h=To:Subject:From:Date:From;
	b=C7X4M/kCgS9h3muCujP/JCtLDjUDsEGGBc0n9h9np638Rn97LTmw4EguoDVcKYPk0
	 pzK5hsQgBwwQxLs3dfVlZseY8GIXzHHOm2ERqNl3NLZffZ5NJGUjrabxacJvPIN3N1
	 X/mXioqpyRSuK52Jph7Q18wYN2FQkjGIWwm1dohyz4eX8HMc7us064e3CpEig2DSNl
	 pv3vLr1n9As+tbRPt19GAfdHnHsrCxTTfUM/Udag25CvCFWCLZGltnuRTMpiDYu9Ib
	 OlHFWRYu665NPc9zyW9wOo8yk2l9us7AoXMNsxaG9DH+SMsJ5UntphjhIOZhdbAwgQ
	 NkjdJbmfvNsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608EFC4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695729637.10399.373795796178965039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faecaea968882165a649ea0c898cc6acea6cc7127768c427c25cfffc72d5a75
Date: Sat, 03 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706957296
