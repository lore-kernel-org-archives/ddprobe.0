Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B2251C5A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754134194; cv=none; b=KEVdH2LKzpd+jjlQcsx7mnZGaaETHFRiq2VvKT1xfDS+++Ox1dr9CA2AOgCPhh2WvLKVYD0XCMd8VUe9KT0UxakoXx8/8BxkNqVIyDVjxKd3j0H6uv7M6GanF2ZGw1QETBwsZG0LMnAQedxg655vuJDIGkhO7lQauow9dzrTMy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754134194; c=relaxed/simple;
	bh=o0CfU55Is/NBiibSgw0wWA5+8WN6CNpQDLuzK3DYG/c=;
	h=To:Subject:From:Message-Id:Date; b=rDUPYpgRg9CHi44dwyorORQXRHsf/r3FBmOhgAogsNzlZMzF09WJxfFsplpYkfQay9w00be/p2KsA/r2WmMNbnntOR+oIPzIros/zi71aRgacm+cbLf/onPITQT6Zkl+0pG3Pgyfxb+EuXBZZwj5cawDYkZWPDL6DdoPd71c8K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcJa9MN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcJa9MN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F83C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754134193;
	bh=o0CfU55Is/NBiibSgw0wWA5+8WN6CNpQDLuzK3DYG/c=;
	h=To:Subject:From:Date:From;
	b=dcJa9MN3SA5Rr/fMM6Y+xfogSM/LTp+EivMju8TIeu2xGsZWLeHQh363mH8HpdREC
	 G6DMMTNKlVDf6hICBtgg+lf2vmQXliV39/enMIL3f9ZH7teRb/IBHRf0tFwr+5Iry9
	 wWfC4qBTGKp/j53ef+tKegq8M+2ldfqgto8FeaIQQvznyHT7GXl2Re/kMY/SmRB2ax
	 GUpabSB/Dqkxw10arEJ1+6qfISYRhywA8MIL+LLvQV7O9TBxbcz8UgYi4xQu9Ryhjv
	 GR7/SVACMAUIhiz5k382Zbd+n/fDFAaCvNut8JhkVdybU1NP49ZQ+EF16pZ83lxhB6
	 A4YEbx2YjVC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413419358.27472.15568396738286244763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e1f94885acbab42d10f2bb4940692eaaefd12d311f729d1a4d5926d0e37e13
Date: Sat, 02 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754134193
