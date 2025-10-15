Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189A822156A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760562594; cv=none; b=MCxwfXeN4/GOS7vS13GYD+pEYVzQ9ls7EZntkJ+qbG7CqQ/NXYFLwUZO4o9o42a4LQOXS/MFZ/9Pg0uFSnwfjAD6FEFoYAkCdIfbQJQ/q4W252ybtpjdcLLd87CAik86/D7RvJcr9Li37wuVZ6hwrTdOktyDx7Dz+3O2b2CNjo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760562594; c=relaxed/simple;
	bh=lUGJe17Pi1I6Ba9A262UoA1SCN2fUj7V3sEjJZ18IEc=;
	h=To:Subject:From:Message-Id:Date; b=UQowGQD9LyIBA1iv0NqItE2AklNUVs16tc6LA+TDjTE/I+VAwms6aNQSbWCEnzr3XqJwtbSswGPI01v0BVlOrHEzXzlMeAs0WxQGNUXEkBoMuXXKQiiyTaKXWMGmhpOMoShkvW9zo0QRF/zZ8hUH19Ja6/tOD6xPzLjdQIhr+t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5jmduhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5jmduhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8511C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760562593;
	bh=lUGJe17Pi1I6Ba9A262UoA1SCN2fUj7V3sEjJZ18IEc=;
	h=To:Subject:From:Date:From;
	b=P5jmduhk0mekgqxErIcA96Tv6Tm9vpw4X9QbqCG6JBs6nZlW5EMP30+0IgDXJO77i
	 9YEI6Lm147fcRbaZRb5tJWqIWcu91uob1Fw5JAi2v6QegmzuephvINwjh7LHey49r2
	 sqG38F7xikeKaLepwUoGw6f/MuHVWOkrroZuV6ZHq3heveUHLMiQ72KszrhcCCrZI7
	 UWXNDJzA3vlPwarXk9iETAbyFLo4wA2tMgKPhwUbRQOs5bU4wbSXPB1nmhVeukuW3H
	 y5a4bhnUqiz+nuD2Xc62fTo5TXdvY4u60gx4+9/edgemGwptCED1+B1uXcghfL6tn6
	 xoz0B6YZW3/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C1CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056259358.27763.806188972949837008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e37740dc23c8a16a061a62d351e99046860153be38173ac19e0fa7ca14a127f
Date: Wed, 15 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760562593
