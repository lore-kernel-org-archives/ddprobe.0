Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6113014AB7
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714463543; cv=none; b=UhSUZ7MZN509EjdwDz3mkX0gaEpZzLUKESOWtBjmHkHveBS/xh6SClJDRzpaHEnk1qfk4IZ28dDY+/Kx2sqwogF93b20lRQRvY6CDTFYyfBeDWaFKxDTJLf1gcOb+pHHPvhoJ691BWC3NHaZU56zJW95hK5T9V0RD0AFH1e9kq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714463543; c=relaxed/simple;
	bh=IYuT5FM2DJg8CZylPAnHZMvf7QPdQ1R9Qyp8pY6EgKw=;
	h=To:Subject:From:Message-Id:Date; b=LoalOGLfDVA9KUOcrZknWR00HdhtABO3o0zY5ODYtfUVYbAPq6mdOSW3mC53H/VGnvD5xriTYnH16iLFYPY38aQMw7nEwL+BRknDHf4RlBMzC8WQkS1uXc8HeE8rRd3aLXcEkq//vgCWik5AM7AsEMXp5c/aoJCeDOqwTtGYT38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPxaet4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPxaet4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E4BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714463542;
	bh=IYuT5FM2DJg8CZylPAnHZMvf7QPdQ1R9Qyp8pY6EgKw=;
	h=To:Subject:From:Date:From;
	b=IPxaet4fh3RQ3lTkYloGiQrz9tp6c2Urep9fTg6DOavJFRaF81LoXCw/IZSkBffqK
	 npWkWwYpgluBQ0gntVHbDFnqCko/nLTdjfOcqSlgdqz2pOgfJnMR+UfzEH3XDESXAU
	 5tH6s9m2LxSKRriXWqySCSih6fNBgaxL4W/b/rhkgSq2R4eHgNXtzpJIsnhI0dabHq
	 TRPSmzT7fD3tzU5k/bN3VN1peKursR0IKmB2n+SJ9obwd+lvVRlRwelTh3W36IIs98
	 tZqJKpp0H91+anW9cpx7Nb7UUbhsV5t67QiXF+EpNSJMHYrb/ElpQXrqN9yTONfi1b
	 udNp2edkfZlYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67BFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446354280.9739.6282734937377680430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9981d32632abfefbf4d1492de38c60badd8817105eb68525bcbcac5fbcb1396e
Date: Tue, 30 Apr 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714463542
