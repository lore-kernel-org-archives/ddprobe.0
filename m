Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED51FF1B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744834794; cv=none; b=hIEZLGQ9rnsVBeTCKAg4pHpB9um2aM37PuZ7RFdG4N8//7qFuLVf2nKlzK+fmCcZa/tfsGt/1uzma6Ykfd7VB9amxu/j0Jhdi18O2wMy6QYsO+V7zr+5WRfMNjI8bDbaymeJlYbKTu59+JG9muGG0mBNXnOIgTvLZz5WvdSewmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744834794; c=relaxed/simple;
	bh=Tw1IoF2q4uS1MEcURRT/M+gZw47zpoE/Tbnjb1BZ+RA=;
	h=To:Subject:From:Message-Id:Date; b=iNO6royP/chqUSUCxMlG7xFqyEC+/cXvOKRz4XsqZdDgXreIcIYMFGnVtkAlAmSpdeen/8h7lgMNTJxLYQ3H7qSymU34zbufLlNbbrXuqI3KZD7zvCwDFG+QdCVNx4IWOYWGctBPMNFyVkCtxANMnJGRh/s7FlVAKVqzbyhVuXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAnZK5WT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAnZK5WT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744834793;
	bh=Tw1IoF2q4uS1MEcURRT/M+gZw47zpoE/Tbnjb1BZ+RA=;
	h=To:Subject:From:Date:From;
	b=SAnZK5WTsiY28zLgagynMSpVMyS1eD986l2KUukc3cHVQavS166ttknxEol8Ojy3o
	 xomFfcV6NrZpICXzbpq+2mQQs0pcOuhC3LZfz6k57r4nsLVXMbrF91spDsaSQ90zkA
	 DoMNgyuknfnoi8D7JzrQItQf3uk4t5ZyuhiodWVxUoaYizn9cJ2NR0XnP9qoneP0xW
	 JJYp7oilNGENbHzwgN6skdeNsX3yQNCvQbAQZRj7Q0CLfTtw+P2hHZX2jZikgr4dMW
	 JdIu7QPLNkxb7ZrdDW+Vh0BS9s1MbJ8xID0Qjo1eFD05bOTTYJxfVdJcF+OQAFAbp9
	 v8oWVayLpZyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FF7C369C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483479361.18028.2322147522957091813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fa07f40ac27ef311f91e8d7e342554b38b6ff4a4103f45096f765adbce6161
Date: Wed, 16 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744834793
