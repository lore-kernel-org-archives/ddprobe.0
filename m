Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9D412FF69
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788655234; cv=none; b=q93sLj9cJEeKs74WWcM3mfRsuqyX2xBJbSRoY8mwrlsbAUKEwz7/JcwqkWeaTvRQCPIabW/gw4sm/uih+dXsskKGoA7/r4xdmBH46y241xiyGFz7qrPevTeOYnKTlh1uGKnu5KpRbOZ/v+FHbnHfIGHN3xRYZhr+ez7ogD1fglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788655234; c=relaxed/simple;
	bh=QxVUNlZWPO0dwBn1Ol8Zkp+nlLv3ReDzZJelN+9jLto=;
	h=To:Subject:From:Message-Id:Date; b=uqfWrkdG/qg5/7wxb+2EJge3AuE2vR2ehmmIJyMjQx9QQ7MYd38MM3RcnpAw/iTYUweqS7VEMzDfnCSOp6rjWmskENoCSpjmpSyJbK5Y6aK4U6fj8NBZ06/B8w5J9CldsvmimeGAY+6TxoLMHFCMCmaxmsWZIbZfeozjWneBvbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouaY6bRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouaY6bRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3095C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788655233;
	bh=QxVUNlZWPO0dwBn1Ol8Zkp+nlLv3ReDzZJelN+9jLto=;
	h=To:Subject:From:Date:From;
	b=ouaY6bRQhb9bTfuHlE7qkdO7lLjZcU8OZ46gJA/qsCuS85LiVocVW66Wu8WxziVFf
	 Y1geMebWEFlX27zZZ2A3AzzCl6k2BG1NXILMtSDx8SvWzxzyHyEwLGoJ4hZ6DeINtx
	 j0BhQe02Nqry83hE2+oJCui97gaemfwExaW9aQNQFxU5o/Ra75J+RAlb3d/sUIOkWa
	 NsrDvL/629y5RxGOtZek//at39PDwr3xxwo7HEVbqAIIwELhctzqnOWTpqXAs9U8Pq
	 486pnsoTo30HHp40NgY2LVT8w/PD8ti2IUXeuYLN4jTJTZUdSIgvWrtJauaNlTWehL
	 Qs05YE3TkCDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D9C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865523369.29749.10645687108958558279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52a69acaa930a9fe4159a23b1866204500b01e74f52c97347f4c28c4b66eb3c
Date: Sun, 06 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788655233
