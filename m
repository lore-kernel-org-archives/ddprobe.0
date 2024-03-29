Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0089D39AD5
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711702697; cv=none; b=NHnPS/+J2I12dclaqhrCR+3kv3XmgazC/uscWFY3sn9NMXsn+xNUYHaJ2EktoKh7jYINzGtWOwPi4BpeiZ8alQ09sOIi9B+Y4+QXDS5gR8xKrGRgo/7x/6lFLQahY+jV42qf4NLoIkQqzfM7Xw1NPnFnsCK2zeTmjLpq/9gVVfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711702697; c=relaxed/simple;
	bh=lK8brHzv8FZcxbGoyk7aKxReYbKGz2bsxFgSh9u6ngk=;
	h=To:Subject:From:Message-Id:Date; b=B2mkf0fAYHQ7J5wSljKsCeg9rHIRH7+NsiBuJew66CIucx9rynyw4430qi7fxdApHswsGYfCHVx7lAPd6t5JcQsGDmKSvRJGmJkPLXgcZNH4P5Ugic3G/GRbGbnwd3h4udiNOGiLcK4+70L3mizBAHl1M5z8ltJDCgZ3h1VKIYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAlEwOV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAlEwOV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78117C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711702696;
	bh=lK8brHzv8FZcxbGoyk7aKxReYbKGz2bsxFgSh9u6ngk=;
	h=To:Subject:From:Date:From;
	b=XAlEwOV5hebWNhYVzxPwkVptwuR++alavbtAxDAcfxwnUiaaegP3FsZ8UR8OmXMOA
	 Sdia+YVN96+1AbEbek4M3j0NH0H5dwbzmjNo/ZXLJMslG3kKr3M1ZR6KmPZFXp+oNK
	 tVGX9915YGxtR9rms5v6c3G34H4xv+etcH+VlcVyWOuKxPymO2Ch3FNiu+cvc5eqU/
	 SU8gXckNxWNMXylKG/sWbDtIw4cyncbDSlrIM/sE3o3JZc6uLdiIiEgzgSBfFNCvHj
	 y51RLLjo5nup6WWXl7kXCM/BP02E0DAp1GFgvQEjieecmCUvzLeb1P8v2cyYqT158X
	 FRsByEerEPJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67670C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170269641.20641.17272927195056719500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c396372c896a514a033d0753d3faf76cbeaa9ed8a0b96c04eea6684064cd5fe4
Date: Fri, 29 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711702696
