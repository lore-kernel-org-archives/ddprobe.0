Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454245258
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717942043; cv=none; b=iyHFqG9Jo4w8O+ncKR8A5Px54o0lxfgHSl23xrtUi3Wug4kBoUQMsrwj0IhpFxoB5BzVwilOxGiAvnoMWEYRQ16XFYByQUPAX68ZpH7d71VJW1MDAvsCfeA8L1TmiR9yvM4n81kHA7vUJXePN1APdpfGy56BV/CYe+RlHG/2+CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717942043; c=relaxed/simple;
	bh=vFVQraNWHHgBD9KPFmflIVhrAY5ZSGInp/+mkZ7+tcs=;
	h=To:Subject:From:Message-Id:Date; b=m8a9tcC/NxtR9H4HdivEQrHi0ScfzT0M0UuWAWuDE5CRLZzl6KnNSTKpSv7ZkBNVxP73ESbz5B1IiLjK/AmMaiWLYx/ehdQOuDePWo9U/l4UexWdYnzyr/J5BDAf1TI9Gp2HvIPGOVDv5fbrVIEi/I6Di7/PXld0NvPwOXskxu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJxy68Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJxy68Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FF8C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717942042;
	bh=vFVQraNWHHgBD9KPFmflIVhrAY5ZSGInp/+mkZ7+tcs=;
	h=To:Subject:From:Date:From;
	b=WJxy68Q1rg2DdB5WpsqrdMckw0buGhV5lA96qlspjlLzYGHKmLj6BcKCgTa4n8P50
	 euQv+75PqlSRYHj+KHHq3DJVA5OxeVi5YohuM/uBRcfGXhQI7UqJoTfCLhjP+MjIA+
	 oAZS8IiTvih5F2rClx91zda96VDD07zgKNvyaYLRW/OFabeOaBA2ZliTWf63cPqyDu
	 RdiYJGxBwa/11LHjU+e24Q9Fx/LKUX9D/h1MSaNngl9V065YFZO3dYzAweH1kpy5Y2
	 4yyG/C8GojTH3PJTQM35X52tbnlZqUdipNZCOqmX5Qc9OHSINCG/oCx/XYvH6v/FWv
	 iJT2EBwmEAn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8C9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794204275.19728.9208703148249646301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ab16fc96ae2d3f2b1aa1b49a544122489dc29e28b1fe576b0183ff0a21e43a
Date: Sun, 09 Jun 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717942042
