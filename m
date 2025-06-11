Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2892619C560
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749675594; cv=none; b=QnlQshXiX55CJPZVr1iA/OIfz6FdtUObLgnq64zhKSrQ58wlBNFgI0EkmqGNQyZYlkgR0v32ALRIaEPZf8CXOR92RbaQZ8COEA3ZmhD0rb0MmcWAotSNW59Tv2dDlWLVpQwf2P69NAqvz9GeCWgEnfme0N2WOg9lz5wZe0PSXck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749675594; c=relaxed/simple;
	bh=0MoRdaVm22RiD+XmMnBvRYtMBBYTo4OWAET7Frh7Yqw=;
	h=To:Subject:From:Message-Id:Date; b=NP3t1emGuOk9EHQG8Ji9rFIeG40lropM84fszm7DcdY6CkLDyE9JGsw7kAAktQ8gEHDXBcSsc4W8rHNy33UPzBwo0K9f2JswbvyjXemwIG7v7bAk3xMdmBvVC/HvT3jky/RqKHqyVhXbljswN/WDBwBhOeu5PjZgNdA3/ppQiz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLTzOxfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLTzOxfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749675593;
	bh=0MoRdaVm22RiD+XmMnBvRYtMBBYTo4OWAET7Frh7Yqw=;
	h=To:Subject:From:Date:From;
	b=RLTzOxfPky7cHtak5hrTDn3NhbRdXgfHys80f0W7+3lP1Wjn8GMDomlebq/oGI0gT
	 lVTmcZP3Aa9A/dRDfBLXxOUWWiMW9XBTFg9Ksp4gM6LFxTvQK0dwsHZeVV0TE2cYCR
	 mzCfhyXlv7R0mIGqw2QHMiG2WGGnabjobH5fEmleb+G5UWjiuC5JnsGJRky8aWkf7V
	 I86h+ApcYyXKSDhF8O3mkKyH7FSwTnMcH4pw1RGxLnzk7ybfEgbh5Iel5NwKS/zM7J
	 PVmB+tB2yXTGyo3kx9w9D/EdGZRjY5T4zhdFJI9IAhr3yKz7JI0K7tgM7CxSfM4eJG
	 moLpfzVlhvGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F99C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967559360.4162.8852892777348173450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7fd6d1bcf3e289a13efd03de8ad8d77b90acc086547ce669bbb0ee3b5bb5bd
Date: Wed, 11 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749675593
