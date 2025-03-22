Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5694CAD5E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742608794; cv=none; b=t47cxn1B6cdm3YcGr10mpxiJhglzgTVtZ78MvffFQqVr3AimaY8au9EnijU/8sAiND4/bi94gRTFX/vEuAVoSritl5bvwQuWenvE2eCYzyyZ+03BwbQfxy7RtNIdRNPA1gMPuG6j8V1u/lQUbmVhcSaBon18W1H10gvA5kBqQx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742608794; c=relaxed/simple;
	bh=DUr3bDfPPKJr/Ve549pIlNHCXOsPZR3bn51e5/dL/fY=;
	h=To:Subject:From:Message-Id:Date; b=aCrGg20VHnxDNOOE4YWHd7rrRe9tGQV5wbbbiM+tNrxxYI4DNnKsh7y5fgFhISilFtSN95CHJpZxqkq0FgqmMbTqddZqgzW6R+QU/gJrflK94Slf67x+wK6t17eXPtBKnm7n5OGdsTsI2b4kmkJmBktGjFvkItcI24lIfE4CBzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsDsJK/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsDsJK/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4286C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742608793;
	bh=DUr3bDfPPKJr/Ve549pIlNHCXOsPZR3bn51e5/dL/fY=;
	h=To:Subject:From:Date:From;
	b=UsDsJK/RzZjsiy/e7aYwvzMo0B1Ifxblv1v/AYWzkva2ICQhrSWXwF8apPG1FHG48
	 Pkt9R9YjNd0onHDQ+buLVtP7Y+EwGgAtIXVUiC85j1RvAlON38AY4vZgaYnTgrAtSj
	 og/IVwY176FT8HEjJyzdmuFnzegtsYSXdBQq7BhmUaI6bXtR8shZjvIH7QiYd0cdEN
	 68aJFZSxKxGUu1VOs3jqh7DzlXXiI2RWAunZUeu1wCLc6+nwML0DtCX8KUyqj6M+5I
	 EYYA/mwtVnETS8GvrUDnllj0PRFkxl0TCKN6smgLAnnfx/Or0Nnwxoy9Mr4U+qhZrO
	 S62aJKZhFuHIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB649C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260879366.1025.10481781061405951748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c886bf4c6528a0aba7089887eaf65fbe3eee36a0ba89a64d8ec94f7fffc01c19
Date: Sat, 22 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742608793
