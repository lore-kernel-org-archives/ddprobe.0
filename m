Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B732ABC3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541094; cv=none; b=JA+kIlDK2yIZyQg488lpEFuas5pCsFKswTxQ26mP6sSme51OPf08v81EAzZZBdksyduwpizNb2tbBsayibCVMiBXDNbfyfXVpgfr9NEo1v0BQ3IFPtcG/LNRJg84YO78yJufkf/rjkxAytgXRI4SPn2RFeJKHdwz9dCLOycuiHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541094; c=relaxed/simple;
	bh=zxkAzisg4sZ+BOL67nlqOqhDvdULMVTQoHPhCePR/tE=;
	h=To:Subject:From:Message-Id:Date; b=lTjOROOqQ4DT42UrkKvR/FtHRBuBWnJo/rk/79jMSmBqgv6YbeIHt8P7HM/06KitUb2PrlnHCYxWQ/GFugPCp8UJ3vuGE64HATbYpuuR5ZhjCzZm9j7PiPpfV8pGgOu5F7swco0M8NFRcMxW3owt7+CtiqMUXblDCeUjfHIP2R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMSgGh/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMSgGh/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC819C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771541093;
	bh=zxkAzisg4sZ+BOL67nlqOqhDvdULMVTQoHPhCePR/tE=;
	h=To:Subject:From:Date:From;
	b=kMSgGh/ZWeIIs8MTosSmVRwae6MBmLBSTFOFpfgE4dJN87+LwX5S/Ha2Isjetekqy
	 PXQtlwzSWnRyfBRSuSF23wjkFBbSS7cYlG8RU3qjDmMsmC/i6+7KFw6jxfsMQUAt/U
	 kekcA1RmgGDzodZHb9/B8Q3NlZQqHnfP/nNBPBY6b11ydU7oQANPVHsMYsj74SE1B7
	 ML/+M2vEDqZfK8CFLmSM/H3L7s5phXMF+u+B70ML0uveiroVyYNIzFkC8nbbC8PKXx
	 fYhpZPpM//y4RzJQ7uHAGdvfjBYQgWyrwFFQD0l2OstvPVK3woP73gkO8fofGKVb8n
	 wSmimN1K6rRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B88AC531E3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154109361.22877.9893133715659086951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589df3fe9dffba70c06266d3cc88092ef5d7e018d647de267b7aab3ee838ec21
Date: Thu, 19 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771541093
