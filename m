Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F672C11CD
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771557894; cv=none; b=ZTIo2UE+zhwaOsGRzHLvDPXpH3473vwpkJYE+uliTag3c1F5nB0d764r4EDMkm4oW5kHa/PaE+vAvqmICgRwSGVgCr1dmBe/JI7dM8rIWCVoEdz2ijfp8UJUat4AHzPN83zfL2ZHbFEPD4OZ6iLE/EZFas2SQfH9nCDvdVxyXz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771557894; c=relaxed/simple;
	bh=ijRfsI6o2uxZqc449uUDMTDq1m7x01MmihXzoOZYnDo=;
	h=To:Subject:From:Message-Id:Date; b=b+TlWFLVkSkQRmc9hadQUMVcTP0Q2c6UhBnMSefxwjdslJMCGCl5Zsbwl9Uljade+NvfMfM+vDtGGYTkDT2/e5acmm/knY/01okMhdtV3k0Dk71bOwLKQYlqQxn9Be9lxo0ekWEOl1HIZZrgc7pFJtXJZbjELU6oLdsnayXcfLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEXYCUy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEXYCUy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEB5C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771557893;
	bh=ijRfsI6o2uxZqc449uUDMTDq1m7x01MmihXzoOZYnDo=;
	h=To:Subject:From:Date:From;
	b=cEXYCUy85XxD+UTUmVORpVcLjAEG8x0K/GgWIlS2UZaHgeq/RixYuwv2xOqKPWKhm
	 opE3MPXVEusdjZQcwD7buhxTh3hWtz+bxsoOYKxrbPKcEjU6XsNPBrVEETXUmy0SvQ
	 77mOD+ND286nn0vbblclWFTMZGXgVrg5Va40TXjYtTvOL7lO5cWAEDMR1jtcRX4i0K
	 vVsHi9cp/Y467rBdTdjCj1b7WlVq3ZMuAWxmolN8oHLqzXXqhFlNW7IzVAAkajjilL
	 ogq4sg6U+KR+NIZMwk/TepxFmg+H+S+SYgg0mcb8ufkm52hpC7YXZ86WWx8Uv3eYU3
	 s9JqAgNh/K4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB0E9A041
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155789358.11203.3383535875062059579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f614bf9825afb09a9b04c6227d6903d164df359fe048503a78df28c6d911fb2d
Date: Fri, 20 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771557893
