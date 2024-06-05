Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E874C96
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717552583; cv=none; b=lOcErhk0LRUBKSahDS4TTBItLhZYNcGG4geHPCZh4oGIyJ3GZV10qn9kSpBk4v7qHoc+JEIoeTVtS2Tkc8Mi1sV9Y1U0+fC5c4KFA1C59wvwenu3sTvegSKEEEaifryvrughv9dWlPRaZnLAEMtBGApo0a10eRBSASUyYRag9ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717552583; c=relaxed/simple;
	bh=M/92gC57t5KX+WwPWm4HPu1EgkxU30JtWkD4Kz11XoQ=;
	h=To:Subject:From:Message-Id:Date; b=DpDY1aMJCYBEuoMGEdT9i4oCsHAv1veKxFvigBv6eTYnyttOAyiz2uitsDlZt0MsOAZjs6UzVkFqaf+2qwUI+lo9cV33na8i+ecMRPspQ2rqeflR8UtwyQBnqvhYvd49gBxTL2qozsz5E0haGjakl/McUk0Jh/llwlx43m5hvog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knWalea4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knWalea4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717552582;
	bh=M/92gC57t5KX+WwPWm4HPu1EgkxU30JtWkD4Kz11XoQ=;
	h=To:Subject:From:Date:From;
	b=knWalea4hahZCcSv79N88DT3NDzo2O/8TccYbay2Rin1h/ZaJXVoj+hkwM5RTN/pL
	 yyxmqoG98Hc4LHkjrwg9VM34X7g2NgQM4umEFtN7TtDMlYNuCpR54Ae2TIrXZUyuwr
	 losyrUlvRKhdDfeUYqip5A5gjPO9Gs6uH4N//aktLdWwwdKKFaqJc/raeIp9DTX4sN
	 FWTaj9EmsBEwX4xuQMGOWzvWlOVQKpPyWUR6z1S7OB5JvSo9lzovYw3ATAiQz+0ssi
	 iuyyfff4J9bX7grWnAg1ceFXp0omNgZltu3WvVlFRz3teA5p6K1WAxsgKIwe7maQ+S
	 XpZlBhcCtSvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5DFC25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755258275.22054.12251457360676029676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0927c279a327b48742252419af9b500d56a9a7ed5ed42c07c141f20db7dc1279
Date: Wed, 05 Jun 2024 01:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717552582
