Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E82225AE
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718662703; cv=none; b=b/eqGyow0mrqPq7WikYb6FrTT1uzdmUSRNDNPQbrwwe69eG6MZRp8mbYAijy+o8o9DAwjMxmGoiHoHS10ATm2Uc+B80ZsZ1afN2sXFEF5p0PG/uTNcj/NTi1gEtV1qf4PJ7wiqK7+ebIqnyHVF2Ty1dg8khzIiQ7okPh9sPRzpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718662703; c=relaxed/simple;
	bh=YY/gia+QaFzoDUu8VH03gKjD5LH4syID+vYl5J8ZplQ=;
	h=To:Subject:From:Message-Id:Date; b=M49/EjUZChd+bPT0ivbOD0ypDqH2pLlEklas/uckhZ3S2KUrspxOquOaBQk5hEaBh90GU5/b3/7WPoUl3rtoMOcCEpGdwMfrg01KE5ExxMR94kmXrA7Qn/FLazL+2Jyu6SnTEjqXA6zHYdnCmgx6e2S3lC5rJIMNV8jAj5E1+E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkjHatnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkjHatnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0D5C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718662702;
	bh=YY/gia+QaFzoDUu8VH03gKjD5LH4syID+vYl5J8ZplQ=;
	h=To:Subject:From:Date:From;
	b=VkjHatnGc3foeKKMjZN/4aiQopMBFlIy0Ar0CylsqfgeoOX9VqHX68mKI93JWbOky
	 viL5bp6XJuzKqQfIavn3Z6g+YOWA9N1BDbUfaCrayJGPGAgaKJbBEvRwAmMJP/x/nl
	 RB7f8v8rU4UXSKUMnkfRvX9mWIGCo6yuSbAoBA9wk30OBuvYMZJM1jGcWSWEVYJM/c
	 DDg6SWEV/krgeUHT9ES/78XHUF7z5hTRi2/MIiXoL4DssyPuH8UOhWHd4w1aL0sRTG
	 lp+RTNja3hRrq74F8C5Ka2QaCXuTLEmuYVNOvZVUM0vvNzw7Au/VEUa7Je7g7A9SuJ
	 x/xVGInP9VTKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF899C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866270276.11365.6578571916164472985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dd362467fa30d884a67e3b21e70eaadaf5b3587a85f85117749378e59364e4
Date: Mon, 17 Jun 2024 22:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718662702
