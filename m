Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E717E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733541354; cv=none; b=pqkxoB94Gv5/vDbM0+YdQb/Ia1d/wSz/8Gk38yV+j/6qOIhrCkzUr3q/OpgvL3j4NjpSRMrMzTAKAskcDmX1ILSiqZyZvg6JDUAdosuSjnR/EeDVnR5tUeWgNbjQD5bfDXD9d1mxRtFA8RYSVLTij4e89I+NgRsv1U0l+NvHwDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733541354; c=relaxed/simple;
	bh=spLyJ0mahFUd+J4FWMJ3pUq6JSwT/dwUZLngPj3PbXg=;
	h=To:Subject:From:Message-Id:Date; b=o95PWrxropMhlEQU29rOcf50cb4fdcXuM7YDPiAAo3UgEesRw0DxR1S55CjI//rv6VqHAyof/ZHzQcAqVLkkPZofc3EOsLSuITjRQ9d+5ueocQzbkQueQTnilck1H+Qb0syV6bGQgVhlIxqTBCd5plq8jl5w5aWuwfyVMeHPO6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRKdzTkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRKdzTkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55EAC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733541353;
	bh=spLyJ0mahFUd+J4FWMJ3pUq6JSwT/dwUZLngPj3PbXg=;
	h=To:Subject:From:Date:From;
	b=BRKdzTkZzjgcxXcy1bmx4xqHGS6uU7SY1+g3v3wetrpmV0hGwtAIQziC7Eg4C9KCR
	 iQ+4jbBS3anjl2WJRoWnonrYtbkQDzLU0DfGEcCdBtuYdvgji19iChql3CJqomJApM
	 6UvTQK6AZzWmiTY4Ze6lMK69qhnfKZ+JqQDaRcChSoBw7wBov4onjEK8gicqzENGOJ
	 nRftUl3+soooGKV73vFz2c7Rl4CbIf/GgJMD2h7jbimjn96LH4zC1G2BH5gAzqefA+
	 TFuDr0wjDX7bxEz1uZjqYRAonzs+G814BKdimPmfK65G8FINX424Bk4Pn9BPNzVjYk
	 WePLleEwk+1Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9951EE7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354135360.19292.18372755563067676693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926320baf5bfa797d5c573f67f7f0cb178a3aec8fff16b81747d02025a620b6c
Date: Sat, 07 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733541353
