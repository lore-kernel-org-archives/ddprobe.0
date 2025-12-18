Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E426E6F3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766028234; cv=none; b=j1mNkFeH778jun0GmY+hxnIYnxzgKwkPATbz3rYSakD8cQVCDAO875HPpPoeTXMa5u3IwYA/U39bkelTP0J/FOpa33oLa4qek28ndR7wX3R86I2IcnCe/4gws49qeI4iOY4fuSJDV/aHT2Q5XXgl7MSRA1/y97z7Lth++K1YSf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766028234; c=relaxed/simple;
	bh=xv3nnT2sBaGB2oWVm1CT+aGlNH4U640BWaa6OJXM+MY=;
	h=To:Subject:From:Message-Id:Date; b=BSb9ZgiHpfxWewMOU0ymsdg+jf7vKDk1AKJ1fY0zrDgg1Ss467Vf5py1jkMNNxDR5OSjbUsFqtbDXXZfon0Y07I4U+G5wJAT+GFOqX3OiYDgrOX6QYv/h5ni1XzIFSD7hcs4nx5QPdWxAlxB6dhoLMLe7I/Gcf95Rbpga48kWjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCzYzYw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCzYzYw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7167C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766028233;
	bh=xv3nnT2sBaGB2oWVm1CT+aGlNH4U640BWaa6OJXM+MY=;
	h=To:Subject:From:Date:From;
	b=HCzYzYw+t+pKdROOVRql4VVDtpkh3/s8PluxblIVeqXVRfEemdnHGvuF8pvnytoKH
	 FiC74fGT1Pi8FCbACcUvNf7xx/WMR0Lcm2p0j8OKPwDxWdviUCMpkmz6oxKj4XfYDy
	 bpMHi9oaUhcYsFeZ/0nBEvyoZRzrciYayIdCd/EKluJqUJ74tzONnMO2jD1+YFBWhu
	 Qdj2XYVakgw2iznLUfzi3LFz9lT4E8LFhByKZhCRlR8aPkHNVfsxpZ3oZCr8H3PYzo
	 kjMmaV42l3TZiGKB1wRVAQOMnjPpJoZVU3ivF4Gb+PtTbXQD+RoRuEUXU6ww6R758k
	 qwCNLfRuhiIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A7D68BD1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602823359.14068.17042008934878473367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d32cbbbc768589347fa9d3fd4ca42922c74d687497830e0a7e60e896081898
Date: Thu, 18 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766028233
