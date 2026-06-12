Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21839346AC4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781295394; cv=none; b=ah7e3EIH01qJao7Tb9PeydsU+iLfIfmbkCU21yCwnCWDGnUAwEIZ+QpM4yyFHBK0j5IVqw1+mLsCF1Hw75mRQxCtm4QqEteFkYSVFq3X/NpjD/LYDo2uTeLRztzWvtdvDrljZQ5o7HNaniiAB6+8ajj+bfSkjKTXRFme325kjCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781295394; c=relaxed/simple;
	bh=dFAzEq7XhegxcrdvlFuHztMOchDXQNputonGlh4iAnI=;
	h=To:Subject:From:Message-Id:Date; b=NtIHQHLaTmQWKPS/t8ymE7t721a1kiygNAQGjt/rwiW9vAiZ1kFKgG+sqjwt5BmtWEvodaHbAhXud9YIfdsvRxPIznX+ihyyrBnqXuCZ8S01Cl4/6g+g2e4mkGudTL/vjII2YswfJBnSs1W2rMozvRMWTAPnysl6laobSXdsI0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM/v92pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM/v92pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C2DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781295393;
	bh=dFAzEq7XhegxcrdvlFuHztMOchDXQNputonGlh4iAnI=;
	h=To:Subject:From:Date:From;
	b=nM/v92pBkybDbO8rKbdCYb8nf/I6vuGVU1zrE6kF4N/bZdp93f9AV17kMHSp9GNQL
	 abXbkZ7nl5pgw64YZXXplRHaa6d6KNo+efnAs5p2fiyjcgcPzxpZQWqh2156uKVke4
	 WIVmSyU63WmlNgRTuNE0hwLfiMJ1bbiu31K9JgOOstlLLCIOB1o5HCXqCoi4I8Bml8
	 amcZJ7pFYa8J9XR3VwYU2vE0XhrzZDkMtRXqqik/cC+x6eE1WYXdNZbu7rfzEg9p/5
	 RJz+KIQfUqOiXV3FbtE70Pz5GAINsvoqMXxjLS8jQnzcMjSphxLNiChHVfPLt5iB9e
	 xDdkVYSETw8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B87CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129539367.14774.10588764005304192786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac0d4712915e735993d5a28719bacb4bfc092a3c9c861860450eb42e50c7889
Date: Fri, 12 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781295393
