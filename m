Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295E0194A76
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766678034; cv=none; b=Ryr+n2qqwXUcGlTMEXJQPpFvHyocIvgRHJYGP89iAlnteIBsfMHQPMPeDII6ovg2JtuPoK/clI4r4w0biCTn/8G528OdmotR+NpII0oWAfeQa6fNhf72Z+2UW2epWrU38NAqasVdJErp2jDy/dEkyLJ7nYNyeyEj8CRA/13Pc/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766678034; c=relaxed/simple;
	bh=L8r7rLqc6GaqYShzU9gP/7enYy0VPsI+tPXm94sVSDI=;
	h=To:Subject:From:Message-Id:Date; b=uhvabyTFSCaeb8gXOVpE7waxs0D1kZMSofwH0yPWNzESZpaZSCm0dC0/r1JU8Z4QEWwrM39FKMnM0QcNBOJqMnHUjvwOTxBjVMmMEnsuKX2mUYOa0W2Cn4COmqRL2thkhACa0+kmVegGTGtHgZMAFneJy7ufuO7bW+mNMkwRQck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L93SrRAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L93SrRAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A901EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766678033;
	bh=L8r7rLqc6GaqYShzU9gP/7enYy0VPsI+tPXm94sVSDI=;
	h=To:Subject:From:Date:From;
	b=L93SrRAKCKdj+QUVzejhPMz8Esma/3ko/PEMDvN4iQXD0o2sezj9rqQAwrGU5Zg3P
	 nXBfe6FIs3tWsd7Rtwj0O7Hq09hcGJ/xY22E0attc4MF8WwXIT4twJZ68Nz3ZGs0k8
	 x3fI+kZ5EAPJRQrWI/teF8mPer46H7KACH7idOwpunr1n40ppwWod4FW0NVS4vkbwq
	 eNw47773rwTJnz05yy9z7iZcG3sT66x1u11N5e0Har1yVDppxHM8Fx1UQ4OphAw/fY
	 eOMmo4N9+7tEP1aBHi8zpRjyn+l+gmpMwKJCr/f1H6roYH1juMDgib8tchKbQjHGuB
	 LL8uuGEiBwMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683AE7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667803358.28677.9195859598701164194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752806f3bfd3069a7121187a80175d81fddafb00077528f8c04dc3ecb803f03d
Date: Thu, 25 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766678033
