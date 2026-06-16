Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411713C98BF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781633794; cv=none; b=pjY3kJSTv2h2b0Q1VKUXhf7y0XiXW6Lqnkx3lcXynU/J4vYvjKz4GwBpov38kq8FSU2xuTOegby7lrLiIQ+PJG86DMsN36tZCbxk6O62telqOvLbHiiCThc7ZkvLcdO0wi/ZeNBtb16i4p4kAJuEjSOCuGODkfPkkGU9d532Bxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781633794; c=relaxed/simple;
	bh=LYz/4F2k2M0Q6/WtF5Sl0Fl0AQPWT3/iJIInFL7GPx4=;
	h=To:Subject:From:Message-Id:Date; b=LYjR5rRN+EPwRuJWcxMuFW+ZTvEFCnF4/uKsgkZfdyFzTn7vZOf/HI3PrPGECwqKFBORL9nrXdUL3DNVnKDLD+bauo6XYmprBY+5AiFs1Qvnk15jVGO2+F6vNT6x34d7YnrtMOMaSrvntI70lavwiezk3eIkCgXvUkZHHHZ2YoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov5Hv6CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov5Hv6CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D1AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781633793;
	bh=LYz/4F2k2M0Q6/WtF5Sl0Fl0AQPWT3/iJIInFL7GPx4=;
	h=To:Subject:From:Date:From;
	b=Ov5Hv6CRrBNjjXxpmIbrWy9MFsA5X8V3lTYducpUgWK4RgIehFJvAhXd8PWWm7jOz
	 X0cBE9cAfJPI4Q8j0Fu8OY/UzP4cVoissvhzSylVA413KxMk090aIzJcWftFQIU++g
	 TcNmsakxEkHW8+EwVb5IVgTKg1Ff5v5MHvj6uVISUMPcIWED0izT7SPQ8gpf/Inc9q
	 a3PgITm0sZDjT5pZmQqH7hQRcw96Ewb3pWRbYtQnl5o7vI8zXgHBIO6g6/dSOuGCnp
	 G6QUorlsqYK/affeB0KzR61PIdIu2GP/2GFnP2t/jayDUgck5iDgKr2mJp/GLdBYCG
	 tzSu35Em+lFEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B315CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163379369.11214.5903635295762344320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8044b3804fdf1c4a31c55e2ca1411719edd0708f23fba912d6ad837bf8ded84e
Date: Tue, 16 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781633793
