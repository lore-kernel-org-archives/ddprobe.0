Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FECA2D
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730876754; cv=none; b=tR7GRrtbjbS/j6pVvj9CD04GWlAXxkIzGRZ6xD3H5ITuegQmK3szettvk5QYugVKAsIyA6AFY81+tKvJHlXb/ty05BiudcmfhLkEK7PChc9jk5Uxm/kb9w37aa263BWzXP4alJK/azqvbS9q5+tpAAmYdmPe+F7NqhlydRfmmP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730876754; c=relaxed/simple;
	bh=AdSz23+F0q7ogVmtuQ2JMqAE9wIfqhFlqojJ8DHF/w0=;
	h=To:Subject:From:Message-Id:Date; b=ZrSNMcTIHOaaUU3jZ5QkmOEaIYkWwZaYE72Kmc5BI3jpdEAme810LhY6QmvuKBRW4bVS9uXxfaZTfNsqY/OOrwSWrnMc9MrkDZtd+bkfQwyTBB/VbzHw5OHkP50AhQznPGqnoh/9c9yD37PfprtsvYA36vjCtirlIwz8FuMtGHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4bB+Tl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4bB+Tl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E7C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730876753;
	bh=AdSz23+F0q7ogVmtuQ2JMqAE9wIfqhFlqojJ8DHF/w0=;
	h=To:Subject:From:Date:From;
	b=i4bB+Tl/EjPsEmTMExyeJyhNpEzoT2K6tEwM250q4p4VdHM0hWG4bMPEGGMRRZ2aY
	 V3DRVUWTZyC174CsSUssh0tPFvBY9Y4rLba1xmmu4xX0OOhGSZNlv1wmjem+LV3mRl
	 hPrrGmNSnV4/4BGhFTt3jtYjOydspQqEqjg58V3VvDCo9Z1MKaH97zmAvNaBhFFlbC
	 VIY4XBkj/H2vqszSSnHnX3zDYU6zSQ8xwXx1lG4AOrajJCb5Pa0pmCG1c/U4Dh0s5/
	 jR+zW5SEvV3tq9bADhZaEkdWAUPv2N0NwvKIr0gqDeyihXmq1km5ddxiyeRZWh8LxM
	 l7q8JBj+tOQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8BD29F9F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087675359.16703.12641981710715094300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a729ffbab3c9d9d65dae1c495cab5df28fec50038d5dc20f561bd2de7055a1ce
Date: Wed, 06 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730876753
