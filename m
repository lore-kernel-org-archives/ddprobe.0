Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3898C360ED1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790991634; cv=none; b=Dx3kcwxaX5z7AIALVh1AI5rQhiZ1ZBQlhN+J1xr/AO449F7LzaM1cQlferptJ+rEellFXNkp+qLlRIsU0IjVXN2DL9weN2u8Y5+DTnwuqSaX6RvkkTQqP7DS8VZDy5kXktm15WaRgZVv7XnZSw3dWhZCJsKQ4QokNmUPlBhtygg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790991634; c=relaxed/simple;
	bh=t0jWQZlOm/dH+4+JGvo5OiJOtk9JXO4GCdqHYXlg2MI=;
	h=To:Subject:From:Message-Id:Date; b=HvT4/BP2ospN9J6rKpZpk67jucyD/VXabl7tdczJZfyNfy/BEYnPf0Wi9K6jUtOlPYfJXd67h2nYpVRa2CIdNh+tD4/2ZL5DwxUBDY7oBnUJ3pnV5FKGJJM2dSQs2YJbIA0wC/nDg4D3aqJwt+VuSfYI5WPcH+Ws7Z1Q3hEmlt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIvfcrBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIvfcrBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0767C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790991633;
	bh=t0jWQZlOm/dH+4+JGvo5OiJOtk9JXO4GCdqHYXlg2MI=;
	h=To:Subject:From:Date:From;
	b=IIvfcrBeLaywVFv1UNmMUAkGff4gfaI+TUz42EJJr/35geKGwtJFzSQ+nAhadTWxI
	 sDz7u0/9tZxavrnMYeGvmpyUmRYS/RKAf374NM2J/YjNyA2ok7m2Ai07ibAMEs6sbf
	 6vqI0+5P2ifL8zsqwzf1xaByS6fwyGQJ52cmjJiz9L3rRfWRzqk1EN11VgQFpdlt5x
	 9V8K67U1mp4FkP4rquDQ8FrFaT3h8GSZBm7fZUh4OnxRi+aOcP1B0vKZE8iCo2KGGD
	 QDbULrcPeuRwzMTAykllTZY/mlWvOGXQmCiPI+UwhTp+XoMCJHERnYjRaNYRGNKKh5
	 UNpcz1FwX6+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1FECA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099163368.1983.11682639431284206171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1d7df5acd05778a2817939bc0273b41ed74bc5b5c8ceccc05958f3aacd6a7d
Date: Sat, 03 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790991633
