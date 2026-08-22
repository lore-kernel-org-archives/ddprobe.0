Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B74493650
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787400634; cv=none; b=lcjAJouwz2pjMxkbmacJ3AvyRSTdRLJ/jN/C7EqpN1BVkDfrCOrup8fKwlpiuXmhEoHLXrBmEgSqkF/kh/hBzra8+FpxmAbByhQKsyS1iPuLLkUoK9h9rjuTKwg8roZQKbkSAeyeMaKU+Zg/3Onv4VAzU/ETSTiIXBz//JHj7oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787400634; c=relaxed/simple;
	bh=yT3mgd/6pJCxUlOtyLVTMGUEQwcOY+MH3T/A9b4ZRR0=;
	h=To:Subject:From:Message-Id:Date; b=leCCpHjB1KRuRbWY/d8BhN/HaUts/SagjkhiVzbzsFWCgbbH1VQJO3uNGNGMZJBu7ZugrxMbAHYaa76hPYmb782HJzYJnbOxLNZxAwOPj90ZOnWwEi6xTHIafy6MeAa3pSH41ZfEIkpWONMVx24i5bC5yJt1HUQ0ipx11fnE/q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfyO9Rlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfyO9Rlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CE9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787400633;
	bh=yT3mgd/6pJCxUlOtyLVTMGUEQwcOY+MH3T/A9b4ZRR0=;
	h=To:Subject:From:Date:From;
	b=YfyO9RltsC6M1xM3iqJyV45K6WEh/P2QpOF6pUf2XxE4QyZcgJyuM8SgZ0uHiDygA
	 XC7w+NqDlse29bpLBUWsz5ojAyrsrEZHCHErvj1U9g5UlOsgklKxarz49LEtPzPrYm
	 F+GdLOQ2hMnZDoQ2q8MJj5Senc1AutU2VpV/GriY1W7RTsFW8bNSaieUmaRKiwUGK6
	 7RnZcvgZtpQrM2u/603xeqlTyGJ/Yn6ElV2xBsUDh3ibRBxLutVkF6PA8wzoaX7QBV
	 HDFTevtgLxPciUkD+7QYfKVEGQctXwkHvKmDXkJucA0vWAezjgb/pz+yE77FmeBoqJ
	 BEp13+mMk+AwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1623C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740063368.27602.91389761856285703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f7f0663b15a8049a4e4030f71593fd0c4986642d662dcdf5cbaf88ffc2004d
Date: Sat, 22 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787400633
