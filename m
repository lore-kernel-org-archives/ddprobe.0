Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7F62147FB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766077434; cv=none; b=Z9g9T0X7gT42UNca06ywUEXx90w9xuKKwF36aeSRkjx6//9hV+TCTI+xPcHQr5uhJwuHnmNSWg5F7BQVjvtSJbRIW+agzYZHwz741ulfT51E7C4brssY6CwU3eZpPptw60SKv4ZLb7kiLs42nrg/vVaDpVC/dAd7RRLgDGx+f4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766077434; c=relaxed/simple;
	bh=CeV+iD3chkeiF98TEz+BayBYxPl/tkS7tNlgOqObfHg=;
	h=To:Subject:From:Message-Id:Date; b=T3GfPEsVBsoNRxkb0bcc5M9j6bRLJz/cL9Dk/8VQ3Xb5n5ldNAUOEKqJwHkdjyGqnB+Nfyj7qw6J4lhkoBLWRiyK6d/Ee3FhazZsmjrKPkyDuXR1eyK1Syk+yKyw9/370+KTlWJ5ME1QCvVbZ1g/YxuK4zOR53AVz9b+BJRLu8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X39Y/0Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X39Y/0Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766077433;
	bh=CeV+iD3chkeiF98TEz+BayBYxPl/tkS7tNlgOqObfHg=;
	h=To:Subject:From:Date:From;
	b=X39Y/0Ps/RTvB8iBRuMaxZ1vBZEzOjaMsNypEZibq6IEub5bmuXPrRcCjTnFrg/MI
	 R/LMFG3+Cw8oqX5rOvBo4HkcRD2+A1LpHswW0b8/7lt8ti42xYYvvdoIr/cM+vevkV
	 7si4Xxhv3B4R+5v7JyUHcrXv3LMf7dotcLPUbvmWhUJNCdb/dTrxnPU8j1TJ5+mbzK
	 Gpt68WTi9YnKqPz1IlyIwRcVlfl6G71OxTI8xYAgI3iG2iUggdO5l4NjTWCYq5iZbT
	 Tp5zQh7VOJ58qdyOLeAer5ylq5ylAIev+dcxa6QDnNdxVHbh674s4mPiPlp2WEH7Td
	 5+DNAejeC3HTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DBD6E2B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607743358.9145.4708246806755831834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de73b11603d5da3f3628c0e758425548beb45e1ef9376c621b60eca973555627
Date: Thu, 18 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766077433
