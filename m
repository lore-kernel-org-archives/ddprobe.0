Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0333CA4A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775231733; cv=none; b=BhfacIlFa/lcAiHI4MGQn5NiKAxVTSQcHGrdge4gXZ8mAymtAAnswoUOYbARkOAEvsPp0BDmVptfU3VD/SVfKn1KBCnOCrzGHFQlaBafXO8yD0yua9gC0NwkYt7xuBdrlpBRV2I/s5vsJP3Stk1L7dLIlQmvd8BYjs1jb32QZ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775231733; c=relaxed/simple;
	bh=Y1V6A2H9gAAPwKJg8yE6b/BABnXrK/ojPOuPV4n43Qc=;
	h=To:Subject:From:Message-Id:Date; b=UMjzUfVHs3OhF5ZXijbaizxJNZk4Tl3wsDsloNeJ23s6BSmwDVujgYXSRNUhmc+RBkPJ+0HenV5kLMMqJsX/N7Ol4hdkUqGRAaCXy0WiX9HrkAgPHdgmupNtgaKJw6s1hHEVcEWYBX4lJAy9FUPLOp3fuY89oIJrGeGfbvf0PuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slYXfOtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slYXfOtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B97C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775231733;
	bh=Y1V6A2H9gAAPwKJg8yE6b/BABnXrK/ojPOuPV4n43Qc=;
	h=To:Subject:From:Date:From;
	b=slYXfOtgEEn4FFzls/EUXI4Nk2EhZf34djGrRYhsdVaKbq5daAzRvx2ENeDhYQvh/
	 x4G2ZVkAQ6l/6s9vmv1ajxMXg/jEAKb+B4oEISi1Kb8LvuSVZQIwEC1qSeB13OJ7oq
	 7kcSVok59rRqJDSEi3wOKNip1bjyUhT7z7C8/T7Rss8CNj34zE+FyeMrsl1Q17CEHI
	 1U2lsP3KlLpCKocyB9Z/RohZQ+bc4vcII7ja9X0ecRRKCZFvtJaCG4kARLCvk2xmMF
	 DGkwQFUlBerWw3vVOusIWSZU3dW0pzHONT+UrXH032rB/2YKU1OQWX+WY+aX3/Fu7K
	 Sp0ZJuOp2RLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A7E85376
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523173368.23484.7193828582736571971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ab25e53b829da64c91166d3d93523fb58cf059e7fd6849074eb461a3fa00d9
Date: Fri, 03 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775231733
