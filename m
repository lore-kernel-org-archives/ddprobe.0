Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A37C21D3F4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749495594; cv=none; b=kI3UOQPcsttUTxo5H2mgitb49X7GnvflUFqGDzZ6UgLd/iJZvBe5oq3BMWfqpYYN+twf1FTfDvQbKGIvicYld19PjQLacqft/utDOe9up5UizeAI8e+2kDxFn/PmXSZE9DOdqefKJpjQ79R6wMBf+kybU9chOoXBSTQEeqP+WG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749495594; c=relaxed/simple;
	bh=0G5neoms344wu3a6ugFCYWcUy+hkd6BDqcOfjNGqilE=;
	h=To:Subject:From:Message-Id:Date; b=VKbhkVNFL25Hor8Y5G0rzQAxTWwCmlDIiazbexpZpIw8qHE69CMx2W2y1zp0uScX6RpMLjOTglLSmn0oNDZLu2PPHikLbbV4jXNFioJ3EGEGsm6nShq14gHb+eBUT/BSDkWGPl8V9PtSgn0MwySWPsOkArT7ubhgPm/elNEGRzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ77bK1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ77bK1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749495593;
	bh=0G5neoms344wu3a6ugFCYWcUy+hkd6BDqcOfjNGqilE=;
	h=To:Subject:From:Date:From;
	b=nJ77bK1FlHFTB84xqd7H/5eT2wUOP7jy/Q8emtWmDjwf1b9BOUe1ns3Nhq1DavXAi
	 HgJ8yfZI08husdLyoHrMTUD3aw5onoZ7g0QzVuDHxqJ2UpuLBES83NvAAs2OHn8S0f
	 pywCtAYo3YekxYVKS9L06+DUIC83xmpPHdg0k51wZqT7zLgGDZE+/N2ujpXRerw9LO
	 UIdsqhfnQ8gWmPlOTwSWnLFSSYwjqQ7rOo65HGII1xZO/oDCPhW9Sdcq/CVqjUNeIR
	 gltXIAOoZgeqacC2fV/RJdy9XZAViRq87uveFeDJxN9f6W93s60XmnE+x1+XOXnt39
	 J8LM2Odc4PeqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA0C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949559358.20572.14541251356287297008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55eb1e82805aa64d1da93b419dafbe10dd1ec2e87cf29bf20e52b15efa8c0e91
Date: Mon, 09 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749495593
