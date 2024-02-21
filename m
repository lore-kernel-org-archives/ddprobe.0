Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A28039FCC
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708493297; cv=none; b=cHoRDFNXL2HoNl4ATm+ByapsnER9sIqpibBYvk2beIscqjo9bWHc4VQvHJMEpqSMgOb4NYOOElWMVaePElTi/0Jlr/i3iAvZgbSNTjqZBCfA/PkM9A4X5F4ghQnZeQ2/9+oTCbfKaM04z4iymPwBgaBMatUZFYMEP63J/MX9WJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708493297; c=relaxed/simple;
	bh=zW4JBWtv1jT46AKGLcoHB2cMjt7oSI5ahE6Kgm0ccX0=;
	h=To:Subject:From:Message-Id:Date; b=Hd3+FvSxfxVQe+NBRtG+ii7I0/W0Iq+vkrxpaYSDDJ5BeFbKvr8Uvz1r3Yfb0l5dbSZqyWOwDDAkIGGOrhJf5b1CXGxjtm85aUzChU7jTNUGVZ2QX1lVdOljXHVULtDWEK6DgPcXkqzq0XOB4Wnh3zxMX2OKDuwybc/QVnWcwwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F16d/u9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F16d/u9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832BCC43394
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708493296;
	bh=zW4JBWtv1jT46AKGLcoHB2cMjt7oSI5ahE6Kgm0ccX0=;
	h=To:Subject:From:Date:From;
	b=F16d/u9AwAIUC20AX2+Vn1FOcXuwDQQGX5eFceXa555F8Cpb2TZ5Ld3EE+3Z8tWy4
	 LIa34FTy74YuZWCJgiSX/qy36Vh6j6KhcB73sgFKoHsUZOqHV6KDPEQ3aAr5TVFL+g
	 Epng6b3Bn7JoZc9R4EazWaIjOP8gX5dhE0UJAjhLU6fuahbLFrwx7OVohHeSzXQO7j
	 JTNH1qxXoDaDWThCJbchiJqNzV96G4C3tX2X7GSObT8FsfYDlmS/YfYj/6vIv+3GqL
	 VNNghhiZLtVFR0ehNET+zjhAaDqW34ZNgQG5ggDQbmW3sheL69r842QjDh5b8YpfL7
	 8Q8Too5MNUHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673A4C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170849329641.24336.5409508246860212914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdbb598c6af73b20a23a4e046bfb24530f8c26188b14bb9cda246988e7ec8cc
Date: Wed, 21 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708493296
