Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0041C84BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765185174; cv=none; b=S9sThPUoFEfoSNHn28M7xCXt1sBUJP0g5D5qfR6f32UYLOlPvepdoKz5fv4x/nQdb0J2w5dQ9eSS6VCaAYxAKTWtV/5skAQAmjokhm5E/kmnzjDHdIYGURBeV6fTUOQNFmlYuMjAluMHT3eG0gde8lcVFZmO/5qjd1dRwQd1iZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765185174; c=relaxed/simple;
	bh=FjDh/DPMpWpqU4IkGtKZlNRrDsRfqMgmT+92y5WHh/Y=;
	h=To:Subject:From:Message-Id:Date; b=kcLEFcig/O7d2ZlgczmHyZcTs3hAgRIL+16r4RcrANXgcAB17gtu2q6bLDICgSxCt2OiH+wLZ7zYFWxbAq/0/ENFBBj/1R3HhyYqkukVUASDej9t94OU8iUQ8oXDmOTfXLVnlq4Vl3Fcfd/lqWT4YvnhelT1Ao9HgyqB9twCt8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaK7HFIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaK7HFIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D9C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765185173;
	bh=FjDh/DPMpWpqU4IkGtKZlNRrDsRfqMgmT+92y5WHh/Y=;
	h=To:Subject:From:Date:From;
	b=JaK7HFIKhGlZeVfokNjnoLdgOs8AM56NmG6Jf85MYg6w+R9f6BqL2rDQOFuleBbNV
	 LP4ZMfVCKxRkhy8khgSV7UgGDk8v5D49GRDTcKexTxDpcpEjVRPTcgoSUfqlxsnkYS
	 hlc5kAPYNiJitLCzA+sHv/maygDTRyK7P3N4SL1dVKr7FEPmQXt+1xDshdEnW4DUzD
	 xzVFLMSNcWdVE7K9EUvK+Qq7zOYo93DWuMg+uYNoZRQZTXMqhDGhnkF2uwvEY+axA2
	 DcxQYLasSyUfTh/NsWfjl8+vv775DwC86YNSC9yHW9XmIGE9PyE44prgiOYl3sme3t
	 H8x0pSqdQpyIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFDD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518517359.30784.142743215561716734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89d328dc2c424aede8a8c50ac001899022e553fd6ac6cb227c08b69ee247f63
Date: Mon, 08 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765185173
