Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7BD49D59F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789661434; cv=none; b=ZJPzL01b5KtLSYpphpU1W9VvyGYclVdjJe+ptKKSFDq0IqZveM8kcVw0fQs6o09gIReM+TWszljZlXTeTEVWJoPGZZuRRn5pAFpM8FmRLxgJwgV9kl527Xw288CbFvp4thUGdlQncN8TghaAYNCKIFgaRw3STyEQQyfQb2+AIS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789661434; c=relaxed/simple;
	bh=kZGfU1USZYvzkm6T/855AHDutM4id/3FRBREfOiwvDc=;
	h=To:Subject:From:Message-Id:Date; b=t2dQBDLb6zd1/HakgD6oWgu04t9J/ZZjiafcTDrR3d/PrXJcT98meWCcDdmQC+oLAsDRvXre2rJZdhLoIHeHG96OnxlMVw3dYsILseAHsBO9n+k76ZOL9C6K1NFnyqRZvi7SqCd+FOBw1kYTrltH0cHJBYrhsicgTdez0eKmbhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt8Xs2yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt8Xs2yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789661433;
	bh=kZGfU1USZYvzkm6T/855AHDutM4id/3FRBREfOiwvDc=;
	h=To:Subject:From:Date:From;
	b=lt8Xs2yjN4AMjMRAUy4EW65yMWhmKamGlp87H05mjFeOsmBkbOB0imVWtn0CAa23o
	 6SttBi/PU5DC9tTROGHANTMGBI4kuIDwdpvAUn/rHVnPTKSzjJlHNpQVY1bIZ2HhOG
	 uARbqceyAVUUK5pxi9ahZoxhGlba7qQ90SOKBr41GmEjUlukAhJ/iEuislVYpm7/w6
	 A98wy2dtHGZCr9fQ/aDH9QW4hLOgJWkqJ+EiU/N+XXQWV67tXcS2wZhFNwOVAemhtW
	 uuql760FEbnrKz519s2p+EZFU5Xvdk/xNHPauhdLQBsApZYv3LoYo2IgfUlwhl69BW
	 JFa/oomqq2buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC888C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966143369.15125.11847729337348210342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5f1b58047f25697878b21757c526021668669a98868022126d36480d59f886
Date: Thu, 17 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789661433
