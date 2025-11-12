Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD392459E7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958394; cv=none; b=WLKs9TCCgFSmdVvzLaA6qj5g67huLt5u9GTzpCaIkPFjO4i4fcpSQ6uU12i40HClIrC+ghk79Ct4Wzc3kc6QliemiMLX4OkUynfHEgRFiPkjdZj1in1chN2RCBQtgthrCDM2lwTN2xZ3ZZNSZ+E2ZVW0HfrDOsNgaq6Y/S1HatU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958394; c=relaxed/simple;
	bh=GDEGqHnlUAZJrh3b3YHHNYsWU0LvNWQir9btWKSG8j4=;
	h=To:Subject:From:Message-Id:Date; b=nBt1MFrTtkHQL5DVRLGM5l43fJUYVB3VIAYE7ZLGi7oDe35giPc3GQcYEK6fDIH5h8OWVyARI6Uk7C0LR5WyMRSkIGgfqDyF3tC4RruW5p5Aak7p1cIEIBImtwh0b0h0rZOZ9pCzL7J+3fo4Y4qaGujvj8VmoRKs343mD5fv4zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpAnOaqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpAnOaqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF26C19422
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762958393;
	bh=GDEGqHnlUAZJrh3b3YHHNYsWU0LvNWQir9btWKSG8j4=;
	h=To:Subject:From:Date:From;
	b=XpAnOaqj2ir3NAXW78oCixqowjgxBWcTOHjyhPg7keqZOlBKnBVbGw+upom9lCprZ
	 bvdwb4wouvHjr7DMpt79GzFITOuLk71rNiog/IFq2GTb1LeUF2Z8xbZLL6bOGGEtSI
	 VBotv8k4KBbjrh68w5D1jtk7ocoFQ1CJjApv0WZZnZr9DFIdlOPJ22IY+IxKcKBNMt
	 W+1IF5npIMGBQefdv6WsoPY8EKlPKB1VlzdYK1x3SeEuZwpvldwaCjmKgxgyqh0zuA
	 OQ0Wp8OOHIDPV2OWTDawsjk5FnNbqUKkJ5fegZKbKCnfg925CRvPlg8xSqa+6J1ms2
	 R044N/M4FIewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F116CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295839357.21456.11675947235278801377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ee9a14965e86d478d5243e6271a4d5d36215cc7535c1ed6e6284ed7e8a7c73
Date: Wed, 12 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762958393
