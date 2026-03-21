Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AFC239099
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774097094; cv=none; b=ijKIIaVqKnkIKgNId2gNJ+csgll1avuO6HJLYqUG0UFoAckfl+W84N3XYqU4cve0OhecBU4ZFUwL2xOef0z44VTaedyx52Yfjw8HA6rJQ7PS33b2OYWc8qXKhUSINtyXIE5tBxWhlqL092n7uSNVVbtCLsnIFLbPFze5CLrXowI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774097094; c=relaxed/simple;
	bh=SVebj+f+1Fbp0jU5369gnrHxlSb5pJw4ZElzz85Tmf0=;
	h=To:Subject:From:Message-Id:Date; b=dobGa4nlwJNuC+lqB2Yl2Mp1l3VAJLPGar2wDeCg0IlO7FTKidwQ2JI5b/ZNRTJTOLc0YaFgYCL5o9oQlB5mYHgu3Nf2U6xmbyeu02/PWKWFlwGoieNqobdth4U4UN2dunBA/YY05q6rkl/KYBDUrUMfkxIrfZNfRDzOISMKRDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tctgtVAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tctgtVAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C930C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774097093;
	bh=SVebj+f+1Fbp0jU5369gnrHxlSb5pJw4ZElzz85Tmf0=;
	h=To:Subject:From:Date:From;
	b=tctgtVADL8sZYztaWH39qjeDI3b7cxP9pusv1PaFheomlbTYdvpxW32LyqCU18v6e
	 uPR4w2T4EcQn9Zfm80rEgmhLMcyRnG9OmolJ0+LFayQmboOtL4Yp2FCcqoRVGH957N
	 +F3m02jJb+pU7wnmLY7G53hlXPzbG713yrGnl7Xua/z369gY0f3BrpL+6/9VfvvwWi
	 s5NQPnwt/eRelqQP6bGlKP0NbAaLesiwWi+rc231E2XWqttxE04n7ZWfCv229X5pQX
	 wIK5y9LynD1cn5Y45hiuqZ+Gg0exc2b59bNxtAuSuxorBNq2Ouinznyj3DV9MuRFAS
	 h06un9o6uRp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA01094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409709357.24244.541459615415028315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec54c87ddaae8e0524e3515a4f578d8b0852a720d43589feee0349487300446
Date: Sat, 21 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774097093
