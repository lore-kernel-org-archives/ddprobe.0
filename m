Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32123328B6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732721754; cv=none; b=QRK8XoS/xX9pk1nsbgCQOSKEZM/aJTnA0PgocZZTX7Gj7dAiQPOp3GOZ0qWmaaYO47f/fNFKPw1b7RF4deOsHkDxOiJ8w3MdMb40wKtkErXo99HgJq/cxznmx1pOFYNw7oQoaE72ir5iX/FttNoaXNDPjvlmXmVBnWneSaeFT1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732721754; c=relaxed/simple;
	bh=hNVKhzcoEtMV2Egj1Hz+AvjCIBon4EFHiw9GmbSkf5s=;
	h=To:Subject:From:Message-Id:Date; b=pyw+k6Brsi+QHBeamA5nGkOfp51oYE2QDeq58Pq56fmxv6V//kX6BY6b6ltkXn7jH3iqYkJ3BE0AKwxbMNKCiC/zMVIJx4CU1UaBCGnZ8BnXRvIZHy8+rPKkCW7nhLKL3NjGw9OkgzDBVsCTFjn4Eptd0nDuiDnrDMRDBr4W6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrWmnEtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrWmnEtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732721753;
	bh=hNVKhzcoEtMV2Egj1Hz+AvjCIBon4EFHiw9GmbSkf5s=;
	h=To:Subject:From:Date:From;
	b=LrWmnEtQzJ46kHzFH4FEBsoWNkLuQaCj9LIrfCsT5HNgVBVCFHnZG7sxLMPhN5gWl
	 7n6pxA2/rsc24SJIdUAuvD0ESqbrxJVtKpLF6ORAz3TZfmHoHlDjYGCJFmzQkJQm//
	 5Vjt4NObjEwUWJPNaGPBBbGhi4vpJuLky0cz2wIi9iAdRtiDUBTF86Dhluqu9u9ttE
	 DBFprrpvRX5W4QoFw/FAZhpTh4jHd9l207ZrhnEeO2q5X1ygNA2IPO3AX+FjBagxIN
	 w2WosKFAD7keg8NLxKzKENzg2AKXm5+3bi2+zp5jwLzgCzRIu4SWZQuA+kbT3Xa2DQ
	 Ngy9u03HE5l6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96608D6ACED
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272175360.18259.9655974196644265288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1294ddcd78992bca632ee044f80a0aa4254e2d5860cd77557d7edd40fdc89c4b
Date: Wed, 27 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732721753
