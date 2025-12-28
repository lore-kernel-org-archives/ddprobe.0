Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DB63A1E66
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766888034; cv=none; b=jj4MDVXU4drd04Mf9yyu6m1enWWe1Tf1y5tra0Infv73ymW2JvQpw4rB2HfJ0C87YcKPngHojte1SbcTfcUboP6G4boPRaW+LLv0yRKHkTGPQOvxP0zFEPhpgnt6z4uf0v2Oe1ehnhJrOmvVdWgRrd9mjP/CPz2dRZOlaZMocFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766888034; c=relaxed/simple;
	bh=rhZiz/3pCP39MoSh4qlPiT3DTIMwuq1uDiEMJww07kc=;
	h=To:Subject:From:Message-Id:Date; b=uN89EJKin+uJ3zKXTndcqCMrtK3LTDCzBR3d5IzLhoQ4crXZRpHYnFOQYjPKFVxBIh1ocP0RsIqN19W64/2VCa/qu0Cy2B5kkxFB4UsrMrctj6J5H6TAgpxZOivWurSLwbszKdYe6KahxaGNywqtOfx2txdPJOREXbWsYl8St9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mB379yGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mB379yGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D7DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766888033;
	bh=rhZiz/3pCP39MoSh4qlPiT3DTIMwuq1uDiEMJww07kc=;
	h=To:Subject:From:Date:From;
	b=mB379yGLfpnJrP9DzeLXbrujGc+HcZGslmYv8fqRrrpEbOdHnmemApO8rxy/pNwpt
	 TESmX10GtG5W25DPQBQZRPpGZ77gLOBGnC27HcfP+7+gjAVFJd9Qjl7JL5IJc3vW/M
	 kAjHno5uYFkLabUbd2oPGl8jRteZilmEE5I3KnYQZimxm6DIY3tO/fQQySwhsnts09
	 HBQX5+0yE1V3vMff1WMqe2l3E2EwzvfZXFE94Id5Hjfk+Fpy7rxMlnmKInZ2kANVPf
	 9uhNG8FnslKBxwPK85y0spdz+DdSqzvDXMJ+KlxCTDAEWW/+qZ3XNh8metbtzDsryn
	 DHWfFG/OD9dJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A8E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688803359.5879.3498887629772792169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f40b316b5454f5fb09ad6c4cbcc831f9ad7f33b6cee9d7776d4dd0b07f66c1
Date: Sun, 28 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766888033
