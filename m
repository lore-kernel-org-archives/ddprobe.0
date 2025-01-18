Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A71E149DE8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737221754; cv=none; b=S/92AJF7L+OWhxLMGY8V0lMUB8xVF3tUadMdZ1ZrMwoAg8MJ8ZqfEz6nO3toi17VH3d5gWj7Df9ye3WOwLeSRBSBvpLGVjTfQXoxUjTtnn8wUEsiPK9W1g4HtGUnhrFBYvJozzkwC0aMUfaJeljcSdmSewdqR/melR+yFiOltTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737221754; c=relaxed/simple;
	bh=KKs8iETJKceP/6b33CfYySI6CNg2HOo6FDXMohL+u2c=;
	h=To:Subject:From:Message-Id:Date; b=iBUKLc2d3NRqPuvAMNMsLp/TJSBmqxbXqgTkAyOd8TayvBqR4z5Zgwzf3U1uVJRBGapL5t8ARn0Lln4WWJJh/xlpPDOi2MYL93LQ66UL7rG2nOBBETZjXS0fUfq0Z/Q3bHBEqegMr8UJLfHk8TFxcuJCqwtodbC1thfDiOSxtMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3Nrwgq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3Nrwgq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ECC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737221753;
	bh=KKs8iETJKceP/6b33CfYySI6CNg2HOo6FDXMohL+u2c=;
	h=To:Subject:From:Date:From;
	b=u3Nrwgq0NrGvjxxLBrsuSpqR/Qf+/wqrqdbotpTh/pASNPOH9ywHdFvEFFuwQCvg0
	 WVwmIKGxoduBAHPCGZJVbZzCqWZV6S9VGuO480PUPAInOOtNo8Ubfo3WF15b9ZwA3d
	 daxiI3qlB9cDxn+aL06iNoGpSO1jMWwT7uuMA7rWJhqYsCXL6T3kDuMo3kMCtp5P9y
	 aKGCg+9H1kXw+DIr7fVbNYgC14t6r3//1QPDI1I8q50C8Nh4Lam9x2klO99zqAC8K1
	 aiuG+CbH5FrJp97ZZ1q7UQsvWebYO4hNW+HvYEpqlDCSJb7ar2c0DmskWxfprOEe/S
	 Km1lN8mwtCWRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459AC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722175358.19967.6794270944459787423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73073c46846d04f1a836ae2ed75063134860858cb96de51cf7968ddbb9aa8384
Date: Sat, 18 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737221753
