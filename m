Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5E33A9FC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773683094; cv=none; b=c2hDV86IA6khAPdcbdnu19w7gPZ9g8kVg8nKcvWGtjpyTpT5pkNiYcJLN97QbjkypFp0xla98Pv74RVidThBgUiz7EtGMWEgIX39s9rJXx3MKKlZob09qDMy5ia++O96nCY7Qmm9pU6eiIF6BQN+j7gmeogvZXqv3pFksDGLVIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773683094; c=relaxed/simple;
	bh=vPQ27XDvAX9VyLvvo0GfSX8LqrOlMW8NR3WFmM0Zar4=;
	h=To:Subject:From:Message-Id:Date; b=qO/NFEoV6Bi6NNDgPMEoQGRBBLMuG9nIj7jnG8t16e6ZQy6l0x057VaozDMCy8REOIz5GGU4ctjjJQMp8XQwT2U0+7yz6rk5dY80/u6ahaucOU/cug1H4UfQhGAD1TT8jpe0o9XtYUEtDU9eMZO5IRrTNT3ca/Iclv/BrHt5Mjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7MyDE3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7MyDE3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F56C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773683093;
	bh=vPQ27XDvAX9VyLvvo0GfSX8LqrOlMW8NR3WFmM0Zar4=;
	h=To:Subject:From:Date:From;
	b=j7MyDE3uy7vDWs4cXWoncscsnKkZzRmELBJc+XM8MjvNMbRFgGrofJL79fmY8SWC4
	 ZX8UH9ymiUR716qFyHheBcg/4259ybDSdGgqoZbYBRCQ5ZBRwoReg9anmKLv39lw9f
	 sGwWXfZEPnZsFtE4W5Ix4lIlunC93VGB81SSbNHaQP+4ORwlzOoxFes8KF6DCUb1gd
	 QCwVNxgA5WlsIq3nycnEPn8mhSQGWw5VEWAybRitlUsTw+1GiVD0U6X5ttX3Xj2S6a
	 zn+Wa7TYoON4fAH7XLQbccbTX/N9qSVh//ZHF3lwkQOJ8oSUR5PZNZASZZ/Hdgr8Dv
	 NcsK4TnO9posw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B6F53D7E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368309358.16164.5215614595940705502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09a159d398c5630d3ee755c9a2f6bac791efad1f3e5f3b4feb0a161853980fa
Date: Mon, 16 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773683093
