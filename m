Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27D821C160
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793294; cv=none; b=IZF6iETtB5e7J2LgPL+qNeCxsTsaBx+Fjrr4k18oGCdQbah3wL46OMCRwJXBIPt78oFLEfbhx+IK6U/s+LrQNBRwbbrn/KaG9yBRmgC+72rkH2MmK62R3viS8Gv2L57ecxJwvXifnNdtPfN0nDE9DOYq3Jch9CTlwq8L7hwEMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793294; c=relaxed/simple;
	bh=BgcX6wChO2hWB98ksRVxqfFnDb3aoPsydvZ4WeBDS10=;
	h=To:Subject:From:Message-Id:Date; b=fh+fcDz4q7aQzpsYSajnIZgxkrfWTpzocjOWEJSIzjDbb0hB7YEuvHrT0db9QFlPeltLvCFPR2yeLUIh6Bc7WQSJ8+rdW3ANgIhCacSio4FoGlbKNoAT5+kPWRhnumsRnGmWuLSo5kcUu4+sYUPB9MFuz1aWPAbPlrF5w1gmqNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohyY35l1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohyY35l1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E955C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772793293;
	bh=BgcX6wChO2hWB98ksRVxqfFnDb3aoPsydvZ4WeBDS10=;
	h=To:Subject:From:Date:From;
	b=ohyY35l1EAhy0ScWAgnNkaSNz0w3YhJExmC37M2DPGllv2y6yoiihxwd/3wdspgGO
	 yBbGlr8puhYMeIO8NcSph8CUkJy3kPACfLYe8TdKzWVhM/YpM7BlCMgb5KZ99BqouE
	 xzvasipv6nleW6QYguA33xJGWr/CsLPGUZin+gCoCbm764zOe7tzobGgADHuxwohk9
	 kbpGovyJAIzL5+18hXr/BfWnE44490SC4lu64ueLVcifGEVDG09ep671bCj2JgXoYG
	 0js2q0n2tWjlW3HrNcrUvPw4r5X0x48O5dpl1TMmK/ihh8Uk4JN61f1neXkLPAeLSk
	 zTqS1gbOrzqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9DF01825
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279329357.4092.13454998494599074991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f8c61d81559d1127ec3e7ef2a2150d3f9886f2ab473057de520c4c5f54f7c2
Date: Fri, 06 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772793293
