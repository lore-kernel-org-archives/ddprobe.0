Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C8019004A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776930454; cv=none; b=YlHZJ0VRt53se2SYj1ZuOG3KEztaYN7eNUE+cdW9t86RxkCEO0DgCfQMwtMyRV5H82HfH+5dDRaZsGUWIcpZIO4Gtnn1vCzUCm9heHu0qmj5lP8tfODQWRrYP+LcWxCbXmn8wTqDIMEqlIVsqXBDI5jRSYpxuwL9QPvgy1/VZRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776930454; c=relaxed/simple;
	bh=lP/joT/riZiEYZiUeVbqX1T8m0d6Tb5RQ/GII+ZToww=;
	h=To:Subject:From:Message-Id:Date; b=Sz8Re56F0B6PS/B1oGNC2zMl25HO1xDdULMcEwnpJRT7CoR3nu0z4Cg1qACYt7TitIb45JjH2JGWrydfatMHa/strCJwz0G91xaFZY9s6iXnKvszN0WEouTxYDzoPKHBtc/e4GDzZD0kaSac97Ao73aCwYjWZM3FoBCtl+KcTkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwsw6buM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwsw6buM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE63FC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776930453;
	bh=lP/joT/riZiEYZiUeVbqX1T8m0d6Tb5RQ/GII+ZToww=;
	h=To:Subject:From:Date:From;
	b=Jwsw6buMPHDHYUcfxNCGXNhuFx5fwBjLvr0KZoyZL8JCqSZ8+OEIRCe69Rp1GVTzy
	 ZbpiTvKZjhHZOuq5JHhjOih8eYip7hO9Bt42/DG0PPDBfecvK3kMs3rlt8+YpHWYiH
	 mecNOhqZrvKxnqY3TVBcP8sdoa/fXAp+0laXunETA7gWoVYMDoh4p74FqyR4UbNAfd
	 ynTBMLe/GOoN0sgqvXax/SLENY5QKPcJr4Xpht8vBG+2UUk7KeXoGV6J9Xr4RLYRLy
	 EgyBGE297qguh/fKVchScz3KGivkkoO4iGOyVsqGWKki4WCzSo0P/PTEBhrsPoZr9S
	 0ANXbuUwl0Fyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B0F99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693045368.18516.16307098766354544075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2170b2b59dc643decac445c782614da8c29405e00891e2d4559eccae44ccc260
Date: Thu, 23 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776930453
