Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1BD1D88D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764502374; cv=none; b=UlYGnNU0OoNyGC+3yRH+Np1zcPzcLFdv7DtkbUsqUTQ9gUIp1F7XXbqxaayE4OM9BJlkMEtERYI9ZuXj1vHIj+iwCHrDRPmFO8honA3AyRqZMT1KpREIGffxjNtCX4KT1WFObM9GCJi0IZT1mSOdtcscbjDSu+Sga6k+wKB81G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764502374; c=relaxed/simple;
	bh=ss5TeJAp1pTXY7xKsGq2wXotO74ZqVVjT9ta6J6ZStU=;
	h=To:Subject:From:Message-Id:Date; b=MsyzN4yuim6MGjXN9vmVR7F6DnRh9Yvi0tfg8PPZfvRYAnhMM06u8w5lZOKlEMdswZj8sedc+AaiqxnNJUnd6qRDc2X4xMk5SyEIDOLWUCJIvbZlf6MSZtoYpjp930Hu9442Bi7I+yTg/AdHV5+UXRiCBDEKAK9Ir92pFmaP/Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGp+8AOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGp+8AOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764502373;
	bh=ss5TeJAp1pTXY7xKsGq2wXotO74ZqVVjT9ta6J6ZStU=;
	h=To:Subject:From:Date:From;
	b=OGp+8AOPf4sOdWAJ/D/SVoZUfEDFd9hMP6B2T8OkU/EE0TgIwIL3RM4VtGrtLztbn
	 CO5Lo3itL/nfsYg1fN33A5LJC2PTPCZpD79Q4y9NKNYGsUmwsyeaSJF3rDo/9bzDb+
	 FicKMjLPByBHW9XVjBizRn7kJyNKZo1jdp6tYS4ygDzCoLTRS2LxvfP6sLJKwlPpFA
	 wAjJqbNFLPTXqNFy+RvJVUTEqNzKUzejt9cCdST9J7phcqqx5G5W0o9/ZbzkiYPHct
	 J/NyRmX7u1/iTZPFJ4vDk7WUHid4pYqKZh1/wrRDV++jKIIXX3wZq1q13roHYeDygo
	 ZXjjnvN/iiQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EECFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450237358.32157.9405668720187816637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f6adbb23a3f6c5eb7a44fb6c9686dd5a80f19973a9f4346bcc6ede24d67ca2
Date: Sun, 30 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764502373
