Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4B3CE096
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785950434; cv=none; b=iaA3XHe1ffY1eYQ5fbTzbI+dp9axDHVhEvllBk4YPVD3KS0NYfjvFX14872IGf+dC6ehN4DW6dMZxz0l6QJXEU95rmzrnaxlXIV1rd+jAz0slMJ5dPCsFCK/HEPyJxiBFxixYhIPr4+F7iSIR+r1wiADRmTkANDmpkYn/LuNG2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785950434; c=relaxed/simple;
	bh=zbTPeniKWclblQeIHq1k/FYqSMAgYROWqo0KhyO/Yz8=;
	h=To:Subject:From:Message-Id:Date; b=hoZIrWQHVE4xM9sasKY7JmajHgn5iEC1dkyIK7zPrDSpY598WETrO2z0FWtlvz3gEbhGUt5Xvl6FXFiWqltCj7ymlLeHMRUXYwQuaTZ1CpebOP4Rz/kWvtpu1qcclE46TgSc8IdzPUF5CpIUBMQQRRdAN/97hxXBsC5Pw1ZJC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRzOtzLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRzOtzLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DA0C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785950433;
	bh=zbTPeniKWclblQeIHq1k/FYqSMAgYROWqo0KhyO/Yz8=;
	h=To:Subject:From:Date:From;
	b=YRzOtzLoYJIhEieuqJOwmB7UNDkabAph8jJnFRI6tMaphKzEJDQQT5pVmibhn3Z/C
	 jht8QJIf9QUtD3v02NyCj3lSjCuE9xuyJDRKZgi7LGtUFzgcY2TPtJOvFsg188uq/8
	 xCSM+NTqNtxQopBfNTfW6faPHUSK3Zt4TtqB1+soRtrNALztk7sqnZOfpg66L095aA
	 g6M/cqnZGcoWorQ0t3vFyPaB6abqaPum0y3BYEWKqm/pcJm8os7rSs0IQHI6uYLxr4
	 RnMPS4eJmrkKRS8ctt/tcGcklL5WgY1akNGCGTb+Mz1yhE3ZZYudiv+VnI7YuiBMhk
	 BjiyT0gxEvA2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3032C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595043372.17495.13220274642097727261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d48d59fa778fb496a9e5d28bf8488cd0cbe0e82fb6a3c008c1331b85a816f52
Date: Wed, 05 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785950433
