Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E1E3C07A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775787454; cv=none; b=DbA5dUvPOLOEI3267s1y2A5nHrCc3IckNhVPWkOuiHlybjz4eDx1vxTr+zaXPiGvyAZBoJUb2LqO1wgDg+l11EYeyY2GGrf9G/AF/iv9Vj8nUWhoub+K4pChQltPMeAmPuidwC80FUiLmgGho9tzbkfOONN1nBTjJW9dwLlDyz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775787454; c=relaxed/simple;
	bh=cbbPbqynoK8YxzULZvkScwmrP1lPxWuSEbjsNQ8+fbs=;
	h=To:Subject:From:Message-Id:Date; b=H461/QDLMwn8yBK25JKOMhUg3G2WNfr1tmlexOJnDaijqgKf8GrdrGv/oNuz9oBaJRnUlIOa1tBizk+1R0Xd/eQ89t+vSN3X4YqWq0ufknY+AzBc68JR+5BuwTJhgxA1wjd9vsccT7TZY4lvVuRcVK1vrnPAEIlDrB/9WFDmSSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3MtFfSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3MtFfSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC55BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775787453;
	bh=cbbPbqynoK8YxzULZvkScwmrP1lPxWuSEbjsNQ8+fbs=;
	h=To:Subject:From:Date:From;
	b=r3MtFfSLpCvA1wSz+Cte9uxnaCFYOaxOl663rkWA93ae/tYJJW4/InbycyqG5+P2j
	 hanWX9/ViMer8EI6/0dsb76psV8fKSS6HIQufw9RNgKl91J11ONuRBuKevBBJ7bWCf
	 gZ8+o+1C/6c47p18XAMo+duMsISR7G2S+xBFYb1Y2X/kETACYb7++PH+4/2q5sHFtf
	 hkyK7Mr/cVFk12UgOeh5G1RZQFuYUGtA8qIr+OsQJhnd9IOJC8osM77f7uVNbvcUYw
	 BdVSEkIxKN+EK2RopElaxAdOtzda6mNha8hvzRjO64t77Q1ErR9wsc0xMb39ouj2f8
	 fxYRiZ9KBXn1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A3F36B9F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578745368.25648.2124247593074761384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2406ae864f450088992310f9499b07a4246cf28875ea32201b52bce6dc66ca7
Date: Fri, 10 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775787453
