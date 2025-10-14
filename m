Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E93270553
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760477396; cv=none; b=Niz8yf0zEBqIkfZZ9ydM8oab6nu15+hFJqfQJO9iSB6NmkqgwB9NmyY52RVqz66J4EX5eVnfJ48grOe2MmA6mPTQ5bBGmZjUSvP4QEBrtRnEWy2W8CByPRNkErlc/nFDllnU+WcGJgCYJKWMBTgH/JsAVrAaH2MPuEJa8U1kJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760477396; c=relaxed/simple;
	bh=jM2V3A5QnpcntkuzBESGNDJcJQ6U+Br/SmGObPM6aDE=;
	h=To:Subject:From:Message-Id:Date; b=EyD1GUsChQlF2SpLGUveASPV5y1PNdN+FD4el9ZhZWB9Uf0kH46fbz0MYdTksZc7Hh575aWaRjOeMHtm6kKB9xvx1HJLAyN9hR9sNPkmch32tQ+OdyeD29nCdWksTOZpi69K/Wyv7/tCFZ4LBLLKqsQCR0lyfImrsQLcAEHYmu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEN0OmDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEN0OmDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7640C116D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760477393;
	bh=jM2V3A5QnpcntkuzBESGNDJcJQ6U+Br/SmGObPM6aDE=;
	h=To:Subject:From:Date:From;
	b=oEN0OmDvqcgBtNoL94GNShficfWQJWSStMmZ5AtIDhjyWkUMZ0hf27968gGmerV9L
	 DbH3dTfiNytd6GdbYurlr1TyUh2X0kuD5hP8GuvLkFWuCQpvw6wuLyq6SDesSVsJnE
	 dxebXhW972NXgcgwQD5Q44BozMTus1o7TLxph7NgpTwNB4+KIrW6o3LeWew6c+AVYU
	 fI9/4S/lfy2iaY+lP6MX+Jb73sb/PdgfaHzfarTCiLNK81Gaj7aCGwsNvD0z4bWN2w
	 2lXr7J/B421EzCExaENgF9VCooQ/rYaKqoqTMoLR26tfZZctxuV6ZdZNVlG8MqLtk/
	 pcUjcMyBffC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92779CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047739358.17227.5524857723191981771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae6bc800144e0a5fe94bc11f4904bf5090c91bc57482bd8b7830f863ca434ab
Date: Tue, 14 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760477393
