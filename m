Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2883F2FFFBF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764853374; cv=none; b=Wdwl53eEtcvT5svXCInxelbeIrpmdzOAI5Z/CDz/AjdIa3stee3aopQQCOMweSqEIj9U6vyqxo2Q7G2hiKxSZ/nn7AHYxOOcRAnaeMLZgK4tx/ljQUyW/3mwwDGynKJAExpIB0wColBenCtQEXLZo9D9/WrQ26DNABXOc9M8XIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764853374; c=relaxed/simple;
	bh=MRmw1K6xcKclrGDgXFo+LcuRJ6uVIjimQBkEP8U1wZ8=;
	h=To:Subject:From:Message-Id:Date; b=fXZRC0I+tI5uAOgQFscmI1QPSTknECfX6ZIYaeEmB8EmsmPNwdXekFdflsqyi7nNFQg/I8zz5/RUzg4y0rk5liq5ibzztbDuKQGPNk3gv5ixpdVfAJtPBV6Z4tMAv1jIMVTdm2BkxBBGQQ2LzHvw72/aN8w9Pbmiw8KbtLuXuZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fv5fJR0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fv5fJR0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A880AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764853373;
	bh=MRmw1K6xcKclrGDgXFo+LcuRJ6uVIjimQBkEP8U1wZ8=;
	h=To:Subject:From:Date:From;
	b=fv5fJR0WIjv8DteZTOFpbEKiuDEHwcJ+YATco6IoQJgNEf/ldB7acqwrH2ZYjgmO1
	 P8p4VgUoMCKF2QnZbBX8gCXqyAShI4OBC/mbZnHSbQn4Mg2KSdVbwnUEsP7UfiaNWI
	 PfskC5h7UlbGgsRIZ3WIo0ju+/zAeXDMVk4WAk3XMHm9dLm+7R0HOtuz+ga8pSsFM5
	 DtEegnWYHrnRKfa7BJRjRx74fsRxUVJRHX+g/ncHkGS2coqvbACec/TRAQr+8hLs0T
	 bPk4I6+HII0ydzUkhmjMnxCI0sOerVCh2RDtcHu9ceaUUGihhJGRAcBFqfrS7CCnD/
	 dlAtREKS95C5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E52D20683
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485337360.22791.9008805586585830649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be159ded193071e15649a3b49025245302b996b5c8475248f9edd5c5be66650
Date: Thu, 04 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764853373
