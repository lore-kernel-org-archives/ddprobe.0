Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6463630A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776697654; cv=none; b=BJtpHpUAZTIhmoiNQtujEj+/F1zCtW0f3OKX4NOGLy2mzaSmQurAQoLyn5q3H8ObFnGNBnSL8TvaiwzOie1QKX0YLOp+4XEK3ZNSFBKb/p1FsfBmbNLlqR0WvcHIoRm/UHQY5r7mHkC4X4UZ5Cy6VahjRVZ4w9UvSlPfiyyk0i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776697654; c=relaxed/simple;
	bh=Ir2ZpNFHk1iHsTv5UK5BBTQSdi77YlurcKl3Q1JwbmQ=;
	h=To:Subject:From:Message-Id:Date; b=p4wQy6VaotpDgPt3VlWmKNE7PkPWEAE1u2M6aqIobk6oidpC5NBSdCDxujlSZS9gHi8s2z2cs9NEnYSC0/CYcK2NkMLqOr/xQbEt/so+2T3lRxl+y/WbVsA9qTmn00l7nGinth1i49gKAzugqwSSg0fl1Gi6SB4qN8KwL7MyH18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFfr/e6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFfr/e6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDA5C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776697653;
	bh=Ir2ZpNFHk1iHsTv5UK5BBTQSdi77YlurcKl3Q1JwbmQ=;
	h=To:Subject:From:Date:From;
	b=sFfr/e6DDG7T6oPdqcgoOh4zj3Wma3aGODVuGido7KKZ8c8zqisUeUr5yvgdYLdEJ
	 krBYs5tNRme37zgufsHDoFljKFSGyPets4uxBmyic/y4aAVrkYRmKnHBSum1x7SJB+
	 v4DD5ksAo9JBIOkVS00lxqdSaJb9iVJD95IMNln94Y1/q6dClwcRTR8Jsyc61/E8R0
	 X33CwY1bGUHgWggBaSmYKHeZdegBPCP8+m6BxpnZtbe7aWDd0ItgK2OeugL3X5OPG6
	 Iza0l46gBlaWTKrfQFX2hg1tOMX8S5lahCTurWEF8x8m7EKQXlrBghy1xxjt6HMZLb
	 X1oZTtW4501PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED5F588E4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669765368.1407.15319837322806043524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e04dfda68f81b82c16d031bc8861d4471ed8efd46ae99dc8ba80ef813a941b4
Date: Mon, 20 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776697653
