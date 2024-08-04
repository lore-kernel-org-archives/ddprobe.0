Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F1A95B
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722792354; cv=none; b=hEhbcgiBnAlt+ApFaBvC6hkwnv/zxJXTHbqakDozeToErjyVscqKxlFjPwo4vW570VJc/ZkoeWY3jaKNVhR+u1tsW7dKvYTqGYbNba9LpxJgbz47dsZOGQ0nLQtMMtnGZf3Yr586AP2sH3KniSNbwWdqQzpQr6mBkrjNEcT1JUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722792354; c=relaxed/simple;
	bh=UZMCxfRRu9ZstkBysrqfxVGuhgPesVjuzwDXvf2VvSw=;
	h=To:Subject:From:Message-Id:Date; b=bhC6OOHY1If83JFkLzIPTX2GERK8jrCFNsROZyiFw/fr425fgCrfR6/lfvH0z9+NhT2CFcz1OO36/tIKKhTJ74+cdIiS71XlnguJHvd9uO6cVtbc9/2+vyoZXudV/MeJ9bD3ZZ+zzB51T7l4ZJFmin6DEcKsgQsYPfwlRh53Z68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G812LgpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G812LgpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B0C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722792353;
	bh=UZMCxfRRu9ZstkBysrqfxVGuhgPesVjuzwDXvf2VvSw=;
	h=To:Subject:From:Date:From;
	b=G812LgpN6BGXVO5PtWmLvkejX1UPO4EWamJ92wTEZKqPBoOJWWFo4u6QD+JaOOH3+
	 dbSYhNenpmU+r1KwS0lJVrVGmp3zeUznyp/WOIOWnFAa2sjH/c6dhJwiWe+HkGT6Xn
	 Uw+10oP9EdMtxUvaJ7l/+7uPtVHjubB01+KhOF79hfK+E9pQ1qkpRxUf1oXc/NOb/t
	 w5iIpcwiQHGaHgPR8Wds3uKaNN/+nAbYPDaaIxUCEYmZkITXyoMf/dZyb6mMFy66HH
	 eMb2XmI2Wm2iDXf620y011zGtMOZyYD1TfP+Iyn5qFynBoLB2MCdWKwq5HxEVV1PVm
	 La/PeJfsLHZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B9FC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279235361.3411.9257811449222762346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5efc305bf579d33ab116c6af4afbdec0be836c4d5c024c7b09d114d7ca864b8
Date: Sun, 04 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722792353
