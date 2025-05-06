Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D3121CC51
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746574195; cv=none; b=ri8gjhmugkRGiJMvCrK1c44nuT5UgBtuBJjePxrCZLWJQmjvtIXHDWWpSyplmQb0pE2dLTSZTrFYRMgSJ41o1uo53pqt85AuBtb8nFFFy3oFt1XQknV0J0uh1Z2WFSvXVSwD7UNPyOllrWtkTrFPbBQzZcevO/88YlqKcIlyNXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746574195; c=relaxed/simple;
	bh=/oGKWkosjZNcfLZZHFiu32im2J9R0e3H6cSxtslOb6k=;
	h=To:Subject:From:Message-Id:Date; b=DjYpk4ewHkV7+PuOJeaIYDl1Q3DQha1ecoR7pisvLoADJsTkciwN0QXZQ1e4ze1Iwfo0jBDCmqIkke70k/g4fsjAPMu7lZhhurbfmaaHU6ca8BN739RNKHMP/pyj1cnfUmX2hYKyazah1uUOpMBglNOhsTmyOcNRI2G7+KDTHPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th2qh4Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th2qh4Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E663C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746574193;
	bh=/oGKWkosjZNcfLZZHFiu32im2J9R0e3H6cSxtslOb6k=;
	h=To:Subject:From:Date:From;
	b=Th2qh4XlaLSWPDxH43jpotOzjVHj4uQ9K4ULKoccQatTKjSSYY1Z8EVLg94ckZUBO
	 gacgvqmxmXnPmgE92C/aCChS6ROGXnNt4nwiTTm2MFghAAS/WgCP2i2zaRNYBfgKr6
	 LdkpQ5hwQMZK7zVl47lkuwZugEqkX6cRfG+1jgGnNk2U9f/fMRtvInzHrpz71idhiZ
	 NscuISd/nNXwaUjsPD8Nzt2ddVpflZywhSC+kMB1u2ACqY4T44O/WU+zTLQleGJW/F
	 A7xZkj0M81ZZTcGx6m7vqNAAGbOMZbEq0pIXsmbqR8sdD9+zs2CvfHu6IZzoQ0ylwX
	 ilxY2uXB7yNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E6C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657419357.31631.10891353403802097220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1a3170279c24f89e3ea3ea5de603bcbbb1e09258bdba44be9c402f0a6b762f
Date: Tue, 06 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746574193
