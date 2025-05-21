Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288A5239E87
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747867194; cv=none; b=gNp+d4z2XlIEyOfbC3dS9xrkaO6QQmHcXwUGPmF5N1i6eJb96QzvaRwFrOph3PYC66ZSLVCEtT32irXujWA9Y3jVahOB3qLVAnsERvE0D0Hl5c3I9QjUiTsXLZtcyFoOFftdJqLEOXtnP+9Q5d41TYF9qLV64yES24QawJ3ce/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747867194; c=relaxed/simple;
	bh=kx2dYF3uXWUXX4zvo2adNk8eLKIcuvOC7PnBm05gzBU=;
	h=To:Subject:From:Message-Id:Date; b=M0+3xmLmP0/nU8wSoN/UmaUzeNSUTAaLMeAhEa/2ObaEwioaYiQ/ZV4Y9+pkkTIzpCaWZ6TPE3KiEGmdFhxW0Nc/2hHAJ8GKmYPcAohhZoYgCX9/aCvz21eO0zZFEMdFVQ+u1lzCEdF4U4NedtvFWt3C7Ym9P/ILx+ZInw456sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nidMpZYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nidMpZYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBC7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747867193;
	bh=kx2dYF3uXWUXX4zvo2adNk8eLKIcuvOC7PnBm05gzBU=;
	h=To:Subject:From:Date:From;
	b=nidMpZYx/LecuT1gCOlxCseRkNlrK+75nxBE1jy1n1acoA9+mDFmNsVXMXydppoRk
	 05alNRhyr4VKZYcdsTd4MDBVYe2rgnQ+lMgp9FhjT61fgWtXIZnrA7r2DMxK5Bna5o
	 Y5D96pQTXOACFDw6pKDoijEFmBJjMh10Ge/Zm6qpNNovwgg82Z8RJ5y9atsj+Ctv2Y
	 rZR/YVPmRL1uM3msynQNtJrceHWBmkrcw21oqcvdj74Dr/doh8awiLkktxHTOEPrbB
	 7k91lgGkolzs8bX47sQ8Sf5FPrsK85jjSfxBPzdMa7cPjAGd4yQh1zY/8AsZUmiOEl
	 rXixRHaB0JT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932EFC54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786719357.26245.1001645549118982423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40694ea8d44e0bbb8ecc9dca7aa4ccacc955070562b3c74b8eb3860047e1b9a
Date: Wed, 21 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747867193
