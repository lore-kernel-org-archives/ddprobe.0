Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280E1CA94
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718487503; cv=none; b=VGZT1BGqAox9UR9EXjUfXJbbe8itv2xyZPKrvOgBNaYTQ6SMndMBg/1SyI36ugeKB3hg45y05bp19lLzt39fs0nR7l7jVrwzf7YTdvstq/Psl6bQohh2fTP+HQserieuNV7iT0kNOKeb2+LtPsUtCEQJLWlZgq15ZTYkbOwiBp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718487503; c=relaxed/simple;
	bh=dJdnVFLKYKe2w63nmgqLAaS12yahqiyNykWs5kK3OaI=;
	h=To:Subject:From:Message-Id:Date; b=WS/xiO0NDb9ZYZd1Yht4nPAHUvgiBT7NGpt/Bx4lFby5ra9LmzprkQdLRfH2glo03tiX2P09N1h2YET9RGQz6r7HG2Lb61S9+JE+l2+o2PlJqCC/qYDZFBCQXiviXs+aFR4ZkhF4emEhL2sHwnlWuLcN9T71AgvNZ0OI1WVtu+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O31Gy1vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O31Gy1vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD43C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718487502;
	bh=dJdnVFLKYKe2w63nmgqLAaS12yahqiyNykWs5kK3OaI=;
	h=To:Subject:From:Date:From;
	b=O31Gy1vmpu5BPe7HcR0/NNtPW/wIQLhLlvVtIw8wQ7p/yrgg96/uTrRbqeOc6ec3y
	 w++mHw9Kof0HUjN+j5uZPSCHLbLQdNjpAQdB+fym7PRwsprbNoz7JtNTJI9JDd0+s5
	 HWx+xJJEJJRVUP4hjI3hWOPI1/FyfREATeFohR3bdn8QD9vmDxBRo1AarWFxnXGUNB
	 0dsLEXGQ7Lfkfk93I6O89hEh26Bb10ZkHlwb2G/aMiSheaNhhmcNXPyJ0bqccQ+N5c
	 QMu0sPaW2/4UIYzQHYCiP8aLBlLXJCh/GgrZKyXEvfd5TXMKy5its1UmbZC4m0BWb4
	 sfNk4SUSbRbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5770C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848750277.15989.5472976729239639516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c8b5f67bed09fba2a51888540ea1bf87a61a27dc6d3823bba8f020aeb4f3b2
Date: Sat, 15 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718487502
