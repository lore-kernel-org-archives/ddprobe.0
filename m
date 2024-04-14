Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6173F40BED
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713119963; cv=none; b=uI0IO8mESYoRFl1tojAAIeZghzwgNRxWa8+IvlIVHCMKhskwMnlVGL9WTh5LoDyPx2KfntC5YHUpS+cnS2DdCOtsvFuIWWbv+Gqb7Z4hFddKE5STq421Ee9VJyC88ZfkGtOT/90BO4oifptdYw4aGcbSzgP9ePBRFNPTs5BGhaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713119963; c=relaxed/simple;
	bh=CEaMWERgwIGZNek48hRBmCLLICJy18Tt48CzI/2Gn0g=;
	h=To:Subject:From:Message-Id:Date; b=TFFIDPFiA/7ubb2ryQ9CPbME0YZvPGtaJuoWdYu4fNKIbinmBBycgUr0P9W4TKm9lr2bFsjhicpAzbN0PBTrM0p8/St3PZM5ipV6F9wQiB7f8Osyx1X/Or5J9/X/9HS+//wFSOJe3fD1o5sOWa+EPv6MN14IM75u02L4xzScFjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duAjWHsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duAjWHsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC37BC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713119962;
	bh=CEaMWERgwIGZNek48hRBmCLLICJy18Tt48CzI/2Gn0g=;
	h=To:Subject:From:Date:From;
	b=duAjWHsYc7FIqzXYN5GaoaAA44RTYCtL6XgQ423b+YZmrJLU3qdr7Gau3gDyqfS4m
	 JqmbbJvhrUK30J/aiX/eQiETkg4GiPjnZIi85V6BiaCrsszaMrlQU71bRENqUFtEiO
	 wUOst6QTfZofdL4tFADW8OMKJfWY90CKFklDmuWcI1etSr5fXx2ajx9dh1dv62IjZz
	 yNiGJmuH5bCE35dty30LmWsnaaeXC5RMs62rdl/HwiN7mZsuSbm59M79aQWvlxYSc+
	 Sm6x2ihcbZENgRIKnss8Ssqwxx00ZzPHFKnHAR3UsUZHPGxK2EEnTY+YG7tedHYUc5
	 WCrPo5wdihoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A1BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311996275.5341.8821190005047695203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576726d248d62beee530f19867b86075f8e1cea3e555f49902ad7f72a71ea35c
Date: Sun, 14 Apr 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713119962
