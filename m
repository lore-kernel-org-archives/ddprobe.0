Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F4C443E47
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787917834; cv=none; b=oi9IGGCge0siGEGnJBwGDJoFH3mQ1ZjfODnq3WUxz76/Cw3Q+TB5sJ2af69hZiSkFBBYJEnhqQ4ZlQ0cCPojVnqy2gunkDgfOlp2HJkwO/te6l/vMgBJsNAzimWM8657qYXcMUcQHuJBtnyvmWd1LR/MudZNZBGWurFst8vaUaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787917834; c=relaxed/simple;
	bh=vkbXnWd5DBN7OH8vQvEjQB1Y9kOIIsiGEBQsr4vTbrU=;
	h=To:Subject:From:Message-Id:Date; b=UOi2o8MoMmJw1L9sU+kWzX+GD5kNAddPZ5tStkWgk0jpfy1jwmJ8DOrnv3V72E5fUSsqbvXt7VldsBVqMAW2Bhsd6rf6PVGmzzRkzn4q84fawXDQWfejojkJBL+u3dmN/Bn7WAPb9NbxvkZBnp77h+qrq7NOzbVe4DyxSycFa6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwBNMo/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwBNMo/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D067DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787917833;
	bh=vkbXnWd5DBN7OH8vQvEjQB1Y9kOIIsiGEBQsr4vTbrU=;
	h=To:Subject:From:Date:From;
	b=VwBNMo/HiCesuJt4DLCArThoLeohFghh+umpHRR/8QOGrz04l9jL13IFuIy27fkkk
	 kZ0VAQMrIA7vHP5tfTyTRqUAmL3Ep6XkpG81XWs4il/hl7N+Ayndm78YjEkuQprUdJ
	 v3e5TjXSkfmAedhvDCyB4DeKM3z22aLcCZMpeJSJz+FzBNV+VQU5blU2C9w3BbmiM4
	 LQQb7bmSTgkWKngsjESNRcIbB2AvRcYgySj93r4WVmQ4u8jpEXZ6lyz9+APJx7jL3C
	 jAMRGac8vti3gkSn/rqLufFeJThtSbWMjjuKEofkBTVXQF0UIe8Bk1Gyht2BaZsKi1
	 AaC3fYCsnTLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC38DC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791783369.12325.6806553291728649170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c51d20e238ae97014e87ac4bf0382a15232fe0b8c53a7f61133b2a4be2bc2a
Date: Fri, 28 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787917833
