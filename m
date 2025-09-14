Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D5CEEBD
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757819994; cv=none; b=Pw7jmkpMXbgdSemX9ZjStDCD+7JQ2TUt3SvV3AkLZ6Ks4LrRIZNYvjXx78nH74UNesvwxwJR3sYRBwX5wuV8pONm3A55nbbOY6WIFllTiB5sENX758WijWNsGNxsxq2Z5HtCe4LhEPrwEXIaH+ULgvJaSWLWMZ0BteqaT9yU61U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757819994; c=relaxed/simple;
	bh=FfF+k1gf39+b+OFGBtuRVEQ6WBqBL6G45b+6xDTWF68=;
	h=To:Subject:From:Message-Id:Date; b=Aazns9hXbrzVTXPsRQFZau1lhUu6F5hwC8uVY+8WF31hoP+fUIkb1NOm3NXMRSlemTQw0QIeuCe/2N94yn21n2oKSOdY+ALuvYxdAeAyjQfXpNljeM5htTm0+DDac1jNiAV32vW14b5Q7OpMozEu2TmmOZ1nxX0KrjSa8u2ZwBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJeGtLvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJeGtLvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C46C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757819993;
	bh=FfF+k1gf39+b+OFGBtuRVEQ6WBqBL6G45b+6xDTWF68=;
	h=To:Subject:From:Date:From;
	b=JJeGtLvZX0x90mD9MCRnNMB0t0CFGomvnZp+qqt/LC7l6ko0kdVaCCOK94t+NOuz/
	 i/3BbrYd1xcAXQi7SyMF5/DqtnEFUiAZzU36CMIp5Fnsu1QrG9TIq9Cev7cwS5vjVh
	 pI8z+mgZE7oMb5GDoN8BA+xmB1oXVXv8ufA5LA3JXeZgvQaFu5KOl/zgwELYLZ9aU0
	 moLZEDmw7yT1oMNOoH8nkmyRNDcKkPQ5pFB+9CjqpfyNnHaNhq4XK4cad30o6iZ3tU
	 AnmwsyJh0mQ2gGx7CK3pyK7bpAK2EAoqp46kN1ohqT3LZqmsT44MxaAvI4+IefHBiJ
	 DaCotu+gs58RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273CCAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781999357.13484.5609129102316101360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c236932431f8a1f16c1aa6eefb813dd69f4f136c41ee2b965eb621edb414f4a
Date: Sun, 14 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757819993
