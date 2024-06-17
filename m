Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593A8381A1
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718622503; cv=none; b=LnD8Vm8UaUwsxmivysp5xPSLAGMIBG6pCRXQnda0z/4AN4GKWN/2zhk8SMvERB9P7SkBOj5J4mojMUytCUnRVDHOpf192J55DoeBRYoG/Ea0ry7cdsnzFopMatWEy4oRqr27KAA0YCwxCXB3un7ERjOIR8Wps+wGzOPBIe6+pKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718622503; c=relaxed/simple;
	bh=zCH+4vXOsI5VRyXycjlqQ1L1q0J+kzk9kyt4Cq7Be8c=;
	h=To:Subject:From:Message-Id:Date; b=eG4lXT8MPaViaTS4cINrKw+mnvUK7NUeBLmcVczVT5ZBxrF62NFK4lMi7RbZ6ErqXeuyGYVwyXWx1YfM22t/jGAAU65yJ/wQN3lwxUb6gZECp06S4zGAkfrQx2CQxR3N7pbOXUpGC1zv0DY5MhGvvy52vlIMuyO+WucaQJnItAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZLDIQIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZLDIQIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE602C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718622502;
	bh=zCH+4vXOsI5VRyXycjlqQ1L1q0J+kzk9kyt4Cq7Be8c=;
	h=To:Subject:From:Date:From;
	b=PZLDIQIBN/4Cme7rUnHgkM7aj2Hg4rgt1LthyJilZ0f/63hDpbtdeseClK1xu4+1t
	 G7I9yBw1h8gsEjQrmusYit5Mk4lVy8EN2w2bAs4HyDTAh/+9CO+dy/Lql6ApiRetd1
	 LO+ZPSea5+m7vco1VV7amwSlMInm7C3hNiDLHFaGcb8BMJfTgxFJaoCjbHWY8CyTGL
	 KMamFRjBkBZvp1ghUDS2QUnjYpw4IhWZziAd+zv+VLfpkJUiisnce5lZ6+6Gfdsgjy
	 e6Yt/oMohn+kIr147OQvi9PFKAUjf1NV7BdV4ONuWTMHO/KEOn2YcxZe9kT/3sqJtl
	 nN5qX+GTgFR4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C819EC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862250281.20471.3873840576761190867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc564c4484f1142fab556193a2a449c26c7a4d2446a74893498f968ee2ebb007
Date: Mon, 17 Jun 2024 11:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718622502
