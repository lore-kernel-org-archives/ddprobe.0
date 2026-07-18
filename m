Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2D7EEBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784337514; cv=none; b=l4Pfedh8OEZPjYu6AQ4MBYixjlZuyoACbZlMaD+fa9HPBzPucYrVCvJMJzQ+pJuB4Iq0Cht+RSVF72QdUZTnlK7qpKa5BeE8/s+pfWP0qRZ3P6UYJBe3UcSmD9RIsPPrvpBQmdwBi89PZsih6OZoR3aMm2wnFIVTSaxW4pjBKLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784337514; c=relaxed/simple;
	bh=gFs6RtK1LljCW5uUjwxYtSFn9blZ7GQxFn5j1YiQdds=;
	h=To:Subject:From:Message-Id:Date; b=G6rhsWKm/MtrrLIrLk0wtn/juNMBlRbEn3sxkVjqhb9LiaTDAO6sms0KcT5Zk2F06hZ83VJ4ufCIRuaqBKFKNlGM4d4I2zEPH1xwsBqCZYJoxdM2b364mj6FawKS+Svn4vHCEARMiVHrOrkzkrutyVImPkffVAjpqlfcJIt2Gf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uffvMndJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uffvMndJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD872C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784337513;
	bh=gFs6RtK1LljCW5uUjwxYtSFn9blZ7GQxFn5j1YiQdds=;
	h=To:Subject:From:Date:From;
	b=uffvMndJMMOifDIwRm+I0JO6dy7x/tYoLskb6hGXGForzQVA+kxjfnxwf8AAktAzC
	 bVIRrqOOUNogYPZZD6BM4nFHDQKmWCf41PBFC2Jnr958EwSxn50iu+DuDfh/OriT1E
	 QBu+zSzXy6niyWM6yRm2ETvsNliCzxO0Rd+7nh+BizY+n/ScgIX+JI2AzbOilzcWAW
	 pPy6Y/yQ+LnsWV1/xnsXkh/dI3WhFkv3bTXIR3wNY6KM67fGjFBEXvBJ7itWceV/TQ
	 FOJ2sjx2tpZgTfD1sTUtdtlq3KBs0Cj6Lcfug9aDGL6/MzQtouS1zO/wuNx2Ciuo7G
	 Oegu6CbHa0Z7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE64C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433751369.555.5729624902562504765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8893d4858c29fdd82d291acfe898565d7c199cec8155b34d5c85382aa9179e1
Date: Sat, 18 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784337513
