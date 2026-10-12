Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4641F372EC1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791792634; cv=none; b=RFZP4VIXOSZqyGlegfQo+XCMOrDrLpRcjWjgLozVqVscZuQSnjEhpxctIFz1iXAtneV6C7hV9L4r//Vc7/VANXcz1q5cNZMjof3uZW2GkL2ifN+2Bjdi4R4Q+U/r3O34RPWn2TQrZLrq6vxzxWlMV1QjSmoJJxm0p5J3wBY0dzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791792634; c=relaxed/simple;
	bh=XvEuB5PKv3bJp/Yl9FudAnGmpwLB83A9zhvhtse41Qs=;
	h=To:Subject:From:Message-Id:Date; b=drBe4dXicOrDBGMyu6FOu/3kUl/tcWxQWh+Jg03Q+U04g2nGE7eUiTRDcpscq2oCQa/rHmmDxp57WQ5BS9B5Uw7nhspXbqDWdrcywWyKYv5YgZp6CBoEI4Z13WDO+jqDSGMEPwungO5+lgKY+LNfsCXTVOeCp7XKrNlTxx2DVpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiASVv52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiASVv52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB79DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791792633;
	bh=XvEuB5PKv3bJp/Yl9FudAnGmpwLB83A9zhvhtse41Qs=;
	h=To:Subject:From:Date:From;
	b=ZiASVv52Qv/R8HH7R50pXhjzUqctaxxIZe8ORG/MwtkdLLP25R2vSLVdAy3AUUEeq
	 uy3Yg8hTPQAp9yssXcevgFtQAIj3BfBIju9lvpgcN1/KtvhH1qYAXc996oBCiSpYuu
	 zIXP/6Z5NxlISMHhOWie1kh0V4MJY4p0JsU0TfYT9yS02RheyOp0EhPCqEDu2YvZMx
	 sanYYKY+jY4eXaLqLWQWrm+iJwx/0jZKPYGXvnRfvMaQHUnM6k/7qpqFX9kXFtMZ/e
	 kEs1U0XaO9tEyFM8Aog4UIFLeESVmIbPTySr+iD2VlcS0D+OlcQL1qH1J66vcwhpXD
	 +oZRBrSJB07OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D9CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179263369.5973.11536433602710193268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b7e27e4ef515bac05581a57c540ecdd38e43ed15a3a0b306ceeab5f7765ccf
Date: Mon, 12 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791792633
