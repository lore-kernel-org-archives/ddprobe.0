Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D78C142
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715556143; cv=none; b=uWMLaKPaQ1L1RXHW0BjU745/qikJcFGxhbFi97rufMImhBLPzbRKGSTIJUfpE9OBu/xROgST1WHBJS3AB6lTBnynypSuMmjOCzAcQDBQ9ADKOkT+HKI40GCb9fEPvZZsPZLMHOG/JxlVmEfZ97+54LdMnySMCuVm/Z9YduqjxSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715556143; c=relaxed/simple;
	bh=qb1VLRPmrJZbJVYVVsWKiokMvHlJCfjASyT+0LYSQxc=;
	h=To:Subject:From:Message-Id:Date; b=ETdHzt6f+78caTBSZquQhrVyPvu4Gn4NIGUgdjGy63IrGNuBMqSTcCzYdCDFa3b0VZX1UjP4Bs3TpXelsBqEGgiIMskN+MTZ4QSV9tW3VqHc5Y4bSyUvK2FcWfRPuRw3KxQthUUxBYUs2TxtKaBfnF05I/h3yHCDlZUuzSGTT/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXeTYYoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXeTYYoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB24C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715556142;
	bh=qb1VLRPmrJZbJVYVVsWKiokMvHlJCfjASyT+0LYSQxc=;
	h=To:Subject:From:Date:From;
	b=iXeTYYoB7NlwIWRBE3Apk8WMvbLZf60Ij5vsuftlUsaZNn9QEfaEf5SsqJkAMZEq6
	 zv29CC5XDXlepBlywF0qKMA/xTMHQn/Yi9jfz7cnxLrPdcbJnJsnDRd838X7wJ9e5m
	 uaNzwftbPXp/v1FJ8jRSSJ7MHQ0X3HKSFznrOhY/yBcJtDkjnb1gQ7jD4et3wqU8fr
	 EU6bxX5jsdnKvfvqeV0TZPpvooMh+qkT1i2bZ7fNyJtbUhY08n+RLiZwJxoZJasqWr
	 bzMGi/M6LWd/h/DjUBZcqbyKzHlM/LwmrNKm2UXeupgTTnQAdRDZpwc+wSsGC8Mt4D
	 sH/kJ0EZXC8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C366BC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555614276.21025.11144084002698305562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e53fd833dd0d898dbe3a28f443c123d883009741a0b1d19f4b22d69ef5150c0
Date: Sun, 12 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715556142
