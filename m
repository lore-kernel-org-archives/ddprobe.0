Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E5E48987F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785480634; cv=none; b=BCAuAa7Zd8XbxOYTlw75EsNACLAZVKfMFIj2QpBanKBBwrntmVImil4dgld1LWC5NPJ0gxSlYRiSdJ4dbDx/x9SbRAFZYktMn3PISlLGa2u5khoAmhMumvKmJhBLTjo56A7vrZ1aDasVnHLmoCIDYdjsnHJxeWMBWNG6LRFSVQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785480634; c=relaxed/simple;
	bh=7Oa1g/d6qAOe4TxFScwmLG87zzniMromsGQHeUFsfb4=;
	h=To:Subject:From:Message-Id:Date; b=njqFZv67vgMsg1+UsVt0DYQdR7dd1ChmTc5uGrUfoj+a6/qa4XmYSE3pUNvm9yvBpzrDLeFxTj+9FTRuCio88yYSjIIHqhqyoLI27UFhUobLyLkHflgADpMNLT/uQ+E0or9Zs3vEfBHn0zw5ZWOPq1PFY21cAIhtcNyPW53/7nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWNjrUNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWNjrUNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D327BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785480633;
	bh=7Oa1g/d6qAOe4TxFScwmLG87zzniMromsGQHeUFsfb4=;
	h=To:Subject:From:Date:From;
	b=UWNjrUNP0GhUPQJns/D6TbaUn1hv6Q3Gb0fB8t0wzAt4clbRDMdm0+OnqsnXzpaN2
	 oyygpCYHYY04yborQZZAl5ZFgJHhDG287EeWudS4euGD7gC5qwft1JPnV8nIuwkUW2
	 DAs6oPcOJF7Tu3Rb8TsDFjoo1Z+OiKWzsaqDhREjHnZUUI+3EWd9mQelkTuwgTYo3R
	 FHVjvMTNXDjnyIFudYUMKyrkU5lRxOAaPTzzc94ffmskKNV3KQB1JA7W+XxKMGDhEL
	 o0oODN9kvxmtqbMELpfYc2jsGlvc5mIP+q+k2RWzrmhQ+qfUgtCZCmpT+CrN+c+BQA
	 KtNHDJot3IWNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37CC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548063369.11172.9227901329063359246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac78b4fef9cc97d243f5164fc4897ac8e9ce2a81e141ba43d8cddb22960ca72b
Date: Fri, 31 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785480633
