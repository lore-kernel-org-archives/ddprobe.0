Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327FB2D5C70
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749812394; cv=none; b=ovlVoeyQ6CidOKMiAupm+g1PxN4+SAPEp7RnsylIL3518Ao4NTZT/D8ELAbustdS8k/SKZ18YHkFNkFy0EqjYbGVjspBWjwTzw3ibp+nzcxo6V2zSVNMAINqoIoStLyPANlIqMekuaHhHBDCW5qpvjgFr0T6Pgq6V/QHo1HOXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749812394; c=relaxed/simple;
	bh=LfmXsYO7cGvvQw0kfukOI4U6WTPjjI5qpyQHHrYwGkA=;
	h=To:Subject:From:Message-Id:Date; b=d5wH/pIaZkcgBMZXWEGvAPx9xmFCmawqBMuT6XctMn0t4rFnOJHgmeG9yHrgGUNzFD0UO36GG8EqvLjYBuJbPATJE8WvPoxaI/J7Esmz0vzlQO750dWzO8w8rJ0W6A/rR24ptgPoZkmGP6E7TCEUJqEO/FRrUn88BwF1q7KIjz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHhOCdw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHhOCdw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C35C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749812393;
	bh=LfmXsYO7cGvvQw0kfukOI4U6WTPjjI5qpyQHHrYwGkA=;
	h=To:Subject:From:Date:From;
	b=SHhOCdw1zhQikfbvv3UGpzo/aFlrCrW8TK6AVOx/IjNVHzXntoFFufKJARElwKWtN
	 73OLm+F4nfaA/srmCaPKwPonTHHj6BwWFwI8Gn0hIe7mvWLP45pvDnMHyGM4ujmjuN
	 PHjvWWv/WBCfFTQuhViYdpID8Zll24hHM0bMDlxKbMBkb0ghLLMuPJPltcVDMOOnqo
	 4hj2yFdskZVmjQkswIpI1zdKuBoBBOM28MoGaSU4FWV1/fDyA+YZ1B61RVeIE5Sl1P
	 BnyJeDLrQ9OGCsodOAzoEMcRTvgoTFa6m3pNE6+CxqXokQ9WSchxmx+2K5j6XMxTE0
	 5wmZqRZerMTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF1C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981239358.22785.795954373615005429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423033c76b5288a55ed2260d4fe9acf0690b8f5acd2d07bc78526efc4a40a427
Date: Fri, 13 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749812393
