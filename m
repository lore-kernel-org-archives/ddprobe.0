Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0608019067C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763771514; cv=none; b=bZur66cP0IEzM2xZ+Auq/px7qWvGPXpa58wdsaHFCX3k2qZQye27fN5ExLYdaxTfOYagHyFVurDneTxcCRUHuYt4O8rNNfnbKqxoP0i54FkIf0hEImthP++7+tJvilfEU8/xsHwEqppJxwo/SiDZk0WjZVTYdV0JffhxIIOOxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763771514; c=relaxed/simple;
	bh=/t9EQiq5i9kSXBOV7rSuAPB+aPKNTgccF2+pjHnDWgA=;
	h=To:Subject:From:Message-Id:Date; b=nZwwG/AH0/Zhs28WhBKXykP3+TTNH/scP1wcl7W6OR35KwSYJfjKpMz1Ieu9ykvvq0ge63PemUJ37DNpes3NBemb8aVck7voZ0p+3RTKU/+qXbjSmXPStmjb/0x9cErCVIG4vG6elPYdtZEUSYvfJ9+3dL+xn3pazpnHzgA/ITw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7VOa4qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7VOa4qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763771513;
	bh=/t9EQiq5i9kSXBOV7rSuAPB+aPKNTgccF2+pjHnDWgA=;
	h=To:Subject:From:Date:From;
	b=s7VOa4qufLLJo7xJpwjwAK1CEDuDy9ZNGeYwEySOmCuH0lrxPZF9ur+V7P4WVISo5
	 mirHE93dKoiuC9eGHAeyA+iDWJDCpPOIFn5DMLifgjLGU5uQvtdb5uplOP0+kgjKUo
	 lBRYczE5a69+c87OaipPgKHoKdf0kHEBoqVfgPKlAVOu9WxKDYNoGzruknhLOL7dt6
	 yESjhPr14aNwgjTL3F7pvu9PZIlyt+ppCs7+94owWNh/vS4Hf7PEzEK7Ip7HUQ6pWo
	 tGl0atZ6FO50sCIw/o1cdEvM8uf4yWrf6xV3fgIUohwEn2g/h0YVGkdmR/A8kEc9xC
	 mKE9QbvIIt92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92762CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377151359.23709.16261462189221790742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18d7d5effa6f5c0227296f85009463c53d377c845a8cbd0b47616f6b2694f72
Date: Sat, 22 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763771513
