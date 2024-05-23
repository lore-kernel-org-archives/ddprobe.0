Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494E020319
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716435203; cv=none; b=nY7dWa3c6rNg0P5mQbO2xv8XWwMFANCf6xBv8x+Ojq9L3q7lR0J5ZNwCcYvQj0yU4NgekKYK9vMcbQ/M5p5A1Ra04cZ23T/svW2f6Jlf2So6v9dTbC7yhZgp3tlNRNfW9q5zX8s9PDnx/5oRh6TEPKW2DpAUJBf4V2GuQGmHGwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716435203; c=relaxed/simple;
	bh=eDXk+u8dAn1c/NNDbZSqYDiBZSFc7CF4VVR9Jify3HU=;
	h=To:Subject:From:Message-Id:Date; b=OztG5OJPZlS1X1vscXNXqjKssdQIS6ZQqCCFHgkDKSnQSLhdBkubLTCAPqBJ/zrKUNiCprkFHZOdFfibTRNj6V79TLo1zYFdZfF+UZOoPsuyZbW5EXEC5U+3DVYQTV2Px/rxlGg82mg2dm4qVo3rj1exfgT5U0RlUhGiEjQ0nTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVmYdPvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVmYdPvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8788C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716435202;
	bh=eDXk+u8dAn1c/NNDbZSqYDiBZSFc7CF4VVR9Jify3HU=;
	h=To:Subject:From:Date:From;
	b=kVmYdPvC5lBKPE+56QmnfTdwnEGEojg1EUoxXPeSMyDCDWZniPMg6Ju503zKO1QNV
	 vSWnjDAyG4RXoFbFD/DkcYIfrsdw1LhdcKmRKpMRA9v2ce1vjgeCvhjBe03kzKL8y1
	 FxzCc3EDm+v3XHGCtFvurOK28bpDQxa0yIGjtbOt123j+pGjinZsrSozLy26uWRAhO
	 VrkYLw5KAhD9Yt/uAHMydx1AvSF63cw5LwEn5cPB1PEdzJun3IjULgegAMkFWEJk3Y
	 S4W9FGcg6QYTSAvKFbnlkHSq0u4dMXw2FboEoPIWeFsKdl2d3izH0vIiu7PtmnLcH/
	 g5b4e+/z9Kp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C62C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171643520278.22580.786594202927936762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced38352eae8d6b1e1a52ceed07b96811ee81cc30ce5cf69fefed2a265ac00c0
Date: Thu, 23 May 2024 03:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716435202
