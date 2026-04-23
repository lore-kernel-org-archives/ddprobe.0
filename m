Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6779364024
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776931654; cv=none; b=IO1yICsi7FnCDSb3nwsUFmS74HNBEz9NLyGLt+2laxbWfdiKCnpMkktFAE/6V0FT/uIc4Twrux0N4rtShhUDcAIJbo1wrhfiVtFK9hl0Jki/lOS7ZIjJZD9oN31KQ7N2LLPmhxe6q4kKWGC1YAVW7qc5FfjBclwwBilsdmarVrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776931654; c=relaxed/simple;
	bh=g2+bsJtfjEnVWihvER0tZB13ZGSD4TkAGRcp1YstT/Y=;
	h=To:Subject:From:Message-Id:Date; b=g9KNfkKra2s6R5ir7bbjw2moVzODNuWuFPs2wHl6RwvbPU0GUqMh2dC5fOB1meVAcJB9+2blH0+4L1iwi/ErL3pH/P+DEbwCaYi/9q2km19uRKjVHKBiHpf+VExWAea8vpG0Cs3XDcN4DZ0IJvpi6MJaz8Rf+Vbqn43Za4kqvOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lulkj88Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lulkj88Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8921C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776931653;
	bh=g2+bsJtfjEnVWihvER0tZB13ZGSD4TkAGRcp1YstT/Y=;
	h=To:Subject:From:Date:From;
	b=Lulkj88YK4bez3a/V5dne0zz4q5vvC7p2sDXWacoHEap45ailC+umovVFBcfYNF4k
	 Qmbwmq7BXxLmIwT7iOB+fs+oj9DWvTYdRTP6Sd+xbcXltuLv2HKQkOg9biBpWPu15a
	 rZgKPL0fguv59fE1XiNu15DyXbcBP8xCwQ31F7clHIUxZvT/ibuWkIZPsY84CCgP5z
	 Z41UCn5vvi4QHdDcEmEP5FQvvz0iobOHlAiA8Mr1U+8144FZOxEl4szggjb/9RVDou
	 jy6vW0DRYvk/0DyeRAzjLd21rfr+Fc+GcYeukUmVLyBmADMgXIhnYXaF9ckmeOrhlM
	 MFs0YSNQsMElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981DF99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693165368.2089.13987808427948208800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b748cd96ad68496685b8ca1406d08e468e0250c3a8b4e29686a0bd35a05f36
Date: Thu, 23 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776931653
