Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C405CA64
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736903154; cv=none; b=KHUulIP3/osEIEEVmxhRq39dZeRVpCdlZFYKpXms98YmXIzvGJUef7DZ3ZRL1HwL2x414xAaAiWtp+JM7/QUQWGtdgyMsSVX6cmyaHQheZSQ80I1uC3oSk+XWF6sDHtmsBAbgjhRk4etcaMq5gn5vg2OOEfyUJoRngoCo6Ip7fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736903154; c=relaxed/simple;
	bh=hSU5X01HCp2JqdGer7WUrUOdsGgDIYL5WStpRZlQFG4=;
	h=To:Subject:From:Message-Id:Date; b=lG9hFshgjaVH7rU66t5WIu9vIHRVp12FDKa7+yHCmX2lNfevUc627Drr8nJaPMdJudP6zlT5eiZxf/BKTtwr4u8EUl97UwqCK7U0GE1PmzAa7HE2VgHfU1l518YFadtD+6VintUEU3/YKLcRBuJ0oTaLcYbfrFXtSgYavS6VMuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAc+QivN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAc+QivN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6177C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736903153;
	bh=hSU5X01HCp2JqdGer7WUrUOdsGgDIYL5WStpRZlQFG4=;
	h=To:Subject:From:Date:From;
	b=pAc+QivN+s8TvXCwQFWVJgAHd6FnxY9jk1JJ2e/N83vdYvdrzCnQfVK7SNUE5EJwi
	 W3+FALNs3mbod8SOfFjYf2/9qJTSiV6MAU2JfvU6IGYBwY7xiGHbB5HCZSympKGPP1
	 LsanBzSn0il4WkQY4P68rJm1ZZzX33EBPZqngNXOl2HnjsjHfvWxKIb+/rDc7uDCKC
	 DFBrY1r/5oYPlECVYSr5HUMheVKwyZO8xa52w1F4va/Txyeg2lj86YoQ71nBbbuLue
	 KcLInUa++NKyMZ0lyJBPamKblA4ZdHdIHA3ZIQvndsUZe+CVFrjdfyekKQuFApAutj
	 3x6A/asqO86ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9301FE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690315359.18642.15946026964978565970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d0932faaaaccfe758200fd43968395a6553618b9e42b3d1a4c4a64660cbf57
Date: Wed, 15 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736903153
