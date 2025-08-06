Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA9F3595C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754450995; cv=none; b=AKnvB7JAqkV1pfJkmKJDaxNRxoIk04AfwGYa6dQjTMhCIHJka354In+GvcnTSIsUaBKox1uBrNtM1kuCW8SPLbk1IZh/TkhdF23sGg1cJ5F+HHtXCkFC/LkA7JZcc0nQDwtv7s16Aq2Ciz2cIHdDfj91QvYVeImilPXD9b1A964=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754450995; c=relaxed/simple;
	bh=Zcw/JCQaOOJH8E+lo2zb3aQ28LqDM+75YNmDjhRG5qk=;
	h=To:Subject:From:Message-Id:Date; b=NAXAqG6p2ZTfvlNFCoAv8URigGmkRXz2cavwpXU146wMtBrSoqfjoJpvNioHILJlx2ez9w0ztGAcxKRQ6OBPhzVApP+1I9GO3xhdIPNC2vbqN73czFnTJsoFarxpOx/IQ4Iu+W9y0EsEYIWjwXO3R+0kKBsTWpWSSVkDN/hXLpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McpzMidS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McpzMidS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2821C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754450993;
	bh=Zcw/JCQaOOJH8E+lo2zb3aQ28LqDM+75YNmDjhRG5qk=;
	h=To:Subject:From:Date:From;
	b=McpzMidS1TvBAvCfOhF7z+Ual9y4e54lsDjPAAF5tjA87XFG3p5EQ26PdLBnkdsbb
	 1viLuzQjF6oucJsgYFnDql4r7rTHaXZ7wFaJsPqSxszQvI7Ohd6hWzVWfKr5uS7Cse
	 +DcBWzsLw+UoTthdrLb1+c/0OL1I8rOpF7M2lokSkMuYPeDLlaafMHYNwADmZayh7g
	 014Y2MGTmlTjWg7/u8WvGCIAWRNVLEHKfJFbguQpULM5TaZg7vXU3Aaa5jb7H5h3o4
	 LfzeOZlPUl6nL8Z7MfeZh/avVA2SHBZop+di+GRmTBuCYsYgCmqKcZQ+3OQDv7vL7y
	 grPy6AW4/7SAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B07C87FD2
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445099358.19934.9513358198299537491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffc67e7bd016f6f3f7cfda3f799148f56bfcc5733628b09f89513ed2f150c80
Date: Wed, 06 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754450993
