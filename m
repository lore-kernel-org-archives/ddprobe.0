Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1697C63D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724645154; cv=none; b=OdylOyp0AMlnjhLjfRjZkRWiESb9iTR/+dHR2YLd9NzQIXRoiOlgohO3yQEelA3qThSUPyhtY9L/aznniAQsQCKZI6D+l1RzXNQxUTrwEsu2y3HJBIl7HN4ONXCWzrPj97m7T5eG7zD+20sL1GdjLzeAfuKNDYrz9tbfVx8jy1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724645154; c=relaxed/simple;
	bh=Mjyux3SfGHyZfdudGm4gmh+uG/46WvgA1Kbh7flJ0ac=;
	h=To:Subject:From:Message-Id:Date; b=Yi6S/p4zmHy2a67T9FG8c1sOuE79Xs59WBYjWo4Z7r2+qt6UQ22khb60XXfpQNP4UqzWQoEoSGvTFeAiIKP3zpsOU4IRbqtMlGv3mv/cOnBEpfkYjUvwLnJao++OEj608ureHxguRUjTggLrrcgEjs2M4Xnyk8zzD1wdcMUjKio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HItOwHVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HItOwHVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A657EC4AF10
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724645153;
	bh=Mjyux3SfGHyZfdudGm4gmh+uG/46WvgA1Kbh7flJ0ac=;
	h=To:Subject:From:Date:From;
	b=HItOwHVJskHDtGVbT8fsqI1Wo60pbZLK/vQ64oFAJmRtyOVY1pPklLi5x7P2Qlvju
	 WP1nQdkYSyE+YbkIX0XYEk5bfultEiDfN2ndKBwUA45SQvXULzkmm3mI4NuM7nszol
	 F7RLk0l9OhEVIZT9DodwjRC2xS6pjo/X02hLBH5dL1Lh+lPtds/wIXAhZVhfbfcz0N
	 2rmpFnvf11t2IJoHfBL+FGafGXLAzNg9PvaRZctbGCilN4NfiSSmZ5wxnI0pW9Xwb2
	 Bzwjk305hPG+XYUGjOSnEpArLGjT9oW2ZQPo/ARab/kNnkzVduZT1Otsv9uS8ZOvCv
	 /E0k3GgzTL7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FEBC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464515359.15151.16323022711934714112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec70243cfe7642550bc819d6dc243b052c3ff3f4cddbbac2b2d691bf0205a1fe
Date: Mon, 26 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724645153
