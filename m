Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2547A1A76DE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750436994; cv=none; b=taAmQ5CUGIOJwt9Mj8WdOtw4Esm6PEkypTcWc6qlhCuhxq8JM6DiE4uFHJKKogiovsMVPdJJQt9YzQyRISnk0pTi37nUnmiOuedZd0dHbzgtqUBfL0g89q+vG20SIgXIiNX7RJRDj0rv4OXu0+ul8xuuFskqHODTKY7yx3qmVZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750436994; c=relaxed/simple;
	bh=U2iVIMCOv7DsFFgv4nDC221JRNWzN8blnkqMdIZ7haQ=;
	h=To:Subject:From:Message-Id:Date; b=i0gwGe9llMa99OpDa4xvfqpd/j9A21Y96+DkmebEutiwEXImK/WaK442wufdY7sY5wwRhEfMAI9Dds/wDk0DtmM1+IYVyiPRHCD/AEZdFLrDx2feoXvnqJ4+pSr1cVjDUH3xa22mYzve4gr1N5QQeCtrDEZJoUmXaApYqUc0nGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0F/mvoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0F/mvoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1343C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750436993;
	bh=U2iVIMCOv7DsFFgv4nDC221JRNWzN8blnkqMdIZ7haQ=;
	h=To:Subject:From:Date:From;
	b=J0F/mvoE+vl4i0LL0Y4/XiWpos9T1ej1MaO8dXJXhqe3loJDrA3EChfw4fKmmEpi9
	 SibJ9S4mTNGynEcaGBQGoTXE18GXBABJcZFvtWn++z+6jQU2k2DQg3dLKx35LAylTu
	 EtxK2dMnLVN68RoGG3j+epo4QZ4qK3FQRUvSLRaOvp01eQpceS3BeqAKsjJ59kjxJE
	 0cKsRIt6jblPfNdO3GlOHqHDkixwLRRLPlv+QWciwB3qzvfI4VpnNz11zh91DoZEI/
	 sxoRG1qkpjT29KH6gsGIxz3VeMiXlluYK5Tl48TiUvmygBK+Op4B3f5bCGXZBRz+jp
	 NUZKvaCTU8Wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4FC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043699357.25400.471989725602424612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce157734f335e5b3c749333fc37144c5d8aaeaaa87f4a20e08c0207347904fc
Date: Fri, 20 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750436993
