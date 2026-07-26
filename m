Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C224908AF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785025234; cv=none; b=Aid+tuOX+47+hPJUYRfjyDAyHQYRZMhlp3j6gAHYDBTmHOlIOMFYOOPLyLLrhgRpSbUnsOjFiJU0qJ1FfsV7qD/xMhWqRzQkmt5Saj0H2PBXc6fIchl7jwFlTbNEQAZlWKXVtskU+mB9Hr8tL6LV4AuDr4VfFJtn8L6G6I+HK6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785025234; c=relaxed/simple;
	bh=0UKe5fusMEosjoOJZAu8kUm9+2qlheenmVb2THvY2F4=;
	h=To:Subject:From:Message-Id:Date; b=Q8GV2pZ1cBwD3VQ9YQNTa68OpHPze0nuGzHJMZQObMBcoF8bYWp8Hric3+7xtS3zJGTTN11AVAeqEXrKJd2fvi1fRbSIZ+QI7jVskJg6Iv7T+wSo6sFUGBwQBhAXQ4+qA2Xlq7vpYVj0EKAD/9LOjNLeQCijjyh1FbLH/WXsF5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2EHlqnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2EHlqnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48AEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785025233;
	bh=0UKe5fusMEosjoOJZAu8kUm9+2qlheenmVb2THvY2F4=;
	h=To:Subject:From:Date:From;
	b=g2EHlqnQWcSiEo351Yc3VfVnF/Txk4Ljj3uZL4A+RmaDzYSH6UWdkwsf/kOjYT+1m
	 bIVGejjqitmgaeBnc05V+12tepLaI9XbRqyuRAHxNL6uMDQf93RUwtcItpsywPnKxh
	 JfTvx9CdASiId1pNyan+HYKhMIIBPqTqhwKrU1HtP9ej9kOH7BLbzWxQgoyajYZMaC
	 DtA2McW6gIHjDWp2imRYYa7dwF2vYHx35+du/3p4lAcPajykoi4lcjomvXQO8dDslj
	 PRSxgBwsCOkOAcQv73XDlkg5ap9nTvBOiJkrFovK3CkoJGex5RUbInZhrdDg2c/s9m
	 p7tHxlr88aVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB128C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502523368.24474.8630593274265177902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20175a60a86b7557aba8f34e2ffecd0f0b27f4b9a152915c8190111c5778f1e
Date: Sun, 26 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785025233
