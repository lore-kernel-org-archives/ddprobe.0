Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F791FDA
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727070354; cv=none; b=C8YYnGW/i5v0XhZ/GnNvc9vDrMNdd0/Iyfhnko2RcaPRyNy/CJYqUNjyM8dK/tm52XlAp47zGHvLi271kFP5t2JrntwY/PoEl7YswYZEe0uez0txJcreoXNIUsGx/sK7q69IzesFOp6RHlvRXU9Ta2SRTpNK5aodoAFlW8X5BNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727070354; c=relaxed/simple;
	bh=zCpNaKxRwD32lmIi+dw8CH1hEZ/rlqI5UZjVwYn5N78=;
	h=To:Subject:From:Message-Id:Date; b=EeDnd/uM8g/dIRSZyYnAVPXw8OBSygW/J/tLWi7tNIfnuO1GDvubFnTRVvCrs0z1rFAQ9+g6nQglR3W1NYLSOaDE5p9MorZb7YH8FiP5wTp9f7YOIVoF4B+By6QSht2V95LhVTkLDjyq6M/x0GTveGduqFKdzjNMhTmkgqxZkIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+E5m0Hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+E5m0Hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A966DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727070353;
	bh=zCpNaKxRwD32lmIi+dw8CH1hEZ/rlqI5UZjVwYn5N78=;
	h=To:Subject:From:Date:From;
	b=C+E5m0Hj76QRONyy/Gy6/+SLdSiYOmpY2J9y+xLI9ScNapRY7shku56BTK/CeTKBU
	 eWvYogjJpPUKbddrPBvx63Qb4DiMad3yGDisdvTNAwCSfcadU4IEK1pImHocbyyETb
	 2UE58T98QlLF1+vwarsd7zq6kwkd6WBHwESk7S/43uCwkZ4iXuahQkv8sxDcYeVlQf
	 J1nnzXOkgTb0xiG/qVxCv9loWJtzS8Vqz7tkYPNg6yttezN1IWdP+slxFc2E2d9qta
	 mWo5zo8vYqnz7IGK4O8O2z+xQYnUMcKNYWbRP8wHLJLs9R2ZBIjxHu1ITRK3Qi8Pj2
	 46Tb3rFGgGmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB1CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707035361.30542.11769646048276413486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3136a26704ac815f294565c35aaca6c3b9759dada45f48392ea4dc6de30fbd0
Date: Mon, 23 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727070353
