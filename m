Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB919405C4F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778914834; cv=none; b=icmURWjJv/bnAEbi4HXIOazoPITs3OjyPbbNR6Jwzf3l0Rj1HSyUOg+uOfJS69rlrlDDsM/9+QPycYcZBdyaqjFItePKnLkAhieSb6/Cp5LQN/uqAWaVSf3f9K99wB/lsl7UeQF9eMll3rlAWqZdHHDLyqGCdVdBneqr4ySulhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778914834; c=relaxed/simple;
	bh=OK3JKOVi43rczNMVvNnG3lY8hDed45hUNJg0UDNiwgE=;
	h=To:Subject:From:Message-Id:Date; b=J0WH4zg5qJ+EfhFV7Rb+S4JevogTF+KBdIFJHcb96mFF2+jq8ZIyaOXcOO/mmQv8Pkg/TSR9ScKY35P2r7EgD/pqHZoNnbCgPNY3SiHbPjO+otxxz3vHy5ABJX9cfHBJdCUeiU0RtUDSgfBMAq4FNOwlUGtePTCnDI8WjfY6sfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPSOmBor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPSOmBor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4083C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778914833;
	bh=OK3JKOVi43rczNMVvNnG3lY8hDed45hUNJg0UDNiwgE=;
	h=To:Subject:From:Date:From;
	b=hPSOmBorgFjqqmupvajVQ/69WIDgs/VAfd47qN/ogOKb560iy9Oi1H8inC8Va6oAE
	 sCNXfLa39pO5GrR2a6HaW8PrfygE9IXPms4oIWZTHdW1LzwaVTtRC4BcYU74RNVGrB
	 o1meK2gSEsnt7amM+/rmZBJ9qk3vXxeACv2UHjPuBY+UiKP8IENQVRA1lsWENHkSMM
	 FpFdnRq0RUgOshpy8JoZi98RU78dQhzN8ZxYPZewK31kZ8RXKPxA3+mwSb5A535mGC
	 eB71detsww4CrDzio9rNz4yTY9XrkyrfvpxkKyrLTQlqeJ7aMahrf9Ne3ikjojpW8I
	 yovP/wJp7dFbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C25CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891483369.31136.1523856791087863219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4437b8ddd701d6e98101da0c42276a87dcf62bb07a127ac9dadf84c8a2c0b249
Date: Sat, 16 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778914833
