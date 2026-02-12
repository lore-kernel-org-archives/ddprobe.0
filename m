Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C9625EFBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770937494; cv=none; b=HvhdViRRM+pMuo1EYY7R28DY7NzXSkzhnGrdXibxHi2wT7L8Wvc/kVU6PpKp64l89ikY/238OeqjGzt6xxLeGTzGsPJWBXlxWg3kv6eVeFp4W7sVO5dWseW7sKVbAqH1i3iIuWR2yvD/yJtRJQ7YI9yIMTsk3l99OnEbtqPr8NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770937494; c=relaxed/simple;
	bh=+A0ngmApjRuySRfyazmYbaaqJwBF6i92qTwFzvpFznY=;
	h=To:Subject:From:Message-Id:Date; b=qtxXRkVprpZMSc0ZeQaquawHB9pVk8dDmsRdmze5rf0Xpx3aQUioruc39oePNQI/7faSb4humX3ESM6TajCZEUiQ3CirZqWyY1/jkBK4SyteeUf896+GG7sDI58g/nr/ts1VnmLivTKsgDEzFeeMwC9QkiDYpr025wJrftjXUV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG9RCb5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG9RCb5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC260C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770937493;
	bh=+A0ngmApjRuySRfyazmYbaaqJwBF6i92qTwFzvpFznY=;
	h=To:Subject:From:Date:From;
	b=qG9RCb5qQoLWWR5J/aH4V+JqfqtOgwgIJIGKnbm5lXFt/VQxh8dptjritLoY+bUhk
	 h8+aKvKDEU73LKjXtgcaRF1Iq9+laj30XlOAw9ZJuCB5RHwogMNXz23VjV7fOutQPk
	 UvAGdniB4h5lKTiVL24ZvWuW9CO4zml+M0LlptyVDdlSeeI3vjMxznp7cSYK50RQ+E
	 c12QX+XcJwa/A61hELiF3REj4Dl+sRltRffb7HaF/XXNtAzGLLXICiicszv1UsebgL
	 ik2Z7tPA+x+GtZy5iKOuCnOMZVdeWYgtmlaOWqBCKYO2p4PWoElGOWk/acFdyk5WgU
	 6n6BNlbkAga+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9833DEEA86C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093749358.943.15346061011286955534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ae7ffe937bc895b7bcccf7f629e5ce1d35423025713d1e25da1507f074628c
Date: Thu, 12 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770937493
