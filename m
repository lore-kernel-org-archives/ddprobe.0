Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5C534750D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789009834; cv=none; b=Q+mei8z27vEhER9k36K+LfpQxWvD9BUCx3Tg9/1w0z2eondteq4Dn5YLzrzvhjtEzq9/P5T1pj5GxvnXWo4iyWo4gbcmAvjzkA4/VMSA+xG1cuzkIU4pRsPgnuBWMm6iyNcFqq3yFvZP5qObIuVuLhIRBcgmcZt0HV7AImucy5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789009834; c=relaxed/simple;
	bh=lhmA0q1z79W/pNzMEgQQ0gxrBzDadBFlMu/sDow5gpQ=;
	h=To:Subject:From:Message-Id:Date; b=YwICydJ2rgzL7DALWfzotyMkwx6mYYUgdzOq9Ya3VgmY3GyBXCCmrmZ15h1bQYhyKP1Uy2lPuntyq7dAILgJM96J20EqPrTnESi91FOxPtX0s14NvwuNZBudLaHo7RkboDjAQSaKX+68+C6a4WXRkOPmf6KDGcsAmAnPCFsT2ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYMh4Rd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYMh4Rd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEE5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789009833;
	bh=lhmA0q1z79W/pNzMEgQQ0gxrBzDadBFlMu/sDow5gpQ=;
	h=To:Subject:From:Date:From;
	b=ZYMh4Rd1IiJpjkN/AfShGhDklIDKfknVq1CWmijiYimoX9IiS87oDAePByBUXmhxq
	 RTYkOEqFk/PKmEoi1+6/l4jPw24xt3i4dSphseuz8tfCI1K9OeRHosySKgiKuawgXq
	 Lc6AfcmobxX8EUxrhZSw+/7FeJnpdSnZ5RJeOek7z1j5LCuLuL3MUsJDzbpLnRqNBS
	 ZU/zUmqvmHyuVUgvHN7etJQD5v50UkIR7ds98WX0nL/LPDfk8rtNRoZjAf61B6wIQY
	 o0LpP+cG5PxnLMXYnkW1EFxK8T19ZYf7En+xIRNIoHe+QpRkxmpTpWQUsbWMIsoOrg
	 dNzqPR8H2PK7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA5C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900983368.18509.18064366102613480499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e5f45a9aa3cccb95261eb3b192c172e8a980ea7e540209fee821506a2f5629
Date: Thu, 10 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789009833
