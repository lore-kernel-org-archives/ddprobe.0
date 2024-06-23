Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8965F20E3
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719120743; cv=none; b=TXvK5iKtUwh63wsKX1Occ81VBgSXn8N8CgxWRSH0GNrtKwWe/y79qq1Hqq2Xs4qHg9bUJCEUeloC2SWNR0Ok13PKfZOToyuXV8ClJHxA3faEl8l/o5Mh7vYDDvLS+8fHBRMeCL1gTXxoYHaQkRep1iP7iBnYRqWo/0eC3DU43Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719120743; c=relaxed/simple;
	bh=jlZXe9JrxxVYGWUkxQ4HhmFnPJx5pfmcDXdSBAaBy7A=;
	h=To:Subject:From:Message-Id:Date; b=YdrMKtOMfNpAhf0+8pPLCtxXmgjgZBKhf3fwct2zwVayeF5tWClMpndcfc14VlpE2Z07lKI/qFAtkCfNoyhir5NNffyiAvyoGPcCEDFif6k9e+s5Bdxvh8pbIt/otIf5Rk+zWMMKK5OM9LS0N3aghyIcna0JIazod6uIxoIWsVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvLH0X12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvLH0X12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D77C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719120743;
	bh=jlZXe9JrxxVYGWUkxQ4HhmFnPJx5pfmcDXdSBAaBy7A=;
	h=To:Subject:From:Date:From;
	b=DvLH0X12KqMqx4sXxSpRpvc5mMdijKYjMv9XIx9vG3H5IL2lckD7uUhWSzgOQK8L+
	 LrSSjuVQbdgJVtLAiEwxV/HDWHjGp2PTdmYH6fuKL7WQ4bMKDVly/pwZVMv0dfrn2X
	 r10jWfHAYmBzcAo3Le/7PRA7mFwm6rc93TWvP5IkBHzVYp9oWkAbxtS/d14Wj56b2H
	 7Ntmd1KICxdc0KlHuCGh8JAKY8kJJfIV5WSi44c9Ch38DqSwlKjmn6F8nmKXze11Jf
	 lxbMY0PriLZMHdufZar28e4xkdPx0JBXPb/I5ys8fuwKjPMmC7mACzez+DgTd5Qr0C
	 KgICGMGV0flRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CBAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912074285.20302.17105978736975251529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30afdd740e182bffe40e9e621dba76fa265abaecde774667411f7caae990085b
Date: Sun, 23 Jun 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719120742
