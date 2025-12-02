Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C612176ADE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764650574; cv=none; b=i8iDo0z2837EWtQ9B46NHS/nMzGqClmAn21JDWuhXAT86Of+svVV++2Ecczpaccvknl9eqfYSCwuDBFHYNjKWIv1cs4MR2QSc1LojYvE2yIxkgbTTNUGn1TJoE6qmoRODjc8RoAyDYf//8I6I8akEUUvBi6DhUq4Z6DHuEhpTBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764650574; c=relaxed/simple;
	bh=96gdnudTGz6PS49Mq2u/3qWVBCnWK3XF3Uu2ovZ+Erg=;
	h=To:Subject:From:Message-Id:Date; b=mlJVrJIXhUO+ybcl8+fwcUDpi2YswvEMx9duyEZ6KbL5qAE1n7pXg4kcaRpZQ/F7Wl0hZJ2qdiVrHKx1wFnt8XkAnEx1ZwDuWS5l7kitr24oUPkzzcHTZsoOZPfzpYI8JSgIA97eP9gZ5cAYfpvGNjLXpXPOk4swh2oKKrF7mr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUr1/4Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUr1/4Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764650573;
	bh=96gdnudTGz6PS49Mq2u/3qWVBCnWK3XF3Uu2ovZ+Erg=;
	h=To:Subject:From:Date:From;
	b=UUr1/4Vp6f5q7JN9m8KC8NaDHp2ryE0qA9y+iIDvhgo/hYUDMnGvVrQr1ciaFi2NG
	 fHI7fm4HvJdDSwOnkTlQHLAET4bDzleUKPEKrc0gRmyTskDTusMo852I/KO2VgpLwD
	 QKbaFnpBChosU9I08shC2t1rQVDAQl+O7sEoW7edJV3sAkzZI00qH9vsg9lfQmaUZE
	 oCB17sYmRVg+E0bk6w514xhfpjGGcT1Vc1CTMKvPya8z8UXuFpC3EWS0MzcQSE6sdb
	 6QTkGAPY/t8vAZtsq9ilJYUCsqr7smvAhu+1Itp6es5gxihClLX8MSvQS7u62qE0cs
	 twmIzjLQxXNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95095CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465057358.30156.5362002236809814363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9082d7cf46e78b9dbfeb7b287465ee8b4a94a9efdd9e0e70600200f5ebfc5c9f
Date: Tue, 02 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764650573
