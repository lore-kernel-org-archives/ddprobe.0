Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831A29D0B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746907794; cv=none; b=TBg+sIUz2eREfyhcTSgcPHzsCqNW3rVL1uZsIsuYWpjgfyIgDwNZWeH6J7Y7dx15mdIOJKEhcDhy31gMNxUxW9/atpd/TglVeS8cNBaj4oN5ie5am/kkoThmpLH/6Z83hTHcMoFyyGuspHffI5k00qyXKAHtpRMNssEkGRBDfdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746907794; c=relaxed/simple;
	bh=f+nUS0zGYGPYW/LprHiwzvG8EqoOie6vgovdNtws57w=;
	h=To:Subject:From:Message-Id:Date; b=NFTRjTMfbRCJhGHwYHaeyWe7ZJjNyxbVv5EroH5Hsdnfydlr/DO2nK5DIlP7ZnWPlkinMeGZhznBaifux/2lGeZMOfqoQ0GsqO/AeFKCdM3+Qr3ZBJVHZpqiBruJEaWeRdxWRzFRHoAu7wuNb7GUur0/m/MiWBHwtl6v/4nOUfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edmmPwZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edmmPwZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8461C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746907793;
	bh=f+nUS0zGYGPYW/LprHiwzvG8EqoOie6vgovdNtws57w=;
	h=To:Subject:From:Date:From;
	b=edmmPwZQ6ZtgCd92k3WKoc797/zT50mWa4EMu9bsk5qclgX1WAhJuGHMDKrUW+1ou
	 3rV540gX95haXijiMNoNs4OW6yq1juOSaCbMPuBy1F4QmM4OZedlbtVn0SVm3XHlHh
	 NHBm1Tz6aUYn9W58g8m9ZKN8J1sNmP6EkqgPvQ6dfyAdSPdUFeyHS7TyuQyQQwZ6Bc
	 9UsCWUi1ikeubxR2BaCNxgjRCQHudx5IQo8JualFUkjLPf4+IBOulabegtsuWzPni6
	 dyfs0KIxIMgyH91ks6RkG/vocv4Blz16nBF47kxdyFh1Z8HNR2k1kHJ5r6bJK2+MVq
	 DtMk/gIYGifDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92334C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690779357.25187.17493703782610159789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf14bd9dc61e0e8b28c41af4be225d1e7a94d0ca6c054abe94077b77ecf7204
Date: Sat, 10 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746907793
