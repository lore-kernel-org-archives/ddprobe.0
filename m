Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BA2F3B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902194; cv=none; b=hqAbJi0J+j+Sn38pdIbdlKHjr3eCIgpfAzBJJCvynHGjjHRnDFKRZ36mf0v1Ljiz08whaAI/i+ExWMWE+mZORyHBi0IWTeH3ciB4Dvp0LX3QDZ9VlGbrfpeMVlSj1C31AN83AZ8n81uPamgh647s8cI1d6YboZrSKRlyaAwg93U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902194; c=relaxed/simple;
	bh=QdVnCYLpNdQCaoon12W2LZ0PPesiXDM57PLbPvkYq4E=;
	h=To:Subject:From:Message-Id:Date; b=GFTlAxwkkTOW53zMro1IZMWcRSo8pNZQwAimo+nOyE6tER5th9e0NEmuFkkt6gXnJAjWUGrycmVRAd6DZUEy6E8Fv1K9hG3pyzvLOAvfkKljnt/EDBiNaX7uhZAHUKIj+w4PVtTa0CK1YPoHm99eFCldSsd/+Juzt0W6mP+WWkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEyctQyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEyctQyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC442C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742902193;
	bh=QdVnCYLpNdQCaoon12W2LZ0PPesiXDM57PLbPvkYq4E=;
	h=To:Subject:From:Date:From;
	b=VEyctQyB3HCJmtjdpd4IyxRUws1Jz+J9ay097DJImmGcX1QIAHS9eNBrlOyhACMhC
	 2izLN3bqrpAJGR4tQ/iv6X+54sgkndZwaAkKfack9a+ms9c0TN1aSjmPUjkbi1XhRx
	 GmzLS7D8khng6yCJR9WOyWNj8GUuHFG22zsWzFg2x+Byo3cbf++VO/z25J1IjQdflZ
	 /+TBfbgOs2nn42cuXOvYvlm7krRnBl41KxZVTuOW7OxfRRPnudWaPK74QijOssJP2M
	 vQorZ1UIRuLw+WpuJSClVpVZuV68J6y6RUEHXUeemGaYmweA6yfoE7aRixvWxAnM+f
	 OiMljpvwFYxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CD0C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290219365.15872.11445718810758557583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f0ad039b9274364b2886fcc5e49e417ccecc9ea81ab5a800bb6096015bb040
Date: Tue, 25 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742902193
