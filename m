Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7303BD51E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717126463; cv=none; b=eb/vRWiMSyfGoohh95EviYt+Y9GVuE/J/nkDe5MBJDFirLRpVAoScGohaSSO/R3m+E5XSui9zgiLfYlCRRj1r8JYcSzKh618C30rqfVWe8IaQMq2DbmPY/f8YXaJDEYnZCvQSG5RNsQdSgmgzJqUZ6Eq9AjT6IVqeHcmTR0p2A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717126463; c=relaxed/simple;
	bh=ynYpGDoNWmc3KcDzwIfyq2NLMhleqPS0S0igIrSnjBY=;
	h=To:Subject:From:Message-Id:Date; b=FTg3pIc0g4xpBMGRuN8C10/uUAtRFQLLCIJf6VBGbqZp+b1JYY0agqQSvFqD0kYE8xUd86ZLTkFuQyNC9QjWzN7/UnmYHSkk5JYuG0HDHmwfrI/Fbj/QCzBf6ADmnXBbz97Ux/hMdCZJvGylvhWB3LRGsboub/6VW5ehHJ76/7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdUWlQXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdUWlQXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C93C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717126463;
	bh=ynYpGDoNWmc3KcDzwIfyq2NLMhleqPS0S0igIrSnjBY=;
	h=To:Subject:From:Date:From;
	b=sdUWlQXTkevjmiJcKUnVgdjYoUAKk+HLAN79DA8hfwuosDQyu3riaIIelHZU/OaGC
	 XwF1Jyc3E3/lPBQ78P47i9beA5P1aa5MGlptc4FFxfpK8rncUBnV/gX7yherdMrZ1p
	 5w/yd3tQdKYi5U576VgujM24/4v2MxdzAx6jB+oi/0jzKAT8sAQ3rmIbGtHXUGG3LO
	 BFdYchXmf9ESysKc2Pz6smfSIrboNI66FmAVgJbI4rhqzoNq90ljtKQA502c0otqMA
	 g2wRjQ3QNaM73sG+gihWuGTwT6zJ9shAPoBgo7z26Axk8+6cwo290xcPOvL2Zds4Cl
	 7OlvbToPFkkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A23C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712646281.7225.3793502738525505429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a90cdbde3ec22f1343868df308e6ae1c83c8ebfd72cac13287e2a167171a782
Date: Fri, 31 May 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717126462
