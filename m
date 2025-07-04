Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1304633DF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751594394; cv=none; b=OScpOnGxlMCOm/I5kBIw/xmDPjjPZDJoig6qTDQczmvui8VKvvrJV9NdS4R7CGQymrjWXSjtqybD5oui0X+/JLs9fjnbIEXfCk3wL6bpAl4rSG5/FgTX6TdgPDJ87mrmF/207CsAAmVlDFUW7pEtsTvXp3jvzMdtjDOMLay4gtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751594394; c=relaxed/simple;
	bh=FpdkomUlyaPm6YjcvfoZWPT0sPz9EUjEEtIIy9TyT5k=;
	h=To:Subject:From:Message-Id:Date; b=AbBSZtM6JKVuI4FNVaAfVSWDgKCyf9VlqoPD/j0ywUSVwLguglp3hY8PWZXfqHHfKzRVW5Dy6Ar4nB/3d2wuiAomYUoyN1eJTkmzmCKGRjC+CNlbgY0XOBIdF4Vusukhy8fgfeS+T+cXoEWKd4Lfo/RQppgtfGtcGOp9KXNUcgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czJsEJrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czJsEJrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751594393;
	bh=FpdkomUlyaPm6YjcvfoZWPT0sPz9EUjEEtIIy9TyT5k=;
	h=To:Subject:From:Date:From;
	b=czJsEJrTysrXzTAxpwPFUOGURVUvlTC9KsXWdQ39dU2CKcnCuPIrf0vc4cbJcvotu
	 mJbxZW3pYt9xCqgojJGUMMdIS3drqYalWBSBQGPRiVHhYmgZEz0jSM105hphC2EQey
	 TtrISBH1UCs4pJwtkb+6XsWFesEegGZUU2HuITk06tPlR4iwxft1QzsDGNn+IVF1Qd
	 dkLmt3gIYj+Bm6yBWGaVZERrxvDLEmqUhQwID4TnHKl/ZzRN8YmpSiHA8N8vZwU3B4
	 +NH0sO22bnjhpEjh8hgLfLgwuTVgPccZYGGHTDAKDjD49+JEDKxFLlUHBKqF48ju/H
	 5/u8pYTHr1eTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEAC83F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159439357.21872.15254756692775440471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca95901424c27269319e4d9fc2d0850f2fd37dc02e2cc04cfe7e93906fbb637
Date: Fri, 04 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751594393
