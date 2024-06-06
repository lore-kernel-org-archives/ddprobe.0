Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E312E639
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717669643; cv=none; b=tlc3emSuLhpm0O78HvCfYioafPDlZb8/3qDq0g6Gdb/f/MFeXiWKzGqK+M0VeTX5EUsspE7xz6MrdDTxLO+xG/Zpuu/LFI64i70sWYGA+h/JztgekSeIueRKoactZsl2ulT9a25OYZHf9/B+TBq/emVtiu0lZiebn1yJnAl4pJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717669643; c=relaxed/simple;
	bh=qIzoLPeSI+t9pNJRJj4hHW/P9hHjYfefdcRYLFNrxaw=;
	h=To:Subject:From:Message-Id:Date; b=EVC/+YpuNXXOrOmRI0miM/y6WTg/WFfahDJJu2+V2AdAafJRPzSU0jJJROz6H3yJzowo3oLcyxn2866ww9Aupc+By11A+kbegLkyG2zIRRL4JlLUkrEUYIMh++ua9rbxSyfu7lpSYfDaDKf+tw/SImG62MKkKE5v0CtVDZt5FqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdtW0KEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdtW0KEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE5FC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717669642;
	bh=qIzoLPeSI+t9pNJRJj4hHW/P9hHjYfefdcRYLFNrxaw=;
	h=To:Subject:From:Date:From;
	b=cdtW0KEvx5lFFrce14XADiSBFjQRfqN6PgwtcfRWuTd1uRrMr4joxXHdIwdmaiUBR
	 hgcZtZwkEE3Jeni4JWkGCasK4YQyKXlSlkmoEZ/YwRgJmwpfNb2eax8qilDjP5O6s5
	 K1OU58xWSwGfL93Y0gXTekP/sS4dWmkkNvKULvQWeoi98uNLWce/3AM/0KR2DtWaB4
	 iLqepLqc14c1niNfI5Kq4rrhhqkanb7R8qRikNHtR/68ngS/0ER4Od+gDzmz3rTaxr
	 /9xgw/fKDHHFqecZKtTRd0M8Qu7yq6xvqNSA7bijYnNOQyowGFyW3L2LVlbYbPZRil
	 Wb5PTnpdNeU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB764C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766964282.16141.546776419281008766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d2aa262ac98e53d64048ab30cf9d16090e9504485a31b6053e087228df18bb
Date: Thu, 06 Jun 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717669642
