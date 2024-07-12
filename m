Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55855BA2E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720820963; cv=none; b=VmTrVEJBH5VpePgudRGuTKYNGc7OAtKiVT3SvDrEAEDTkn/Ad3GC1DE4uxIUlB/OoT8pUUAS8qOp3wcXBvuJ70pNGq+aQmVzP2rafm/Xk22ifyaC/p1ZTZZ2f+iYzsIgLgqUHx6lbMaeEYDs5mxfLUhEgm2R+4le5Zm/S8+W31c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720820963; c=relaxed/simple;
	bh=cFgB063Npor9u12HStdHpyxh0M7sVxCTMwysLRhR4zg=;
	h=To:Subject:From:Message-Id:Date; b=nUTU+tfKWoMkN6V83d5wMtNpnY0eKFFvGxluFIw5acG9C0eWIc/Je3F21Df5JDNFapxBfLhuqU7QDZslQtoRkQWLjDg69i3aZlY4IUgjfsXGhlWJv6QO7VdFcWji55FqGgRG4W5AoLWwMj9dR4McgKgw7eEfChrEANyWDrgDI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BE6PSBQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BE6PSBQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AF8C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720820962;
	bh=cFgB063Npor9u12HStdHpyxh0M7sVxCTMwysLRhR4zg=;
	h=To:Subject:From:Date:From;
	b=BE6PSBQf/BrK7qku/VkPatSzHf9n8ywNWpQXqe4HZUl5ZRHpAzHbLrllmsiTA6xp7
	 ohimGp8sYuvtjFTVfMOVylDq45t1HF2yvSFDOq3qj7SAQ1S3y5vxQ//qA4rTJi0vmj
	 pNvI2s7D3up2RaXHo62XPUyCmuko/ncC7LVrau7C18bwBn/TEDeEWyu8K0mSWZBqzl
	 OD6Og1OYZcKI0p24K+110izrUaXbkbeKBPBPaSoLMLpqhwM+mcVtH+hYHrpdKGPO69
	 Mwhc+YSIApnBFIXsTmmz5nED1i8bMNTa/8owz4ywEk9rJdZ7Js7wmpCQozg+4Wla7z
	 QbsGJtjhpILWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD645C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082096276.29188.11009602055838686573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8674ce2ef5d6d55005130fa15ee03a666c3678a140ac66151a29b2894e93af40
Date: Fri, 12 Jul 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720820962
