Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108791E511
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767935634; cv=none; b=I1Qu9aIo2Ud8J7zhkI7BspnGHrucj5Cb/9Vfp1b14vbH74wLvbwMKYwjN0v/6+/JAtmuh2KlCKu2e/uuKE4fIUCWOGmqx//2kvY/WghopYqwod6N8j2bpSJ5l2cF+FPUihyX3O3Cvm7o4Zgt2LIbvEjfVatGB/5Mk1D09yJqtlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767935634; c=relaxed/simple;
	bh=7X4vclZZpoSrHsnfS6ZNX9iH3B83QblFMju8DItyKTs=;
	h=To:Subject:From:Message-Id:Date; b=nsNMeApKQClQVEHn/f+hgAEu/pvd9DDhsGM4ZNUeHGe1UaR3ZUhUrDEhM04+uYNz/QKq4MFtF/G708lxr/uvm9lBHVmjvRDlhoe4wKJ9FuJ7aMwRKC/QeW9/9cBqE4G8o5C53EkFyNQhbP9RZAf0gsGF3gWACmmYtvH02g2WKtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSUyr40j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSUyr40j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5844C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767935633;
	bh=7X4vclZZpoSrHsnfS6ZNX9iH3B83QblFMju8DItyKTs=;
	h=To:Subject:From:Date:From;
	b=TSUyr40jFOAmdDgL2SczcRCgGUptEWUP9GVlod74wykES5PIwU5cBROlmTtl5yOL1
	 7XozQ5l7m2cqPwPH2+ZD3wL20ett5VzyFO9xSYPoGpoA1EPm5AIKJMMGzfIJAAKnbu
	 S2Hdn+nb2Nn2EvwVsjCGi+6my7PrqlHm0qsR9vMaBtsdOmV7KQQZ9HtZreSadX2SNq
	 Lb7T4RaMA4gDN6Fr1gSfgXuEYQVTsLGbETFzxkds8HJVzYGEUoNj+A0YsRwCv4a3bp
	 oTl7WPB3qAWCkF3RmO4hrO3QtUNZ2/hxR/NbeRCDKJwnYU+kvJrdztgKhLzUq3Rbnz
	 v80632xxLX8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB5D232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793563357.20249.17487309546918778624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8819b783ff80b06789ce8f0b61764080410f799da63193670204e1e3b7d24e
Date: Fri, 09 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767935633
