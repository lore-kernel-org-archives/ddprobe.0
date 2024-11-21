Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C231CB321
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732224954; cv=none; b=MQC28OBqw5C8EadX+vz881f0oYrd32X5SA8taVDc8XwxHCHGln2hFC8DXofXKQ4pyOtKHcrc9xHSneJ2hIVX5FCfXP3FBO+24QlpFEm8NBq/lybstdcY8YzwHv7UOASbTN+GlrMzvaAnKhoTf0kG54iEqN1zAOLMP5xmo9oX/lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732224954; c=relaxed/simple;
	bh=Lt1ojjcdiGheXzgMjAvmvicmgOeiWawk9pOBWVrnpYw=;
	h=To:Subject:From:Message-Id:Date; b=DXw9IQmrbNwdBofrgvjkMJFB1u4BR8yiGwvSlZlFxNZdk2mWWWSFFr1H1J02MoggbERHzScnizsC0yKKTmBNAo+aDO1FN6fC8nXfIVAEhV1A8xtHsCvAI4ix5xzaJLeIqk1FK9fp6yxf0+7OqPRM6BU/XmBwGfLC/vm4Mou+qhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BINiNqIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BINiNqIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AD3C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732224953;
	bh=Lt1ojjcdiGheXzgMjAvmvicmgOeiWawk9pOBWVrnpYw=;
	h=To:Subject:From:Date:From;
	b=BINiNqIwOVCBn9qBWicF3r8oa55ViZZ8QeBPw1KeG/Ne/C+CBfyZq31Viui34OtwP
	 /nFtPaakvYAGQvLXA+x4Kmblzf0c3big8jYTEIMbUhWUbzGZWxOmYFq47Owol+HElh
	 SK2YSVksg03gtwQ1bMIfgpMsmNVAjlhNI2b/5y8V21tcVKRb8Wv4Vi/0KPRzqjd/aI
	 +Ijd3k7IiPcRmCIY3KBh+MHg0ziZ62430tDeR4KvZe4KoS2jUMCUKVLycGiDRhrv36
	 MSZQSYw1wFsKB99CyZ7AKJtrkaMgQUS8vMtL6z9BxyF3QUeHei1CARmRcQfadU/4Xl
	 IvjrGzyiWLS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B319E64016
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222495362.22587.16236156382360511100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8590d4f59ad9cc0aba47c8808621857f2ade29e933458789581d907bcf06a836
Date: Thu, 21 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732224953
