Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC378F39
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771298694; cv=none; b=f73hhQoY5JubsR7wlycEslkV864yZYAhDLDhzgNKCnwqoV4e2qxhmvM/ZfWqACMvBc4LvJzFQ/HdCETimh1+vMjeTu8jfwnIKfN/mlk8El1iyA8Pbk3YytqM8/8FmFKId7X00XhT79l0iXkbnNNoEgcZEz0ZrfjxrL885DIUhC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771298694; c=relaxed/simple;
	bh=JAn7LraVpWU2pgyj0sR/RatliSHFmP1C1NAWg4J4LA0=;
	h=To:Subject:From:Message-Id:Date; b=dGPMXBcrH6/aYHBwHS8ISKyg4DLNXt2uqZBmHLIrAwQFc/i5ExYpUuUwC2o8z1zjiyWROjb2FE/CxsM0cx93zwdDBMIm4oIgFU7wzTgb3/+CNgcqssJypPo6cK7DR/uDvhz/oBnx6Dcm85z3HKRf4WGvPr5TVwshn9gb3nxua5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3uf3H9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3uf3H9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD745C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771298693;
	bh=JAn7LraVpWU2pgyj0sR/RatliSHFmP1C1NAWg4J4LA0=;
	h=To:Subject:From:Date:From;
	b=B3uf3H9xqeISFUM8ZQKYdLkpvfvCWWHEN1xVrkXLJaNhLuFKh9eyEqUFD72VcavyO
	 PJup9AYz06FcMe71Daiik8xQo+Oz3axPh0xSFhNhQv3P/Me46gJ+qYTinVwanax3ln
	 58EZpSRhY9HTrQL7Qy3+GDguGPT7ScJNJna95dgArMBNMt5ldBOx7jCZOQLFgKdjah
	 Aw+rA8vH4mi+10fzVvTNl4BRDLvhpGBNRKfrncAPEUd43fsjafefwe+v50rYGZZE1E
	 aWf6ajCgCWsOu4bwhJcafsCx//lGZRAVas/SULk7Lxp72nzjXrdPoSsqvpazi59xX1
	 QkxdNqk/+40cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B78E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129869358.25550.3416595151234033279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bb2986518a9b87686598d0691c6aec49f6de172a7045faf9b90730f8021856
Date: Tue, 17 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771298693
