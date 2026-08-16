Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA502F746D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786850434; cv=none; b=P6u7TvuZyV2udozLklP4VcbGuMhvofilW0pzRkf3SUFUjbAR844ybe5WrgqnpQogo0yP00yS8cFqn+vKQAaSnCoAIV9qa/KtQr4Cc4nEX/GdGR++x/JyQxlCtamLt50CgQbOFWA5VW3kpqeyTRso0xCDx3PPLToYyeO0Vrc6cSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786850434; c=relaxed/simple;
	bh=o9YutAPhpwQWPUbqKrJhqYVc/UJUeOmS7SKRJi3Tgis=;
	h=To:Subject:From:Message-Id:Date; b=CYYFfSBC0lz96ecyVNoRZGETrl9oCSN2/k9RdB1w2cb5xQLCXhhbUAiJysqPSonpHmQ3gauGYoyZCdwR15vL0ZiCnDB0yblSoq5Lynb+0E/6NshtjjfSEoRNQsbWRCUkPMaB5k9U95jWhJbDPNKt8nucFfk8knWXiYHrD9Gwu6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohdIlB6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohdIlB6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3633C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786850433;
	bh=o9YutAPhpwQWPUbqKrJhqYVc/UJUeOmS7SKRJi3Tgis=;
	h=To:Subject:From:Date:From;
	b=ohdIlB6F8XSsDGHEjGynRCy5Rzf/IrP/gohBpx+mTAKhj6Qb+IK2P2hLTwSyBcexY
	 drQD3qHJDsDxa7LQ1+XN1DjgIszc9TtMWZtjBrsKZ8CrlmhCmoLocX5SIjKqCIFJ+n
	 N+6Db7GxYbQ5a7t2E8vd/SzaYk8TXx9o84ZmDBZAFu5imZkbeR6apHpUoi08fTmc1H
	 8BnvmTpAxKKDESjmX7VuRdtwHj6/y4/TepyvhUazUsFQSXxNxWAPPsdCc73mfPvdos
	 JzVYwMJQfcImRQ1jnt1qK9FzI1ZvCccHsmNJVj5IdMSqC8aHuXZc7uGWRRFgNh9Fx5
	 QL/Va1r10P2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADECEC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685043369.2005.8366280474463465667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f5807d948c809f8c6cb61d34031906ee318cb750ce6a884cb751e682ab1eaf
Date: Sun, 16 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786850433
