Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A02D627
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738118154; cv=none; b=pO6k/swtKs43sRRnpPwNYk0jcKY7tSRiE6NafE62q1PWixFCFSk/bFEXSW47bAQJbk8RtRY98Ddnm/qLqHwUNcz9HoarPuA71kU4IX2/sxYUw/3CHnYCLttBD0QdWxeVf+pOxTDGFH6+O7Gl1xgcT3xkd/OH5w/zAhS62RArKIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738118154; c=relaxed/simple;
	bh=zvoiSTIV0TjIFeKjqhheQO+I7dcsJCF1B2VEcqjkxK4=;
	h=To:Subject:From:Message-Id:Date; b=cfaPs7CfXx4uuVqx5DV9mmHldoPsj1nuRuWQgReo8snO8ZUaiV5gol2tplz8elrLcE8Zt+Tc0p2glGyk3MVyKjSEjDTnV+nHo6EWxdpY2wt9045JcChXH4Rn7qMZfHFIJeMTnh/OgZW8ZrAlYAsEmsO4GzWr4ou6INzLNauWOks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5PVZBE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5PVZBE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2D0C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738118153;
	bh=zvoiSTIV0TjIFeKjqhheQO+I7dcsJCF1B2VEcqjkxK4=;
	h=To:Subject:From:Date:From;
	b=O5PVZBE/iDBZl0OrJlyC8GIP5iaYWZpz2FSUD+5AQ/JRCiow4X/8Z6CILZ4U821+E
	 jNVCyN/wDujX7IVpX3yXii0V+oAvjAPKgdw+8NY8krcrlqN/p9jLUfqWTHpLVn2IvI
	 Opb9KLpQFUFByyk1E5Kb2cNd55li7EoJJ3Hk82p7+RJIL8pcf1s70tZq+cuxZTmI4z
	 GJITDzMfhZzPUy/mAZH/Dfz6rqmGNKcXJosCmgY5UWxvWlgHUM+fOxHbMU6TB3l5SS
	 8a5DVbbfUfk6T2AXK0CzUhrllBhXPfrJZQrNQThmWRPsF4TXzp/WzzG8BhjKdZ8yso
	 mI8pFCOrIJx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2340C0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811815363.24029.10124229481596395342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb57547e3667e168b27ea488dce77efc62a29f959aee2e379e4eef3128c8ad7c
Date: Wed, 29 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738118153
