Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2321830F94D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770708234; cv=none; b=tHtMfLSIqxWABZw8zqNuvHwO9g5EShHV0ttgEQxVq2QUGNI2qAOx7Am8AQOVUvVLxHKi9fpgkKElZC68H2k4WIyBfTmI5aF2Fuz1ux8XaSuwCcWDrF9hXYmDN8K8NNOUBe27EJqoFZf8t5xkobQwD9C9+gOyhluv3ENxHyC3dWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770708234; c=relaxed/simple;
	bh=kb5PMyxdVWGjTzAx0yHovlPbBZmH8X8c1lCNhALkcq4=;
	h=To:Subject:From:Message-Id:Date; b=u18WYLe+akxYhgsHLx/wEKZdLP+ftOxMEQ+5Q1kR3YhijGENhmXNdtXJMpVSwzVJBSq8qBEkmhNhkGupD+fQmHhgg/CyLpchGfIpYMvYwD8zkSB5yG8r2ZMGtCYyWRmyTfoprvb5O+Z+qAjB72au9wI5PrzMUP57XYh+wmC6hCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz0LXXll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz0LXXll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770708233;
	bh=kb5PMyxdVWGjTzAx0yHovlPbBZmH8X8c1lCNhALkcq4=;
	h=To:Subject:From:Date:From;
	b=pz0LXXll8dCxmb767xzQIpnynoSKCS4grALUZqtBlO8nnKmmC8RAnE+nBiKGRM37g
	 CB0Ux2KhEjpSkvPxuPTPDsouVGdahOhxqHlV3VbGE+QAoVqwduABDOVK1Ls1QcuzTa
	 C9wo5YGbtUER0ZLCFTDrIS8IHt67a/rm0joHTuKuZY6KOuan6zWsW6xJ/3+pwwQJBL
	 l1HjdjmCu/kucEamlEwoHgKwhYpc3E7CH6aVPWPO5hYYOFbzBdMHH2Np5uaQn11n/j
	 GkAiKsITgjnwtImO9wK1q5e6RXVaYivZ+hR10OkaTa1yv3HdLhttfDurgEsyWnrVSQ
	 /mJPW2DZPKyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605AEA3F0F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070823358.1800.9438023347154803761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b86dfc664bc095c6a5528eb2816b37e512a168e175cd9bd0eee70e354ece3cf
Date: Tue, 10 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770708233
