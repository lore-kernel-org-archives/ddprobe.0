Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142392E6CA5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761596994; cv=none; b=EUKIh8GELrHLXwmSjTZ6BTZk6GKJYKPXFS66vgRltMFvm28PAj03B2Ub8mUBPGSKUJdGOz7tx3TlkwFfAHbnhBgLIkpXcEvN/3NHcdHCEFjiZwctLHv30taS6b6/OA5JMpeTXvzOqx/R5OOQrH/GZ3xRvdurODulUTZj6LZnoiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761596994; c=relaxed/simple;
	bh=2QHW5LY3YYKxcxFj/pk0dSYlMMZBIkcAtAGWdwi3i9I=;
	h=To:Subject:From:Message-Id:Date; b=tdAm6lFRQw2FTIDHnuTlNcEt7dx7hVvPkbbbvzuAo0WgJ0xLD9p9L5sK5cHTxcCvF2Yj/YOru2M/HY6nw/LDZjVOIT9L5X11/DkFo8N3SvdGPvBEfknEWDwunlHL/cFyFx+AE4lmOlPa4I+5s2ERy3iaIQd0a/8u6eHUJ4C8E/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu282wFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu282wFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761596993;
	bh=2QHW5LY3YYKxcxFj/pk0dSYlMMZBIkcAtAGWdwi3i9I=;
	h=To:Subject:From:Date:From;
	b=Fu282wFnuq2lUQE8FQ3Cpe7lZr0wucFDkoMUgfSpWWsRv6zBPnmDsdmuV11sIR8Do
	 tAyNSp1N8Q6vLu1CocjYbZjKgfzMYX9jLOShg9yFk/0GLF/NOJQ2bqSEXkmzb3uWcc
	 CoPgGrcyGMDL4wMNpdZGG7lksjrAnwXWJD6xplxCKKz2dAjQmAINOb+vB4SzvadEtJ
	 zygaTf+PHw3+ZSZBd4nrr3PwvhzlFXTx2q55IJzX/1Lj1oVrjrDXd24Ad9/h8PeLpE
	 FITmiVYJOi4LeQO7HRAGlKZtHhi38Psuli/ErNLuNUtRx0ha2/GnBFOX9K5dkjpu9d
	 Va6uqVSwfjgmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422DCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159699358.19903.8871208417792736827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cfb022dcc1614f20bf0c02d195c2cee8e11378625bdce8b7ddd1f40ab9ef81
Date: Mon, 27 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761596993
