Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C4030676E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785289234; cv=none; b=gdsn6iBpEWeVzU6c8OisHCo3cg6Bpfd7mXqpHLsmle05QGDIijmvkCHdNzs2hFGuH4XjaFU0a0yxzfPv8GeotZSi7CU5zQocVfTkPoleE8kyL9rYKi77WijPEHJhWVOyz5urwspsp+lDNM7zpvvufaRQmSu1dTzA0mbRVsMOiw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785289234; c=relaxed/simple;
	bh=VTM3gmfxt1nWDLc965o7IL4hd3OErwnTIFg2KBBfOHc=;
	h=To:Subject:From:Message-Id:Date; b=eTNEAZfs/Xw5jfJMcXdxAkINZhTYgWrXTX1BUXwAssMj2UCgyvA6Sr86KX3F01pvg18FvA+GYKD6Pkfc/UVnA3FYnF4FJc+Ng5THSBmWsydbCLZP3aCDcn4LDBIFsPxHuqblUSebl2KqC96YygmazUM0DylllRXqW1M2aDIWI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlmMjSTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlmMjSTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28DDC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785289233;
	bh=VTM3gmfxt1nWDLc965o7IL4hd3OErwnTIFg2KBBfOHc=;
	h=To:Subject:From:Date:From;
	b=nlmMjSTlAFvjLuYrDCspjw/LqFeBkJLm0bNy6HHlulcVOP35+i9umiGrOX231Htyl
	 HWtFdM3FavEDOFX2vNwp/95AzEj3l/tkQcL3yu0rMKmQdzH4gENoZ/5aSfRnLTYv3l
	 iHugcjEnVsqQ59RZMq8ueqcwMgLZ1kIqrTLsjaVh+Y/ZqOIlQ2rbUZvXahDF+s1XVS
	 5WxL8qnFSBxu08XJTAQR7WYrfEEPJpN5FDG1PUkydMfljRm5cmNDhxGD0bhuxzB/OI
	 56xw7+ptuEQXPSF8GAnyhEwGt4ZRKZSCGFV3aU1184RjhIAn1dm5m1xNYDqfgGT2GT
	 95M4kNODZqFgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3EC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528923368.15635.18071157507520793514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6063285cd55489cc01a79dfecac4d3ee41f7f8c28fb3a764bdeceedacfdf68f
Date: Wed, 29 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785289233
