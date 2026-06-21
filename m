Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A24E275870
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782083194; cv=none; b=LOLKAnNuKbj12qqYDqBkKz5ufCDlSftu5lklY9uSxULX/JkEdqOKnoJOW8omRKufF9S5W/BiotZiRlNWQE7/hdD+pYXPLObIOHrifD+EeLsYQ1y9h2pqRpI+fmbXO1JU235Rj5OoI2U9FevwSNSxNGDjo6sKUUZmAv+KREtUnYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782083194; c=relaxed/simple;
	bh=EsxN1ncZyB5X75UMYlCLSc75J6aKo/8tpTY5VSafRME=;
	h=To:Subject:From:Message-Id:Date; b=a0vKLgvJUKnjW4chnv3DGzVK/u/qoKye6wsJH0IW9JLykTxxYcrKPNua5rmNC1i/tZshsWM51Fmt0XL3xfIvLezubxp12duF//9c3PVFZaTGsEXbh7mvuA25SGsgR95tEO852/4KLeiDGIDXpRo/mgdegE0Q9WWkNsw+KZyofxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyVf6wQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyVf6wQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC89AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782083193;
	bh=EsxN1ncZyB5X75UMYlCLSc75J6aKo/8tpTY5VSafRME=;
	h=To:Subject:From:Date:From;
	b=OyVf6wQRioArDM7zMTUGquBgu4KA6/r9QPNcX07i4Z9fOn/iE6H5y35CfWqmu6DwN
	 VOCQkywCqsoV6kmuieVyKvXDwfdPrpW46hkRosFfRUiGxM+ImCxahzd5REaCJZKW8+
	 oJZGqbjjCTYQY139BreeYhN9pnKQsHErsNW0Mjn+LyKkcyS/xAznlAVHi/dtEXJX0J
	 0YBVDrVOyhD9j0BDkGhAovQmTs3XlelpqwMqSB31Dyecl2tnEAaEFsCyjzUKbUKb1+
	 vjlw3E63OHZ5S1p3iCqzKDpWvNnqAuxil/6N5k+LfKKDwvhlmd7XNJWisrCfNPMyDu
	 CpXuIc+C1QICA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD46CCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208319368.25498.4321730958621525089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c06f22d64cd91c8d7af52e7158b8c6a09a2d3a8d96a99ff86f42f6702d9ea54
Date: Sun, 21 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782083193
