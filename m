Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AA532471B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401174; cv=none; b=kBuQBVSwR9RAxhMlnt3N6u/Iv4WMckaMJSxQ0ZKkb+tWFfUycxoWQ0d2TdFxbKye3kLXcIx+fxpl4dygQGxG29kcvJjPzLPvGA7QRiNRTT5+bDXgWO8rov7KNGADSAPmtJaJhh5Evdk/oGM5tq6fjkdpIOH4AWQ2g+JJg970omw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401174; c=relaxed/simple;
	bh=8IMjmVk2JgU1xIx6X+MlMleChYMFVjMlRcS/5wE0UjI=;
	h=To:Subject:From:Message-Id:Date; b=gwWpVOAki/nbD+yA9orHFZK3BpEmAFvrUO/vJr7MUxXFgp5SSYXkBjEeKUY55/HvTVYlf+pPvJiE8X7/T0K1lpYTk6HidesPR78usELTt1Tqp9LfI3FtQv3WK4nZ+KRypdCNeJI/Umqs1GbCTYpY8EMwwRjXSekqhEpN87Bu040=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBW2+cTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBW2+cTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD2BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401173;
	bh=8IMjmVk2JgU1xIx6X+MlMleChYMFVjMlRcS/5wE0UjI=;
	h=To:Subject:From:Date:From;
	b=sBW2+cTuyTzlZ3ybqWPXA2qXQXKCA61XrzjcsBfTCAiwJs/le4vfQVvheLdTUTQ6D
	 PRs1GuUZfYL8X/Tmgyr4Br7zTkWiysNoj431GqIrRpWHgKz5Jm7I/b0OSMSR9OwqpE
	 faEr7DKJ/Y+ltS3QyNsHTFOVUCi2YWer3Ugb3PcVzZknMzrmpHBLrrfbKI2Gsnd6/s
	 rU8P2zVpMqJHKCv7htEuEiP3JCphceu3ywjz86BHOfbzHrRiwzAvmpPLe1zK09F4/u
	 ZkcP2lzQcPe/Owlroz+GuSdxtNX1urjxKExre9KkwOkH9cxUhdThV5bHUh1VY8rCW4
	 8lwpnXVln9fgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322DD3E77B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540117359.13541.17012769300438276166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b0ce9d226c0d14fd04aff371a113368f67458c9393530894d6d88475b66793
Date: Wed, 10 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765401173
