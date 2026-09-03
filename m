Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776AF35F19A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788433234; cv=none; b=u/ScXntN4JbNleh/UccSULg4XjXGhMB5hltngKMmoL2Xhtd503CFeOvhvaGH1+FNNV6gUjtqCEgMgi8okz0QIL6F+LWvL2MoMRzuUTp7x99alQOkR7NhVYNMeN7VSMfweGY5y6dEVzUwPTvjXlFSkrllT6SVdJbWqWc0PoIXSLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788433234; c=relaxed/simple;
	bh=0rflQ2uePRgbuOF/haQFhOo8Fz2OqOc6NFVKoy0M+Ks=;
	h=To:Subject:From:Message-Id:Date; b=QUq0snp3/JfJ3tCupPK/362FDYFaHWHvxnlQ2xsgpKP+uXu7GuWBXDkSpTPnFT3rIYrzBlpulib6GIHeF91InlbSuaV/IZOCLHseY3K7Zlmnvi047pchWHZjpuE7qNi5HoaXdpLqaLwzqAyzrM6oUlxmkFlpEXGzudxxc41zGBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naw8wTWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naw8wTWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63FDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788433233;
	bh=0rflQ2uePRgbuOF/haQFhOo8Fz2OqOc6NFVKoy0M+Ks=;
	h=To:Subject:From:Date:From;
	b=naw8wTWGfb1YB+gI+vgZJVh6u0euuxvOrw3lzLGzyD8p49EhEMJbLV01nATmiMNur
	 C8vlb2v7coT3VgQygQCF5w03Jm4t+STQL0loAVxrwTKY4iZs+x/BJ3gZqhrT29zZAs
	 vNkB6xAHdnbJ8oouOsImOqEFTwkIL4jeEEp9qZIIrP3N/6vCMvd37d0rviar8mWHie
	 cgM97hHazIPk6xpEujehpRJ2gxZlUnNPC4s7/Tpvv78INrYwK6dVhUAauAMMzTE/L6
	 gN4i4EowfII/yazkMvx09dKYLz6vJW/tQ2ojyyKdJ36GFh56jAFHqE89NokXa7e9vA
	 f0BMdfz1i8NfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD1DC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843323369.20997.10417608660038919545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e97ca7bb14d61b425ddecab619b147d1481f3930d8e29ca452f05eee9c485ee
Date: Thu, 03 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788433233
