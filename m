Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83103DB62D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782391054; cv=none; b=DrcJd+l3zg7SHdzzwuMjzrBC98iEfnM/r/8GzGMfyWpw5KJSja8LsvLw+6bjfN1zT/ue9PrsqbLiVypf/UzpBvvDGK71a3jWwnRSsn8jm70VJE4k3iMlsz85bkbCF1C5kJelQRG242P5pcyM+UewOL2jwZEd08ol71jkckIq4dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782391054; c=relaxed/simple;
	bh=pjJeWe5Lh/xgDhjYgjvfWUAskBK3s8JS82654SDmEho=;
	h=To:Subject:From:Message-Id:Date; b=uJ4fme4LR6L1vbfJPS5tEJfMVdzcrtctHHUr1Q09a4XDLpHCGVe6vzh+H6uY5rRobB1uD8eJoLMG5V8wjfyT/eFjB5KgenimRu5RrWVO3QBTLSeU49pxsgg/W5DacB2+dO9EJaYC1bMFZlbYGym1uojvXS7LXvaRNi+eklTrhtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSKys25Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSKys25Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EB0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782391053;
	bh=pjJeWe5Lh/xgDhjYgjvfWUAskBK3s8JS82654SDmEho=;
	h=To:Subject:From:Date:From;
	b=lSKys25ZJBTlWYQcbgkLVaS3FmfJ9rJjwUX+XK/BUr+mt+MTILNYKgKwG55aT+Lex
	 qfE1ai7FZqKQFcR1TkTqs10xqTzB4OiocWc8NUrpvQTH5sGiBZHO2efHIKNnZ2jImH
	 nG6p+tyP0AxFipVN8hUnT10HbYzBhpp8DlBlBv3sjhzyjW1TCueNVLq8WfxVY5uIG+
	 z9LKsVnsXZw4SQ3dWba/G5fBL3zHaq6JQu8t4mA2r4Chamtv0RItCol7XQpWlUYdPd
	 63VO/BsAl0agC7owrUSHZgfu4xAMTif5v12cx3/jVCqU6K+NaEM9bHE3ZGd7g1i1NY
	 rP6gkt9AyLzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C333ACDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239105377.533.2305979023577656144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebe8e6f9c5a408d28e38143b0a176a7997d2fd25cc188c467cfddf88316e60d
Date: Thu, 25 Jun 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782391053
