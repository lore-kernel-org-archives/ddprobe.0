Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F92222CC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776147454; cv=none; b=Dutlof1p4TbrSFJDMJCdtf0x/f5ARhJB1E8oSMkizUxVzqyxnLPs0fddTxHnez30Tay2a6OfxLNr3XVuYwPa1n6uJiqnPo42cMoT2TJClFNl9DiUq1B9T7NjEEteUHDP4TT+9fTBIH86AePD05oo5bbR8PEwUwahcUXBfka/aa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776147454; c=relaxed/simple;
	bh=D6kHCcFY32C1yZdY3OBfbfJuUQatBhqtl6uy8iFUy2I=;
	h=To:Subject:From:Message-Id:Date; b=p8tOdRRMDMwFpTZ6zXvlEHfJdeOeVxhlzjGKdmq+F9srNr4BjIhnVFRwfiWHatZ50/M7PvIaxRcZkifVDOucwBcu6sd6VkpFC/Ae8w8+EPkPCeyVjq296Iwjsy4xe9WDKEORoYqnj3jPKvoULiNE2Z++Qmf7918RZxQVa3axW9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojzei/Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojzei/Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC71EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776147453;
	bh=D6kHCcFY32C1yZdY3OBfbfJuUQatBhqtl6uy8iFUy2I=;
	h=To:Subject:From:Date:From;
	b=ojzei/ViEYWxFHqCW3I+q4GH94N58rFVj0U8P2sfct6jE1Tu6neX7tu8EOf0CGQVD
	 VD1/8pQtD7UTiG760n8cQQeijEDAr4IdNObj5m8DpWIpzFFniQ8ZznNEyxA9oh9xN2
	 GR+HgdBNG8RohRLrEdxXjpHDXiH5fkMmV5AZkUCg+cCRFdgn/diimiL0qWxIcEMK3J
	 DVGX0Qfisro22oB7riaEkPa7lVv9DQUei146OI/4GUqVjjZY/LbNl0Z9eNsoWnHnUT
	 1ZDVvYJDfOZgmi8brsLdX3FLT5BcfSsrL689dLNL3haVJUregpUkf3ZCE2j6L/pLtF
	 fo0sGlnCtjAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD4F531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614745368.20819.4159252360442865439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d604677aa3adf873869301f9e5325148744545c6c8ef7495755481f1e03cef6d
Date: Tue, 14 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776147453
