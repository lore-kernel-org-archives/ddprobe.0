Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67963246781
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785477634; cv=none; b=G6XOSneZog451QPI0pTZ2GzbMPRnupNE/9sW4DnXf4Ei0k5KxMEsSOgHYqVoLq5UGmCgpIjyrbz6t7NtW/WxR3ht1unB+WDwW/LT27r6FzSyfV5wi4hnuTL4VqdFAuesLvGB0FsHvRAWmcWWgxxK39mj8TaJuxBByqM7TiBizyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785477634; c=relaxed/simple;
	bh=//xznHsKDGNd1OMaEIuYk60J/fnYETcQYDH3L+Dp7vk=;
	h=To:Subject:From:Message-Id:Date; b=teikcDp1ZymUzDn+gYMzlBfIk3MMN91PvkmzNipSmNEV0GR47rDV/sgIfEY+t8qY6mjdS/ZiooXM4762647h85pdak61LGx/cT29Yn/hvFCws1hgiNfc2ZWrT3QpAARHitFxQM5q5PaXmkKWGBPsLHYO4beAuIBTxqcUyu8dUow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCGUL16c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCGUL16c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2FDC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785477633;
	bh=//xznHsKDGNd1OMaEIuYk60J/fnYETcQYDH3L+Dp7vk=;
	h=To:Subject:From:Date:From;
	b=oCGUL16cTuf1bhwQQywWq1VqkavbOt4mwNh8jdgBDkZRpBPQkhCog1e1cvjN4KahR
	 xfuqEr8dFLhRyq2xio5OrgbA1JBrwExjAmi1XWEGEj5MpdVjYekLUpKRdV06AOeGyC
	 wx1FGU+j+yd6aEoNq2S67Sk3eFBb7ESdR/gfNej9xB6Z/X/ew6ve8VOT3ehQSPWIOu
	 QvsBxqILzXB6SMEVO+wV4mNldqqxVhlALJA+PiOAxv0uV2eWlUvpL9whXyVhzcwsf4
	 5imOY6s04f/4pwswzjp2k+BrHJfpI7WWDQSe8EpwhjocURNU2zk0aUwVN4CtxAikvH
	 loEja26A651nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67FEC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547763373.26547.8867182904142719389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aab80f18cd832157b6cf9778dfe65d2a635e5fdee06c42dc74e00784be14219
Date: Fri, 31 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785477633
