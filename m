Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7393BE153
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774956294; cv=none; b=EyynXfpOloqs1SUmgW141aoA6FkgH9iuWC1S4WSMthMTmgIRhQgXv8Lj+q8Ul3hm6ivMZ2svHnEy3gvXesTfc4vu9+ImgLJTG+RsAD+5xime10k9orpMiCk7/ammsZBVgG0BjiRrZHyz44spmFnZGmMnD+dU/jchg19uNc1Mhaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774956294; c=relaxed/simple;
	bh=IIvHGznLorsgo9sevyrerorIQDmnY9ABvX5mg2rNEEM=;
	h=To:Subject:From:Message-Id:Date; b=rlFhdS63eLg0ZVDczgCH5pmkpBsHm9B6Ykn6SLAx6KuHt3a8kFOUHU84dBf0maD/JPKHeS+Sz7R/uudOppZu34/TT2Q2q83OrqJLHa+jwcT4nkV/CVgyYIk86CqmmRyhst1cZ0u4Yh2TmKeJJMPsVEj1V6f4aD2k5tEF9P0LLrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVTHXvMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVTHXvMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF4BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774956293;
	bh=IIvHGznLorsgo9sevyrerorIQDmnY9ABvX5mg2rNEEM=;
	h=To:Subject:From:Date:From;
	b=YVTHXvMzcz9X9ws1D5icXgdo4NSrkmaBYEtmHunVDjkJPI86IMvdD9IcagBnbAFjb
	 HhT9/wU2DSgq8O7STzVFLYNepZ6yKdlT9cAQc8XNaFDaYHj0lFKwvRwDIWXjOr6n7a
	 DCwGwmLFcWlrIZAwuKWPwqFxsNzVxieavE5G1mjUs03Wd/LN41KIPhWjYorN2ln5B7
	 DQrRJmseIw4xNgzJfzKVFA1EHAgNG5QvHKyf8k+q1Brc1jw83UxGB9Q6gbyG8DixyY
	 4nbVWcQsxmW1OwPWMcOJidLvlkDrdsTo0E2zb//2KbBzyasYf9QfNHEp26nsGob54n
	 e8gAT2OdrK6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E661061B2E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495629361.25705.9951093551495040946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c67ca19cda95565bfc02055b75446452b0a2240f75f199e367812b16ae25969
Date: Tue, 31 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774956293
