Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B52534C9AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780889674; cv=none; b=HiviRUnvCXF4k7s5E8aVbL0GdMnrXgs38cizQOL/ydu/sfQ77VcDxEnxtR/34+v9YLfteyuPerd0ySL6K1IMir2nrpGl0jV6HGNwv95qyhCuIaCvoQChV4KmXCgGAXW9oFRd2Km7s5/OYrqtmtIs2Zis1X7+iWHCrTplrPagvHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780889674; c=relaxed/simple;
	bh=OfpORMYBha5HdslMA7iHsLuIpUtJLBKPJpZbj9pbp3M=;
	h=To:Subject:From:Message-Id:Date; b=senSU+/GFh8iv+XerhhDvFeAFklyyAelLOHsDMCmoMzmLpu7BpOdK+CcLV1K+AqF0iCsRn2w5xxGr97dtbQIZEYB0+p/16z78XRaoKb5iMHSmXizAL6v0IpRKmY1u5abvCvNrsvljQRIEb/wDGmVPbyC+XIpFkyZEnLIXTMdarI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1lc7L3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1lc7L3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2C6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780889673;
	bh=OfpORMYBha5HdslMA7iHsLuIpUtJLBKPJpZbj9pbp3M=;
	h=To:Subject:From:Date:From;
	b=C1lc7L3JL4/KNfRNmJHdcPBsRHlSL3107zv5AiZNCnPvKgbpzWLq3QgxDAq2TS9li
	 fu6G3iUa1DiR2wnJHeme4Gfrgd5eqosw3sW4ELeik3n4fIe512c4huPP9WrEJgqZKW
	 bOq5u1/wpaoKdBJIYi2r2Ls7I9sMswYQuAbnt1lqlJzhuKJc9Lz+v0kelFfZyI9f6P
	 r5jq4CCKGiDT+N8Sph1aGX/kZ73kQXHCPE6UeclUrao50ieSIhHYlf4Oq9ypTGyymf
	 GDexQ4EtGheRl4DTsf/jugXsGfyXUTJlv9vrvUTqck9soNBeJMBTc2plNUaBdRjqMt
	 9QC7AgyZX0F9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F43CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088967370.29304.18130081606950675835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1c536726c4bce7b60e46ffdd038349c2a2d51f7f66f293fd817201ce9b41d8
Date: Mon, 08 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780889673
