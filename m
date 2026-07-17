Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FB3E54B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784306914; cv=none; b=OrM0EjGJ/Y0VLedrj+LwPx/tTVEAdgaqYMNT8TvUmyVnvIGzRiQiMBehGHRCCYJ0T6P/F9tx2aUbhenBTcclqIlOD2W9hMRx5NPj/Mrg9QwxfdahN95To2RM7X/zkj8WVN36r2XyW0d7Qypp+pkekII0vMSpKbC3urxpNK8sJGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784306914; c=relaxed/simple;
	bh=4+VPz+ohHpApAtpJ/tI+8YNVVVIPHttKiIiC1GR9hVg=;
	h=To:Subject:From:Message-Id:Date; b=mqxEr1qJL91nriMd3UOe44tqcsmv2X/l1LdBz2r5vWKQ9noDAigN1LF59TocjIGhANczGkE285Nw/WJa6Bh7wyO9MyNOhb8tOi1x5Q4l4nKHOe0Q9Eo3Pa9kqbpX6pDBLjC1xcvrS3kIzFOU0snKf7VBsqjY9FZD8ElkhXXcyQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk11ELAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk11ELAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784306913;
	bh=4+VPz+ohHpApAtpJ/tI+8YNVVVIPHttKiIiC1GR9hVg=;
	h=To:Subject:From:Date:From;
	b=Qk11ELAxzH0rIZ55Uugk/Nc0dAgmg8MFr60lUaVdui2iTa13LbJlZRsLAdTBt86F1
	 WFLiWsQqGuB9f2MwG7+BOrxuAuEPJ6ROJBeM5HGwfEQl5gIoy+jaIch9giqAynn2Zr
	 DTxfF1+owLzHMGdGJ63B4ZQL5FeSdq51V6waMjCrSVr8sa/BYBog160ndhC1Wor6Yl
	 l928MnLravCdqf7ugFDKBAI1R462eyIaVeoY4weeUGKdqDyLFEtySTMv97nBddGGcz
	 zS2ovteCFLp69De1ybNV66N0o7iZj7+FIFEeQWR9aBg1Jfn0l3IBs8soGfA9tvsxcZ
	 FA6ssiHCA7Pkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9222C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430691368.1268.282297562090104716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fddc34984b1d1b097177fb90f51ae63fb709a271eb5790fa3da3eb722e2452b
Date: Fri, 17 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784306913
