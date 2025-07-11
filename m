Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E024AB665
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752275994; cv=none; b=tsJ+Lj2vp1fdTPbX1QfFWkrUS2oR0Og6lSMrVQfUEqYlDFXqimNGN4M0Ib1FEGusxlQU/qxqoo444E2Gl6pZnQ/+O5KHcLnXxZQnDVE0d31YbgXdrZfTI+JyNaSGk62kiU9mx34w0M5TwYfdv6qpLDfIH0J1ykCXkGEpnXGa9us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752275994; c=relaxed/simple;
	bh=iJP9UKytkTDWlyHmfL1O3AxJixqwwbP4sLQ5fsJJgxw=;
	h=To:Subject:From:Message-Id:Date; b=J+OhUCWak6U2mp7qDiihaDVu17vxPa+EIc1Zrvc/j7nPcPSmBjHML6OWRsGFlzDCvVQ8YGNlrS95Kr8EYGvfppsAiQqdd/OX7JQWazoifmme/Nmh1lNKBHx55YyxmTcGGDG81kZEgPPNTJktfvMxy6VcZ5mYDtXeXlbRV1j06QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en1/kJyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en1/kJyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E080C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752275993;
	bh=iJP9UKytkTDWlyHmfL1O3AxJixqwwbP4sLQ5fsJJgxw=;
	h=To:Subject:From:Date:From;
	b=en1/kJygeVj+TYRNuLr8PkvEx2pjEuPiT9ojaRKgbzfxTScfzyygGnAaWYRdquc0x
	 piUPfkkLlWf0Y2bttKuWwoP4wrstZMf2JgUB6awvyhP1vGIb20wg78Z2JbWbwZObgp
	 3TGsQcVsH8WfD1pP7VNryUb8kiWrni5KM2dPPnT2c7MnSE+t8uGYALJZsUK/0yMMjP
	 jtPWIHujiyVjPFBsAPeh8WYSkvoY8Y4onAHPUZXD+C33RNLUbUYJAJrhC3ZgmQMWxV
	 Aels0UaqKusn+t4B7apngPxkLhqM6oPmrG037LLmFiuaFLelLRBzUd5c4POU8CB+on
	 TTntsgj6wQdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B38C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227599358.23853.10728379134043386346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d73e72422dc833d0dd383fffc506f2012c90f0c0f6718d6f743ec609fbf415
Date: Fri, 11 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752275993
