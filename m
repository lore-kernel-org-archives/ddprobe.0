Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145F9199237
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766522634; cv=none; b=CRMHyrQaqv6hgcBYffJyNHDPszyobq2sr7O6HUU4b90DDqydavbxldoe/2vy0MSN4l4G5heJfUmpzYr7p1nqlXYO1edDS3Ov4YlO5mPyipIHp/LOsC74Kk3L5LqXUnCUH94TGY+/DjKXNGZdw5a1Q+l/gxwOcTehJx/jv9+/gng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766522634; c=relaxed/simple;
	bh=4QPm8yFleFkAOG+y4GFzP1zr5LnUq66WadqWDAy514M=;
	h=To:Subject:From:Message-Id:Date; b=XIRFIjiDSXJbk2kLatTWYy3289/LAJJv3fUJmZjq8aCPDB7MYk6zCKDmdvxAy5zHsqAL42r4cydS6xAB//YLnXn+C4+G5Ln3xlHbF4GvoPre35m4g0L2hd86WyR9LiHq/whJZlcoswuaOWQFtqHN2P1d4yg8mIkHX5Y7aNSF/C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhazUtIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhazUtIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA556C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766522633;
	bh=4QPm8yFleFkAOG+y4GFzP1zr5LnUq66WadqWDAy514M=;
	h=To:Subject:From:Date:From;
	b=RhazUtIFC9Ac0v+UMXoIW8l3ljdnhGUlShtiiiIxe3BJ41OyFH8k0N9c2jnPDVZle
	 Y4ANfFKXIJa92d1KnVwhoZOo60AsTeLJES3RM1KdLINiS+SzNz0Msv+tC91J9pTHlj
	 gejqtH8NeCTlWmtMrKONp8jutmnd65YX+I5YsK4aKQVHTNYzlo5r7IooD4TYqi+ARD
	 5LesJKfRcit/38v+cIMEx7ymBkRypO58A1V/3anQrM4wFTs3yD9VzTr0KTFw2RIZm5
	 jsJB2dnMiYb2bgmkEZDF8y/Ch1El8eQ6W+6iCiGORvaa0FEwGFWN/HIdxtANtr8nti
	 h4XxngOMekt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96265E6FE30
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652263358.18047.5356432955454077210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2091d797d9ea81ec2ff77b89d7da36015657a7b0912bd9a74c0ddd7758233c6
Date: Tue, 23 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766522633
