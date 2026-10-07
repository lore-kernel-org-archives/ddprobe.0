Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AC435C6B2
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791412834; cv=none; b=XypeqCwNLFXs4H6jpSlgMegC39ibRze6KZBfdt0ME6wsOaew7IFEqoFSDeGH5zjb9B58cn8JkLKDqcGk405e1RbvBZajrtJ+rAr13vzmD/l8kV43oPhWVcj6pT9znkLxECeYT1E1F0/ut/DOfcRu/SgOOO4nfBZpT3UIYf+ZSZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791412834; c=relaxed/simple;
	bh=noLgd2Uz80MULmNyIuQpiKJYWoxlDtjV8r5B9go8npA=;
	h=To:Subject:From:Message-Id:Date; b=S6/TKtpr1+JNGDFtzjCxaZlmHPQVLyY2yl5Twel1qDulRkFG4hAHmqnqAjXgFgilC/bdVIBcNsYLURRb8B/Tn7gopS8SZERti28oSWLWW32oIQU2hzVW9w9qNyLWHec48JBpuDboXl3BtZ3ycduelfGmQ+m0c15/lXxbPP7yqY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok0OZOCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok0OZOCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11C5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791412833;
	bh=noLgd2Uz80MULmNyIuQpiKJYWoxlDtjV8r5B9go8npA=;
	h=To:Subject:From:Date:From;
	b=Ok0OZOCqc74cIFH3hkwBSROyWJ45F+6I4woyIGSk8uhYgQkGtlGji4mpMYWcL33DF
	 WX95mfJQPQq2dikLy57FqKQ/X3wjcOXS0NnMmZvQ/dE269TDkA6KDkmfhATusPIj54
	 GglUyUWc1CBdWWtMmJtsFhjXS9JpNks1ECJzk4oCdTfvKzWBVWvOvkiX//MOFfiIzk
	 m8PKDl/u9sktKFZeRivRc537vVPQi+B1BZzVLHSYx7Wj/MdUEqwP5fvZTjExiBFl7R
	 olLKojuM9ZarVfQw1e2k3XjR/R5UAFCQZG7Gj+MaDY1DR2uW23Y8sT/ujG7l6Xj5vZ
	 rF25AGdKB5c2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12CCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141283370.14427.13778718303010185381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0709d6919ac6bf6b45bc9dda2f6ad600396f3729bef60d45a88421677a246b
Date: Wed, 07 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791412833
