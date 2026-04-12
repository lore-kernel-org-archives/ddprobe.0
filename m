Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EF527874F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776013654; cv=none; b=c3WqQeXyAo3JHzlsbXzFkZu4fGVBxXcey6tx5mkP5R2ukZfC5Hr9lCrRHwuAtgn9r0lJjDq8S2maa1VOI/mL0j02M4D8wUyrDaus9m5BYbBf5BBw82JfgLjJokZj2Unez6dlOz12CvDhwPAzdMTGllt0hGfazjmu/QPbr70UrxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776013654; c=relaxed/simple;
	bh=cHaf8yr+5qfJO7+aTs2BQasPwAyhU2X4c3J1ZT8ulhs=;
	h=To:Subject:From:Message-Id:Date; b=BaGi5WzIFBrlWCKmmI/HxBvxJDABtqnLMQvHLRKWMgjREJF97mBCEgirM/wtf+S+75dFdbtMVtt3pTgKytdlZZyKuTBwTpWwNJTRu61LXiNmKoq+tKi6Gz8a5aPMa0LT4DVkGnwZ3p9C1szH1jAALbJbXbqlu2GIdNsEgtJjKmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvFVbxwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvFVbxwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE766C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776013653;
	bh=cHaf8yr+5qfJO7+aTs2BQasPwAyhU2X4c3J1ZT8ulhs=;
	h=To:Subject:From:Date:From;
	b=RvFVbxwgnJU1a5F9ZQ6lO/8npv3de9AmJo+celYikqjYf8DVV23NhkkwRlPDihoY+
	 67MPUISJAW4Iy7F7Rh2oLGZfsKLu0CS7bDkDlfG3QMmYs5wsRwGaO/kp7PHTWB7158
	 DpKUhfCfD7pNdpcmJJvQ3DlSTSDsHifppjGeZJQcuE4+owW1SJJwdPB30Tloo3nmS3
	 XB82iiVfrm2sgjR0uaQdDWfKlQq+n1kvPpXFXuUfixEnabUlhYKalk0yg7xZQktMrl
	 f5wkEdeCwmK/d4z3dEMUWJ1Pl8XeYMhlXWO9b6jxuyQiwpOL87eNrYE21ppELwVG5W
	 VOgrXQGZZHMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB7AE937F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601365368.25819.11948992414860160052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e958532bbc2c556e95a5fc07418bcec39ce9ae338768a594ff63127083d11c8
Date: Sun, 12 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776013653
