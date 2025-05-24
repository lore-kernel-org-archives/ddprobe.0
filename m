Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371503D984
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748099994; cv=none; b=lre1Oe1b+VcsvGegtn/jL+I5Dn/PTm8povQpZSHFn6SHQ1UhDqzoz6wyMcn3/ucoOwuVgm8nwIDAIJToZ7P4Nz23p+XOb5gxd77oDe7VeRsMogTAj3i2zyEnjQ7lZum3KocsvPRsXZJAZBY/KtqDM/DjSzyF25TU2KLU71aE0FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748099994; c=relaxed/simple;
	bh=gIIs14kBM2IIg8NJ+FDkNJ9u2xyYwNO5Rc0xyFBQPAM=;
	h=To:Subject:From:Message-Id:Date; b=lnwSrf6s/wDAKw6cb05X5dQIzxZ3KbQxR71qjLgxTTTdk+Eq02Ps32kml0bs1xRdU5cVpO1GRNtIMwH+hwABWGaFdQT2oFTR1CpqcuDnNfjqyonjUeT/0Rjt2JZxY3OVVD0m+x6TrPbkbs3mzyOuGPBGBnsMMgk5GJg5s34s6O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRJRM+LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRJRM+LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F28C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748099993;
	bh=gIIs14kBM2IIg8NJ+FDkNJ9u2xyYwNO5Rc0xyFBQPAM=;
	h=To:Subject:From:Date:From;
	b=qRJRM+LPesLBkLIamtUQ8Vn5/Yjv0QjBCrI95FI5AQ+t+ym82oSTRrRQ2fYfQOw7M
	 QR0Jw5AzfV2xEuVWlz/egZ0pUG3vwNGOzEiOfAoZfmQMyflwHs4VWeV9aFi/JRBoHQ
	 sFDDwcXCDLrbG610LqUDt+gaH/tNZUqoOIhiVA6Aeu6a9D4b+YhCp+98ClTWNlMlyk
	 lQAEsOHZndVLC9V1I7ULLJ4ekLYoOZRyKr/N3m7aNxpR+nn8HCXLeZ8PgiVxsuE76x
	 j94s5QdrivP52jxQj1gDImr/HH1yuY0XA25z0GjNGoe8IYDzgt9b4/hACIY5qzjm3A
	 m71G6sYYpHWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92251C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809999357.13767.8965744320710127210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a18ee47074c4479ed0d92ed97031bfb0cf74f7f366a4ee20b5ea67ecee908da
Date: Sat, 24 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748099993
