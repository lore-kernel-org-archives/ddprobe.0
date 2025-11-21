Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B961C84A6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763762514; cv=none; b=hrMUUYS3AVjFerMxCWHr9+uXd5uLBsn6QqyYg8Hy0YxTK8G54hmK6ykzq2Npazo9/aHniELL0Rr/MzKN+YvCPmVVoIUUjPrt1FSG19B9bxWyuCi+sKclVPN6KfVGtMsnf+SBQFrhosZ/7KhxvwDBb8UVBQnJkI9dEUjkOi95vx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763762514; c=relaxed/simple;
	bh=fPVbA5lEP9ZEdM7UqhQAlDiKa4GMb7W0f4KUooyLYBc=;
	h=To:Subject:From:Message-Id:Date; b=S1gxBHrT52CWMck2g1ifRo/dobOHMnvOrFyKYm7Ws4KHbIhR5Sv0Wclh6Jgj1t/GHpGrQrm7++vMsXm+1csXIBP4SrcUrxroJYvmPmxBQglc5puw9Bt9qTYU74SRrNY3dzB1pvG6AW1oJ3tfEzWge0vCWcbrdb7sJpmWBKZwl24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJWQRMnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJWQRMnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE35BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763762513;
	bh=fPVbA5lEP9ZEdM7UqhQAlDiKa4GMb7W0f4KUooyLYBc=;
	h=To:Subject:From:Date:From;
	b=CJWQRMncHKQgXKyd6mJaEauFcccYnJw+icQVAu2u2cjbjgGI0nk/STZYfbDP7G5WL
	 FWhUjiDZ9PZwOMgWjRquzcApRP67xrNeXg3IHq19kKzdpIdf1V6jAm12djOjUNRo8H
	 7V3jcaxWyo3f3jLI7zqssewx4SvLaDwMC117UfvolJcjNCdMr0Q+fNGlM2vIhvkTEX
	 LVkWq/tFkUS2LjVbzdXzXqM6DXDHwQjKqBty1ocmf7h1D5GduPosdYhKUyCTv8fHfr
	 v5jmqFrG6ymgKdePyzlKFFklYmi11BTFWmIZU8Zbrk74cZhL/UifJU3iFNoyszoRjd
	 PS5Sp8gSlgQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CAFCFC281
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376251359.17673.4729457503165098385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f7fed20eb5b69d8161ddffea126d4eba3bb784ddeab8ffcd1bdc13061a50ff
Date: Fri, 21 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763762513
