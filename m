Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295FD309F17
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763157594; cv=none; b=aMMkIQpo+R849Eb3ktwB2DzTIJ9UOgdGdL5xPStJbASIivKgKvi++TcvWMx8EA+L0LHsBqEcbIcfRz5fpDfeQrYdXW9klYL7K2fhkJOOCu0tEGBwpjWXFUejMklRKWKZDaodAlnKOCnuhA3Ms7pEIqHKzVyTSP0KnB/ABeXNehI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763157594; c=relaxed/simple;
	bh=05r7tM7JrLHCu5SQm008k04RdCXn41Wh5T+mXt9aYLk=;
	h=To:Subject:From:Message-Id:Date; b=qM3OGtpPeMedYKyWaoxOrsz36PV8ERwQclDLtbFn8q+bkErSvQyQ7q7uOWlkaAAQuX6Nqh5Nx0g+lgdgj3g2Lk9ajNhEeotNj+td2tgSCvXUg1JLsgaGb8H/q5A/WXdtowzSvaR9G/+cD5ZU4PgBabPNu7FAFeZ4RGv0jVutSEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNCQragK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNCQragK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC92C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763157593;
	bh=05r7tM7JrLHCu5SQm008k04RdCXn41Wh5T+mXt9aYLk=;
	h=To:Subject:From:Date:From;
	b=TNCQragKp4lPCQi1ebVqo/fhcgzWyYRsfwsNkkLDvxM7oCFD4flI4sC0psjYpTf4T
	 VnlhRZtawtos1oJrrHg22oISOZSLNsLhqff+kIvMrRIBeqVEX3bstwdQLuoJ1VKb/p
	 37/o72FHjHLblXS9wr1GQ15NYVyg8vMeCxgkZYIONYPWSF86QnAsbKfNPe3G58JG1B
	 J+5rfTyHF5Sm0XpxrwTUXT9EFc1zNywFXH0YuMfh/Q9LAgHQ6NYF5WK+PNxS8oOCsQ
	 2rozPRPKLEjpHgO5RLPRcfE7sOWeDy6fZGFcYlLn46JWpUyy+AAPu0y6IExGgPFjdm
	 lv/s710wq5y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B4CEACCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315759357.23455.2429448719591410375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7a38c74a45b9407e25a76b0e7f59b53e5b8d86c0c33c778b423925a45ff195
Date: Fri, 14 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763157593
