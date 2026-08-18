Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCDB33ADB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787035834; cv=none; b=Nc0bXu2ZC63vVE3XF8VtrCysfsouMZKTEJMzd7iGaCDEhur1gExj1F+k+PceXMrOMEe2/djhIZw7RXxtw//lB1l8Z9eEOu6b5sBr3TEh+Xjo9MlIkjgVKZwJzxvhOAwL6JDQSoQ+CswMHFYRhijIOvUWkDVb5UaP6f6M5juvN88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787035834; c=relaxed/simple;
	bh=VBdZekrq+AvWO4gsOEM78IcHIBT1QBoFkW2+IFE7D9Y=;
	h=To:Subject:From:Message-Id:Date; b=Agc4jvzODMDqkxWTLArEgX9pv6KBp/OmLtHZsnkoi/7OrGAFkB6eUCmC+8dV66UZCuhwqzvUEwFb/9p6wjdgWLg5tn9ll3AjcG4wxdK0dR7lrdnoZD3l7gb0BlDVkorccsmz6X0E0UTT676Wb+zHAP0ciFAnBUsM+MpuSnTNCzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOYhP0Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOYhP0Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C0FC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787035833;
	bh=VBdZekrq+AvWO4gsOEM78IcHIBT1QBoFkW2+IFE7D9Y=;
	h=To:Subject:From:Date:From;
	b=qOYhP0SdW2h78HrozDQtOpZFYZNctDUrKelQcotM0yd7ElMEVWhU0Ve3taXmmTHji
	 O9F+Rgolz2W2KdJIOz1iuBR16h8P3eu/MtQ5a1Qa/e74L1LZoDkOn9hDToYM0BPVau
	 6C7+6UVlJSt449rce855FytrahA9aJv1F3lbf300cICcJVvRlFjKKGqvbMM8IyodpB
	 VDcVZVOSr65cT2EZZcmwXoMkSgQSLMmHxXxo4tLUNu85JHazaP5ix6XALj03wId4Qx
	 qK9fByziHsMm9sAuO3v+P3LaTgfFiSNld/6f1OpUQNKwZtyZL94VlRbZauajq5oORX
	 F35ZiuNk2Bqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FB4C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703583369.7652.16466019114666729552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358da39402c3d7b246e6136ea8fca4555348c1e815454ba3e31d3ee507992207
Date: Tue, 18 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787035833
