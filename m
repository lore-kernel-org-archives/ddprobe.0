Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9E1A31
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722605754; cv=none; b=oF4tukB0cEQUAbghR8rodRcWOZslCt34aV67F5k7n7n2E+gBxkbnjJKJrhAhrQLJEJc8E+IpfGG1N5q7i5c7H52i2SfsPpYJyKm458483hS0zTta0opzCpYLVxiDzssdFpzLRXC1jfMf2PyLgGWd+2RUfU8tWceQ/8/xDOsnT5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722605754; c=relaxed/simple;
	bh=o9wkMenslsvGnW01Z8yVzGrTObJwtqd3tx+2ps83wrA=;
	h=To:Subject:From:Message-Id:Date; b=pevgBf1DObXO5lBfVtRGPkCy9Kev4hXXBGhaJlHwqL++/m9VGfOuWf0wi6Aj+BZdXHjuq/dWv8BWbNDqzUJ+DI12TO/wxLH4SizC8kgEpb979OFYSWWOjNflq2/Xqw03egbkHFySNn7izqYSQBrxCcO+bRNoV5fue6Vu406g5Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NW5sojLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NW5sojLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFC0C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722605753;
	bh=o9wkMenslsvGnW01Z8yVzGrTObJwtqd3tx+2ps83wrA=;
	h=To:Subject:From:Date:From;
	b=NW5sojLkkP9/nTjMKXA0VbLv9EEoqU67PtuwhWj3JQm5HJNhQsqe5Bet//K1Q0jTY
	 fna3M3s+jEkstIBh9CGc296Saw7A6Xoy/rIuyx2SrANS/rqCBf0nXVFz2Ke3S1g9Cq
	 Am6VzztD/pGQ7JZ3a7DvlGCcundsrZ1XyhMr0COi0fvE7h8cSWXw3YbUIErqN9POjj
	 yjc44j06ZCUxZkh4jib3l+UwRMYsie/I536ubRiKhrRLnhxV6pwOBQu9na9xmX9hcg
	 XTp19BITilpYb3A6247SsUD1PtXihzsoI8OyWcO/Qbthfui/HvtgvEZH41RVVcqBit
	 baga+m1PQeSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260575361.32283.13892129861832938840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333f73d05616e9ec24640331fa0e7f93be1a14da334581dbd8866dda1fbe60bf
Date: Fri, 02 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722605753
