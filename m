Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A5F34AAF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775605534; cv=none; b=a35m6cf2NbHn9439uZFk0SKVqrCE8v8sK83zUncDWhIdlLzUpPXGbW5ErqFWP5BTN4wPUnwnJB83R2R/brMhsk7YsbkTSsE5RkPMV3Ophq6v1CTSZE5cIuXBuywuPHoRKyyLAoCt2HViqwafQktaiJs9tbKL9F1RVLMeqgksekQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775605534; c=relaxed/simple;
	bh=c70U+Xokd5dzHcPAK66+aAiD+7eENCg8Q5vPlsJGqL0=;
	h=To:Subject:From:Message-Id:Date; b=KFF2/sEqjQMSdxLhTNCwNacQjtMT7Wq+UMMLqwZkyXX4VXHYduEVXLOFAe7rQscjE9MWA3u0YnZSMxjynP+FMZ++XlRn5JdZqEwIrW6fPgzoR8AvA6b6eOuj5VLI9xPIUgEqdXHt1jw2uS0TNbt1rULRSl18D/CDmoLqSrXWQUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdsSb5P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdsSb5P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44081C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775605534;
	bh=c70U+Xokd5dzHcPAK66+aAiD+7eENCg8Q5vPlsJGqL0=;
	h=To:Subject:From:Date:From;
	b=BdsSb5P0hw3RHeWr+Tl6r+YrbwwINI6+PNB88kys+wTxTg71IDXPvW4Tzw4vSmufR
	 FwUthPL9LL5Tl66DaPd0JQ8sMN1juwBmW+2NVvUp39rar/CxkL2MZ/e0h1ShNMitTJ
	 7cJ8xIOzdZD9I466i44sseOTUltDJmaP0vltYmsRJQnD2qBxI/b0oHtWseRjbtQ9DU
	 Teed8Th3c+ug1fEY5bv+ESdeil2ZUnIt4vsZIoGgqiZXHtSrxtahlcu+iJoOa6lB68
	 2tfz4Te5KiGat35jFCbbrau9X2imltElFcT2dcCTRaYwqr/uV6ml+kDyPjmv4VnZsL
	 0Vop7U2oOYMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10620105D98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:45:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560553398.21401.5166082527921742378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b5ce8b8760e2c510e7773dfce39b47503a6cdb7b5f5f6bc0b19589d9c17d2f
Date: Tue, 07 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775605533
