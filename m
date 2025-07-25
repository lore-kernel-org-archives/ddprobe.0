Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E47523A58B
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753411794; cv=none; b=SQGhxfDFimsTGBnW40FQJJyoaH/bxU/KcddkTX9hksv/FlmlIMabCBn5lzuxUA7FOoj6MzqizRlcqB6Ub/mJ+cuwm7F8x/7huHIQ+lE6CVn8UakG9hByd3yabaalEl5OebhaTdyMZdcHWg8370ae5M5TL9D62qm8nav3fnzKofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753411794; c=relaxed/simple;
	bh=VFzalokcldj/p6yOtgzUKf0kCtAQ+5Sv0FNjy4OmYfU=;
	h=To:Subject:From:Message-Id:Date; b=RNVsK7t342/HTeLvabVbx0CQEk8vkoVg2wVzUmoGEpHymPPEzd/emDcl5c0BBeE5mdQvfh/gMJZkzZ6uQiQeWLuzN+5xpVlRSg7ol96vbPtOd6lI6NjZkmUGMHhupKoVM4/X3FqmcP6n0qaLRP5MbkusFiRtf+mEN15xlMKroKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s24T9n8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s24T9n8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1960C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753411793;
	bh=VFzalokcldj/p6yOtgzUKf0kCtAQ+5Sv0FNjy4OmYfU=;
	h=To:Subject:From:Date:From;
	b=s24T9n8ImuKt3xJ57NCJQDEAkFJNSuMI2hI9lSZ5gC5ugn4V40L0KVnENXddlkmQk
	 XxbhsySupkrKjM5QptQadzuTK1vH3ZtR23hNcOYR8U9/whNkc1LP3RB/2nPnS2pHQu
	 lsAsaUsu7/xb2BA1Dg1cJgejUJmJksoS5DOd76XMBNHoDCPuDzpGCftFJ7vjNvfFa1
	 31Cuo3+aCrewdbnK4ExbuTuZ5bnEFLZOa1eSNcD52/xw7vAj9jUctDFkXosUO+roHf
	 fzVGeYmju48gwJLiPoAKn3c5upGpwPREvJtbiJrrfwFndPqXBVx/8b5XEWXFpU4TrD
	 6DQMh39X0VMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92003C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341179357.16197.18361384654432758948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67b9c323ccf0274597c833616cb17fd68a110568111bd0b234bfaa555f848d7
Date: Fri, 25 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753411793
