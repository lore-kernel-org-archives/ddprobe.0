Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E02492E2D
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789992034; cv=none; b=uyN9tEeRrj5cTEhZkFlbmSHL2JxrhB0deV4GLRTreEdbwNv5YqUhI06O6hZYDaW8vCJIY1vFXsqTFXdTj6HACW6rLIx90ddGSsNw5yZ2bssrbUHJFRhd+BMgH/GmiVuQWztik096yCEXDFDO4pz96vKKRXEx5IWBY1q+xVQs7n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789992034; c=relaxed/simple;
	bh=5a4DLj3hODBLPy3v46xz35WEZdEQbkKRHolIRIGh7b4=;
	h=To:Subject:From:Message-Id:Date; b=XxEQCE7kKNeILD7TD7Z0YsLFfT7ZRqpJkUDPaEowNKV0MCIyhu5FqYd9EfxspHou01W0WOQE6vA1uvv5LDTtpmui9TheZ2HNUgX4z3LBzYvVzLVVwV6RTPczk/IMmE6sms9YFFwPAGfKiw52qLLbKKBiI7qlc48NOUxL7Dh4PAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdRZglNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdRZglNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF10AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789992033;
	bh=5a4DLj3hODBLPy3v46xz35WEZdEQbkKRHolIRIGh7b4=;
	h=To:Subject:From:Date:From;
	b=GdRZglNgekTlgGy8r9+uSkAwyMMDsr+umSSby3FJH9m3uViHrHV8/i9fRSJwKNvk+
	 cZk1/z0FdwUwEukDr9brw0ni/3j/eG/mP/nqTL1PIB/gIyJSdOrg8+HBOPprHezdin
	 0er1+9duRITHNudtz0BDCrr3BtmmOyNDNldGNQDFSwk8FvhM8j/2dMTrbB3o4m8WNu
	 lh17B2TvCjMhQZ1SSFII4pT5gUkvb5Uoj47DFuIPygZpj0Jsm+dX85amUAndifl8aI
	 p5IOXePOX0Um+hNgaOTs2qkZXu1aZLhL0gkFwhbxs7fHyWZTG7imwFzvAdTcrdOX+y
	 goeC3DOO3uijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB5C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999203369.24664.18362230455001491584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ab5583319e602dfc72e2c187fb1788f0038f9c2605ccb55d60dcc99458b751
Date: Mon, 21 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789992033
