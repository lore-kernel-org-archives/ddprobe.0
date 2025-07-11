Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E342AB4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752242394; cv=none; b=DyJIWRfqmkOuOHFqTEfieJRFVdb52+lg/8WMjbrQGkHHIWQ/OAVJNqPu/VU4kt438AXFusIeG2P1zVmyHEjGJDahgkFtl7SmM6Kk4ZcFNzkdMxNmOsyu3Vriez6W64Py9apr3KyxIiGFPQV1/hPvJNU1HjVZ0/397RRvn1a4AC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752242394; c=relaxed/simple;
	bh=GuJK4QO/CnxvhBt1hn3VCRO2kfljWgiSe1HYxbQJC0A=;
	h=To:Subject:From:Message-Id:Date; b=KbaR74VHyOLLmY5Frhn7IGzoK892j9ZwjRBydtkN4Upy+8FY1u7fNEpH8dx0xvZ2TILevPPB37KqFyjvbD414kthtbTeuRyWMmsMxFwZE5NbFNI+CjJS77WQ98bOxIYS4wVN4jzJLLIpOCgJQGZrGOitwDjmnceeHYzrXrdLDzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSj5CNDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSj5CNDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752242393;
	bh=GuJK4QO/CnxvhBt1hn3VCRO2kfljWgiSe1HYxbQJC0A=;
	h=To:Subject:From:Date:From;
	b=KSj5CNDl/AlexCUJyORcA8EkNiflIT4C1kYTOh8rOeXdNGF1uF9okqETQShkWzgh9
	 Rl/x3oS/OZ91hJ+PdaN8afVEa3Z9Mdm8aAASO0krJSmaaHj6kuYKd1R5+BfW9WUAFx
	 ZGtBuWwBEnHYWLj+IMF6ucGhEK1nbBHR4MobP1ZsyVl0nS0UVGFbIAqfi/Ux8O7UF6
	 7866jj/Atc+UYb8gJSSxqbZLya5/DxrAS/HTuJVk5lXxi2w30eT+ptFwFf3hON503E
	 GwIONYD4fCRHl6lh2rxQkkCTCtVAmVlaGeENjHqWNJX0x1GvzV4Ru1VvB2RTrJw9z+
	 rxD6RjTRxPp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B26C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224239358.30506.52073646262248891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d84efd3af55375400333a5d570b7219f3ab715f2b6585277aa06776de0f6740
Date: Fri, 11 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752242393
