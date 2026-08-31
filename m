Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EB92E7369
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788201634; cv=none; b=AvgIEzw+sP//ezJ8QY1sKE2a7bXOEId4FTLLIFMn8E3PUPD3jFQj6TDG6VcVmO0qfU72JT75rU8Mf9XxaohUD7ryEBHInRjj8XcyeJvW4WQgss46XfsfDIVIKmokvjNdDjYNngtPLxDkg4zlKN6L1pF8g0b3YsLclbYDEUATiao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788201634; c=relaxed/simple;
	bh=OMYvWxES6a1nGUjpVN+moGFJyoyOXo/SrlOj2MC9m1Q=;
	h=To:Subject:From:Message-Id:Date; b=thnuLbGphGex/ZhztNYni7Mllkyv4nH0+NZYDSrcgiVSwzY+FqoVWGmtP38J8OugWspN47YbAE9d2E6FLlzL96QarrDiB4RBVNluQU/No9aq34ug+DsMLqC2gkcfhLXfe8DndQnsEstoXpi1rTQqtzEyAx9/V/8BHRCLXA27p1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VohFa6xE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VohFa6xE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECE9CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788201634;
	bh=OMYvWxES6a1nGUjpVN+moGFJyoyOXo/SrlOj2MC9m1Q=;
	h=To:Subject:From:Date:From;
	b=VohFa6xE/Q4cQdXOXwgjdSxJrvpqSkkh/sEF2YQqWW+PwNuyDljtvn1b/iXGb7tCk
	 OVHM4WVAE/RifjGFcJSmxw47YXvA31rdn3C5+HCQdyGWfmk/E6joWdkm8Yt25lshCy
	 igmTUIkfEC6XqPTHCZ49GoE1uyJzaqIrrvHX7y085MDqO6/FZpdPUnusON0NbBoQ6+
	 +raxDEbJ/lLZTjyXzBoNEgyvnO9J+0wjRL5ziY7YEtDGf9WKo56M+BCABHZZiGEIcT
	 jGFTcKpCvTCkn4YKrcSxk6ab1x8SvYQbluBN7B2fhMaFkm/fDO29zWL7t9oOT8EHvH
	 2faUuIw9N53yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71C9C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820163380.22535.8172361692824967740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485b67a0d00b9aef6a194b077cbd3ed7d7152bbd9f01f48f9e1287b720a24eae
Date: Mon, 31 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788201633
