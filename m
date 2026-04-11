Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DD027F01E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775900254; cv=none; b=bkjfpA34TX8+M/69PQs3WmSbGcKmhYF06n4UlF8+syftbftBsBiBWWVg8qiz0kVDqfpWG4M2tuOvURSe3ZTsribvlAVcpjvvZQi5IwdA9QCKPzHbeQZI0twvO+IBr2KHUmifPG7bnatlqWOI2yONxwJvNqjcMx6GPQyT5YvfGXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775900254; c=relaxed/simple;
	bh=5TId/An2zm/NWZcMCmstP+1C8ANf4EfWxUZWpOb8sDI=;
	h=To:Subject:From:Message-Id:Date; b=YONtzuCVvcyRTnbrSp6Hn7hw7h7xqsurW6/t8bG9sgnezq64qXI91MVRrvb5rYlPGJxgUFT7vCbjFTtZ12gJ+4V5NtVTJvNtuUxq6jF2lN3Yk7lU7MEoawUjkiwEu44rY+i/Y+M15AnRPtpk+AogPBEmqxB4FZNMHlJviHF/W8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9vzHj2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9vzHj2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF847C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775900253;
	bh=5TId/An2zm/NWZcMCmstP+1C8ANf4EfWxUZWpOb8sDI=;
	h=To:Subject:From:Date:From;
	b=k9vzHj2kzZCqTKgtMVwmlMGDKqKqZbrReRlCKDw97UKdbpVISmFueG+QHU/l64u3X
	 NZvWfuX2B2CgEERYNbg7Fyv//lh3QsPBv1VM/6P9mfFXXDD6BNfq7f/ib6YRgCyBg+
	 LZI6wXG/yY73LpGxJJR/ubqlf9YaKYO6IX+B6eo7zd4PeAs+F8Gg2MsDYFTEB0L5Oz
	 B6PbAYNsbq/+WoY73SIEa2Gwc8QHFvI9ekHF7KaY/WwNq4hEC68kzn4jlMh1bTm14O
	 ae1VBm/qOEAmNZRfiAIKlqKYppeAtk5CoOxN63C58bhZOzOMWLHyUaOCfOuFX/WM8d
	 gp/6LEbgiau9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD30F44875
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590025368.9219.9746339061686155034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656d0764f79a856f8ca66f15c72dff12c5e6840d43257d91cf768058ba3e031b
Date: Sat, 11 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775900253
