Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD271DBB3A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769522634; cv=none; b=XNr0wudRu/fk9uHU8G592VVCLeHVysi1zZ5LKAtz+i0EjI4qNVWF4eoLtsMVGKpP71kFCE7aOehAvQzSnUFMBjOo1XZ1RxK4f+wZhb8WyiOJrVd7NwwMN2DD17QwMVLj+4+5pCj/+VmrK5oxsnObv6KM8JfOk08A+8XLVQWCPpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769522634; c=relaxed/simple;
	bh=CAjlf45N1SE/2efYzzgY24iGoQplTOtGkQpdIJ/A+Dc=;
	h=To:Subject:From:Message-Id:Date; b=dB+MvWJRzBbbd+KUlRXpgGLf1G5lhHmoSOh6WSCSWXlv+fRKh6vl7M6Ay8yiZYRj6myZR7KLbvt+2cPQgyru7GHRoyH561zzaiwIzCJuQIEYpNqQGZquqYkyUVS1O3ItxpCZlkH39AHOVgqUYzVQ59HDbAYdrQnnuoQVmdjZ0GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkSokgLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkSokgLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449CC19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769522633;
	bh=CAjlf45N1SE/2efYzzgY24iGoQplTOtGkQpdIJ/A+Dc=;
	h=To:Subject:From:Date:From;
	b=IkSokgLDdewCAJ5UO/HmBw7SxxOrYs6p9kN5tvT8Mefp+R1h0vdNTuZy+N65xKUSL
	 LIwowqYqs1+rhVpDPGjsciwEqnSX2adDQRE/OJ0MCdB5gkosm+RF4QP/qrucxYhsX5
	 aRzqrIXhhpzVVctxFNDSjnn3GbjiYWD2ikJ5J665IMg18CttLr9C673iFNj67eAd20
	 pKs3cOLm9uKyMCfXENPv9O/nM0BkeP9pTzZBff3kMupz1iKwmmV/4MhEH9P++0QANZ
	 xwAFaS3EJOgxa/jNhazwQr1TbgDnASa0YX/nFtlWZT5W0xbVzYgpDbKPmBz9hO5/iR
	 PZKyZaKqK3Ceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92722D2F033
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952263358.30200.14976942618119663375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec12cbf40a6d85b59ac370bf11038bc606c05cf6440b6cfc105a95129a9f04e6
Date: Tue, 27 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769522633
