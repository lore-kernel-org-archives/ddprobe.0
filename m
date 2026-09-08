Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8798F56510E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788906634; cv=none; b=CmDch26JQzv/1mWqxXL0+m2fayLSNC33XNY5ok2VzRMbot8RxuIi1Wd7Vt+Pb7Ix2OSgTbU1gD8w4iOLVQYcsZnOEEfeimp6LF5/0CXFebIsRYOrrf6znenpfksOMazj+LkWZeS1H2MsyZwkgpRYs3JtdRVAExLUqemmsTyLeGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788906634; c=relaxed/simple;
	bh=/unyMhSB8WcJRytt2AiCShTdS14ejv12VxaL6viiCQc=;
	h=To:Subject:From:Message-Id:Date; b=lurYLy6zfI+rp92H92qTmD77mBe33QR8qPSpyw8UF6zfe9JXitmHhd7nIdglHP2vKyo1m1YmxI63lkgstct4eNbQiSpuFZXs6KiQCnVDzrNvtqOoR/mmq5qKyhsu24JnBUPeTx9ryae/gmZTYASQZOvfevS5RHPHmlgqJOgHdrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFHNSDva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFHNSDva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788906633;
	bh=/unyMhSB8WcJRytt2AiCShTdS14ejv12VxaL6viiCQc=;
	h=To:Subject:From:Date:From;
	b=cFHNSDvaGjPbhjIAsw2XNluwz/VihsGyLbSeOv0J3dbDKyNziNf5rKSwK1amgHbPD
	 igtP3UqwrWdzGT1+pMseN5Pa3YmuBMWN6m+PxUMpDQzXG1BeXaYrObepuoaTklgCRu
	 PmcISiLWPGVd5F3/DMMR6EgLDACx2k/ZsZk3/V+qhsmafpr/2SzNBWhUaxowCOVUuH
	 2j3AKJc4E0bo5OlO0soK/wggOkpUDy/vKxDPklN16rzEJYq4HzXR3aMDXp5A9rHVSB
	 sO2THyLXdLVVFQDUZwDw3NUZmo/M0uCafBvusbSvBOph0JpKVj+bYEo2LnCpnppfAs
	 QG8nlYllsIcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0341C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890663370.25613.8087102828342907086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a703aa3fab3218df571668e3546d4f84254d634e6bd52ad7190932362d07f6
Date: Tue, 08 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788906633
