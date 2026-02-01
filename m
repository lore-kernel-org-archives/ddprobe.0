Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C99A2D8DC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769950434; cv=none; b=ZViBVqpgWjVXC5Y8EEpC4gSlpxpdNeDRPQOsiEZpa+VsjFfr7eavakGNpNstk9xYpCKo/GhajnMbiuXO3hy+7uq93YCzwGaBg5XDzbFmSpCILjhyr/ASK+9Y+eCRWNn9dWhuOYs17yxFzIwpUFOHvUwd7U2BN+IGI0Zqg1m/uS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769950434; c=relaxed/simple;
	bh=SZY70ZOsDf4s9+nOwXkLFey7PYSuhLzk+KghZ5UVK2w=;
	h=To:Subject:From:Message-Id:Date; b=J6xVxqTHl7PJl6MBy3agqXnYWLJNUpMJrWUL4dGv39PSDWauEhIglJgmQP1yci4cfiteCprx2BYerb6vEB/SmdLDxRV/jiPjI3cjjQQ+fbyrQgBYc88Ru6pXQZfBaPs4/PhbDJawFJHxKvgXEnO9DrY1KELhxFMxAPcBHKBJfoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgF7HSrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgF7HSrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD81DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769950433;
	bh=SZY70ZOsDf4s9+nOwXkLFey7PYSuhLzk+KghZ5UVK2w=;
	h=To:Subject:From:Date:From;
	b=OgF7HSrbPwi1JuTeD0gQ3M2cQuFgeTKTeG7MFEmrqAE2x07iOeGYxIGOu6m+o1Qh2
	 +HEw/fg/McYCj1cQOWxGzDNPCciGEExyQec/lbzt7Jju9b79GqvuEbspLn3OLWBGKv
	 a1gDmHmE1U1G55HKZb8I90VtqusCNU7tKLVXdzJjfMdwXHvI5xnzD26i5S+qLMWrxU
	 BQrT+y9YIn+vHf7BR/aeUOVfgVvp2ID7QkzeE2AkQwkEJCvzvlmWkYOzuD3Qm0Svq1
	 2EnrG3uhodqafV5x3d2qJsDmzwp1I4N/+gAfpFbKCv6fAukGPohZHKnu1UdkTsjx8K
	 Q6uZPFrMUdVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AE8E7C71B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995043359.29586.16586893149010451192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fbb5b925e69f76fb540a886a06a8ad8fb8bf492b6ae369e0d9bae4e9b3d33f
Date: Sun, 01 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769950433
