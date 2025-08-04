Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C412206A7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754276993; cv=none; b=tCbKe5roari+C2EIKv3h78i1R45vT9N9iYfrFTaKQmrch2g44B7OboJqiJuzHXBKmxwNqVJzKBFaMbkFUmUt50iI+6ZVVPWmoSGFn6tXta+vU2TsHGFpse9/mvOuTxqZPP7FUgnXgWZyZqpNSzGKGWbKl8wgi8zURJtpts75mbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754276993; c=relaxed/simple;
	bh=XzQ4bGitvS6rDYnStR/hqYSGT5IVcjPy8xUN1voEQpM=;
	h=To:Subject:From:Message-Id:Date; b=Dpfryxd5vubO9s+XpyGZWxuNDtFQKBS2iXg9muCX7Eew2/ogWiVdPU0BjVq3+z/VFKDLTZqcsP/bDQkdA3IkEI48FSuhwWzHkZaOXO/Uw5iICrtp9DupqHkSMB//GnqfhTXqd9oGHj/6ZLKm3Qxrw8Zo+/RfsQJS0Wf5tck1SRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxy5631x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxy5631x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E719C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754276993;
	bh=XzQ4bGitvS6rDYnStR/hqYSGT5IVcjPy8xUN1voEQpM=;
	h=To:Subject:From:Date:From;
	b=bxy5631xaf46uzXKkGV4wWC5QrZFEaSiN7hUBAQ7geHq1Q7QeUtGkmn+gwMWgxHwu
	 UObePCJ+Vi38fEMRr2FhDNmf7ZPiD7LESiCGE7PHm7GVCXzwTxGXe3+CtgRi3VwNlo
	 sU+QC6lOzRgbQnMoM9/VUzgu4Te2LFnXFfkICblqannk57zLZI5cDNRrpvuBXg/MxE
	 jclmCzvHfOHYZK1Aeh2iZOS4Bkv/rTtyHaa59zjkLyGEBxoVFja4Igs7NSaDq8Yr8/
	 3R5mrkLDa8MYvZ0cmlclEv6LQLOMjZHvrBEJhLcWII+1f6J4xZwqVyBDGEKCv4w1qU
	 aHw8VpcyMoaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F563C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427699357.26222.6850486099519354569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a266bb8540cf7cc9d7d2a0b5dc8840c8c6e3cf3e5f7ff753d56bf73930752e8
Date: Mon, 04 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754276993
