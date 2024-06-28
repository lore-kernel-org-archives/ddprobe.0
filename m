Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E94C1C683
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719570263; cv=none; b=TI7I11Y3Bl8BErJTiCm8gppyHCaW3R55rHfebdeGmQu88RK/AtDD+VPP9/J23OhRe0LQy8KHvKapx2S7XeGv1YinqLEm3UZpxU4jaZAxGQcRr7yq9PBonXPmRT0l+33gTdDu6I3Fa45hbO+GCEVBPVoodClWNLHurE+3hHkX8WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719570263; c=relaxed/simple;
	bh=jVLsQJQWm5sY6Wet1nrKfN3p+E3CzsJPwSe1ap/A1NA=;
	h=To:Subject:From:Message-Id:Date; b=tDVnqCi1MDZJeUqEV9Pim//i6WPovq/noPeyUlBOgfJ2aCj8HzaKbQVxKGR5ZsVnJcg83nQAL+G25FcPtC45dWPh6hFv4FVZ0+fKsSoUntbE+eYczjjDMAx9LdY6boXilLqY0sxFosiSasZfR16uPrgCqBG+xSJSHkL7zhxkf/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idaU9XOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idaU9XOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E036DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719570262;
	bh=jVLsQJQWm5sY6Wet1nrKfN3p+E3CzsJPwSe1ap/A1NA=;
	h=To:Subject:From:Date:From;
	b=idaU9XOVsp82Ct6hD0jXAtzKt4D8ZJXKijWogGJ7I5QBcOnHlvsjQK4p8DuJwNp+b
	 j3lH68LXzDp67HFAe4F5BsBCRc7v4UwEptatiQskVEz+3aEEuEWdfQ0QUwVbM9NE1S
	 NXnM2gDhkdKkmBciAlEM9+Jc9kdL8sst7nSYGTAK2rMI1m7aMNS3YnvapeGkXcbeLM
	 nhUUBApNvx8NiyXqMr62yMYgME0xZeUyBYXLCrNwrZK04Dsp3bEXmR4wI1Z1OCoGcI
	 ffnDFj2zj8vV0SDjWlJRMkfpCSxI6QA3W8rdzFhWFUM4B2NdMEguqjunDtIoJxH8qv
	 dBzS1vBPIrWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9475C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957026278.17661.11671031280891663022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b870277b58da0066e22b3d02a8590919755fcc428944b667a7a53d2b5f5b0d
Date: Fri, 28 Jun 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719570262
