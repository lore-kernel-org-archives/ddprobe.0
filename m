Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350DC27F161
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749539994; cv=none; b=a3+5VR4DtJXsPkwUoo5MSh0LlOcsgupRYBrFAlTG4mepjHAtC6eZ5cA3SOXNET7eldq9FJnKxNncp+KtFdrZJ7Y5R4sLNX0uo16rN0uef43oMbkzwDUraFD+iAZG2BITxIoX+CCMxQZ1r30ZIAIMfsTL2ygb4n+suzZwu6sVP+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749539994; c=relaxed/simple;
	bh=S3wMkFAgwbOhFJIEo9UqsvUAQwRrs/lea6RVnvQIqck=;
	h=To:Subject:From:Message-Id:Date; b=jfdgqwqUZTnlv6KPIZahmubqDbDWHYFFcSAlBvfmOMV+VCIG2vBE2HsSIyT22TtgLUXCDBwhNbFEMlotX6b/G0eiNmIabvg/CNFujH5+t99EN4VuKS0UXP6E123W76Ua/Lk95iyLG3ZCW7UwIC5mOR6BqNSemZJt2zAnub54Xn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snYhacR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snYhacR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B263CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749539993;
	bh=S3wMkFAgwbOhFJIEo9UqsvUAQwRrs/lea6RVnvQIqck=;
	h=To:Subject:From:Date:From;
	b=snYhacR8ZBPKL3CgnuouzpA5+Q+4ygrhV4DBFxM2J1KKV2mFOUQehN/N//OyJPyrv
	 53s3zY/WuEDp+QFJ2mlg6CMk/2sdH4iS/xzRrW5wHqRDEEBFViXD3p2fbWDnHvkJf7
	 yQjabAVvXTfw03xoIQXHaDgRhpWqLVkXuMtuzvICCRyOzUiOsLNJEWZZDCyU34zyVC
	 QvQ6q+iOovgAr+7202TZV8vlzx5mW0nq7gfz0bGv84mclh14mdhcq03iXfq2C06ZhS
	 ZZ5jdpCIJhbpZgLREoC0sG4nqMjfm6gNjDEXfRAkXfbKPMjkOBOmAWL3G7bhK1AIV8
	 tve/wU7JTw6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A9C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953999363.26679.6831509348690134471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afc5eebc395ab5523eae54c9cab92e0177fe69a8db89cdfe2b1d574c220a8a5
Date: Tue, 10 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749539993
