Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C71A2EF9DC
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752656394; cv=none; b=FjN87dT3RyLouYdDqTY1t89Dqk9OZbsd12a7gI/SYpXK1q1SWjtgsCVagq5hGtcVPlLRIjwqzVpY5fGJLLdlsOFA7oOPRFml6P7IHpRZGqlgOxswUy4OzUCw7D61YuqwU3/7+xhXsfbamQEV+ZMOfIAaFyaM8L8M9ljSncXXoSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752656394; c=relaxed/simple;
	bh=VTW+Lq9W+zxXa5RaWncsKgVsyXUQQc7EDaVi6FSIldk=;
	h=To:Subject:From:Message-Id:Date; b=IACpYpJu+UOwNOwoIzklEC1n1KGjba53r4CkjjVJTmjI3GfO1tI1cmwkBOs96XAFQo5ydirWYrh1BgUXjSH5iqLwM7zKae/ojIrCODq04qyl3uH2GbvMBUSRh0miwHIhlmXAAvLQeiOa1CO5kMkzYQYZwFkB5rR24vL8SnsJj3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCEpmXyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCEpmXyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752656393;
	bh=VTW+Lq9W+zxXa5RaWncsKgVsyXUQQc7EDaVi6FSIldk=;
	h=To:Subject:From:Date:From;
	b=hCEpmXyy7NwVuwheQPPpafgo4H0Tys6a5g97jAVcpSOiLl99O4BUc9E9RU3hFAvmA
	 G57CDr2W8H9bUDfnTrtEWznab9Q2P4/hOBUGWUBG29mqQfBmZ/nD7N0vw7XH4oa/oL
	 xMnkqc6my6qqMxgqlIJCHcXxKxPdBHzLvjwsID4ma9GBnYfcSCv2AtioeLDoKE+rIM
	 V4KRIrfwFNoeMG5DlQypyCXnZgKlPO3ikjXh7RcKY6bzUtkN1yDXEBW5HV9d2JRrl3
	 snlkOirq5LBwmcp/QJIuU62A9x1BjVod2XxsrPdpWsSpA3Jc1hFNTaieTi+ztTM8uV
	 PYKlWZgQiBFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94639C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265639359.28484.4444416821981639164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5de2d7d032f5f8f3e12ebede5aa1c54d9bb5a6a456a9a2ab29f723c75c1b2d
Date: Wed, 16 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752656393
