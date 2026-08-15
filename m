Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB083254B3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786803634; cv=none; b=OoSygOsXP9rDXoy+UdtT2/3rtN5prqO5oUO1v5JwQbINfdlh9a/RRykBLzMiJK2o9Yj7hR0AZZin4KcFtRomq+2Wmv0c+nJ4T5zx63XoH+OSW7pHnKYPCAWBktFCXYg/JfUxG3QkaVGOArhBMOzsiBOq/ec/pu5FgXqedw1I77w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786803634; c=relaxed/simple;
	bh=zvo7PR42d1fOGbgazZnhVp0/jFiudxa75abCqaphE6o=;
	h=To:Subject:From:Message-Id:Date; b=YsyO9O/90PhVn0MZ8afkduIraGEq117Udsm5p0268n7HSZmZ5W86wjE8TXj+riUFhyR8fQDW2bP9nAfcUHZ67hkIEi3Q8ns4UDY6NCOuj3p2DHJOA14lgNQD2I6YWHg0pbXL8z31sGjln8Hp8PUEG6JjLS+sWZgWGUuUpvh/wog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/Jp93Hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/Jp93Hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D053BC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786803633;
	bh=zvo7PR42d1fOGbgazZnhVp0/jFiudxa75abCqaphE6o=;
	h=To:Subject:From:Date:From;
	b=n/Jp93HrDgY0AZ+oGuXYjQf+gMBGbQOqQlCZzUlNgLCA3bhcaFI+ca9LbuZDYUohl
	 lOLGnsVJJl9v+xRNUi+3VnChnWpaQAoyj+L6C69ZdAklC/zpOpVOwafOHtgOt2O3Yy
	 C4cKpN92DKrAL2XHW6747Ay9mSuP5vGzBcyk6OoH3VeMRzVakYPLNcfNv0EMiG9NYL
	 3E5Ss/Ov10/c18ClMPhp4pTOltudFy9vcyEPW7BDtf5d6sHgg8owL5N50ZRafukhHD
	 zxuNFgfn9ZywNUepdGLyMV0/rbNb6mzMcuXr8eYjG87dKvMEo4hORCMANch6RsnCuN
	 HYxtn/nwipxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCACC5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680363369.8789.1198321056817541834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1b89fafbecd035317edacab09dfebfbc2825d7e673ed9c0c88b385d2ad825b
Date: Sat, 15 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786803633
