Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E225309DCB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771401894; cv=none; b=GbkWhKkPz4DEhyRceaoGDU4uvCAmCJl8HFO0sRVroUmKIftTOR12cJZUFFWxh7kHXexcaX5SH68lpyjE8p9TLedBLGbR8gh4xANazfjCtLs7N6EPIsJxzNbAtu1Fy/hRkU8ndkskkKtgUgb+CozRokTQ/0WXU21HnEozBVqVvuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771401894; c=relaxed/simple;
	bh=jUD03xMsN/hcnAEJL+MeLjcv8WPPpDexpKmsJXq7L1o=;
	h=To:Subject:From:Message-Id:Date; b=hZbiIL6HdyFx8yuKdiSe0aBnB1agD8h5CVMlRbisPO8QWMJSEAW8ZrO22VeC1O+b9oecKln3HM9Ib+16xGYjs6Hsui4Umx0F0VslrvaSWqY2NhMPh2Xcxm02nDgxvl/27hKmHpQqWNaUtC0bpP63S0aGLB79LyTdpMYsErhrmd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxmI4WBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxmI4WBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00C9C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771401893;
	bh=jUD03xMsN/hcnAEJL+MeLjcv8WPPpDexpKmsJXq7L1o=;
	h=To:Subject:From:Date:From;
	b=oxmI4WBELfeqBjzx0espUCrxMwlaZ39zUfG3/vPMH8HOMmliveBx/ON5wc5y7XmKi
	 z9JNfGmZ1Ppmk8EE8v0XxWQE2NjoBzn01V9+TPV9sHZx2Mzi3MIhvMagRzL1wNqN9s
	 cDJ884J0tpLa3R3oMAqe1V8v5ixkWBBRmlDOnMgCwTX9j9T1lvB+LotDdhy1vIpGfP
	 emhjEHU7XoQF5Alr9ug6rJtt3wOmkXMMnuRRnZcqRPgCftCloy5HPjkWYI48pONmDw
	 sCD4mGZeQdpFJFDwWw816muWFdlK4ykb4hLzLbHIAHbMqLQrZ//54p/3p+s9D8CWjp
	 G4QfgpSaDju+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFBBE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140189363.20688.7299157546993103698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d136c77923d2edbe1209296f5a1a0e21089360fca5f36c43f98e0e21f5e7da51
Date: Wed, 18 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771401893
