Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFBB2F5B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749094194; cv=none; b=CF3bw8dTzJ7gAj2SGvv3uZMUpTka57dkdPo2A7UVPcsD0ninG/7w5U3Kp7JoUyfrFpYJJJBAGdOitIZpeDNi3YsX5OZH431laOZv8swES4DmSLUSB6hSngdCEi693OjDyvTBxNuI7p1oa4VDT+G25kMXA2WqoGF5mD7EHdEvpeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749094194; c=relaxed/simple;
	bh=3RK32URRijvMLo5rkezuJzwn1IEWNN0DS/8PkAWILCQ=;
	h=To:Subject:From:Message-Id:Date; b=kURNrkv5T5Dv6CUDMK54u81m5RBSmH27NBhLCeTPLt1G8ya+MLVCthMKdbQegOyzMUOswjcLP1T3aS9DrMdfmTn7p1DTbSuZnpChaexr1+AhrMZtv5aLQBjdGE/rZo8ZzZQC5ZUPqN9k6nitI8Yr6/mxFXZuxNAo0BxvRv/70wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB1vv8Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB1vv8Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ECAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749094193;
	bh=3RK32URRijvMLo5rkezuJzwn1IEWNN0DS/8PkAWILCQ=;
	h=To:Subject:From:Date:From;
	b=EB1vv8Nu0Hvtq78GlZbLAr0PwlG+u897LXXIR+REJcQrO0c1Lu6Q5iLyCNm0hwj5Y
	 kNwtuWg6xQrORo1U7jHHyJsRRo0Xxgvx7hErnd4Qhoz59i7/Bi8X7RFeU4OsqVdqf0
	 isJrBpu7n8Sw2yTL5ldcweeObFaIYkwZy9EiInurD8gWCdn3S7I2NwAvokWHVE/YgU
	 GzhViEIrZrhzH7wLah3ZFtCk9oC7QdpSNcO0YB9b59vLre1g4J5c4lRYrjAG6Q5w2g
	 Rw2nbJ3s3he5lPp22WrWyqvq2kZgNJTuVKar26rj11gmX60Ty1vQyBX7lUc6MabfxF
	 W36nY1KeN25Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A246FC5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909419357.9650.18150388483101546434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b68003c666bf0bbcaada0e8c1d02827512f963f908db0007b3140ba0411d824
Date: Thu, 05 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749094193
