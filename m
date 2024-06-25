Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABA816FF52
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719347003; cv=none; b=gcmmTqtG1YL9qhi6LUClLgz3aKJOycq0JxxCPpLrp5+lQGsdnujozT72mIHfqM/7d8Wq3ATEMFSFzcECyZNn4CJsw8IO2CT6DN12CJrdBMGKe2UTfQPpvfZcctTYshY9zAgrVP6JMXpMJe8m5uF3pBBYGfy4xGIj5wQVoKfIM+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719347003; c=relaxed/simple;
	bh=ikwYNYYe1itvQyIDR5g+xJe17VotaMpYnsLHUAfIGN0=;
	h=To:Subject:From:Message-Id:Date; b=LbR+wHtya+iD6aRKLBUy/p3HferIaZ0Ms2vhlfDESJObm4YpfCJqKbGLdPJWk2XoHB/j0pqbdhGmzDmltxFjJx8k+0tjj+/jUAOwiTGgujX/i97Q7okIjE7/MZds01RiYe+30h/NQwYqJEXP0MZ05PG/9j0rbzccmIauhYjFrtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl0Tm3v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl0Tm3v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CB6C32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719347002;
	bh=ikwYNYYe1itvQyIDR5g+xJe17VotaMpYnsLHUAfIGN0=;
	h=To:Subject:From:Date:From;
	b=Hl0Tm3v7aJc4tDmrUsVIWLPnLWXMhwREHP3q4M3946qvGY7QfmTP5/YbITDH+SO/9
	 tIqn5L1s4EuLJ3iLo9i5dqjexyUH9wW8iQ/CWMmif/T1ODvoJeKqV5uLHHrxZoAnQ8
	 nPovijW7dAgMoIARERPLoSU02cJuT8ObLavhqsbCRKTMR1VFMbYHtS8kxcHjAF5Qkm
	 WCd8sYTQwUVThoUjlmISYlZpdNEDfyMmaCX1U8rQIdsnI9IttbHBGfhZ691RorYWJm
	 jFjK8HYqOkX/5y2AXURMQL8ptkGBd3ouY36UAl7FY0v8i1GjIiu/6+3LTZeWmVu9wm
	 V0SjN0Dj9BkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD147C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934700281.17396.11769063475118760708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2127345e6d7c153d3cab5493ab1f631ede92ee4b4477dc16917ae6b640ce6fa5
Date: Tue, 25 Jun 2024 20:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719347002
