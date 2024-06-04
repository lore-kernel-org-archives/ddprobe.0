Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B11614B095
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717531583; cv=none; b=TPUjBcqUuTLfaEowJJ3nIw0ZX3uxuRBygMgIEcX5Cwm5Oz0kU3hJgemsvR2kewPwppl/lMWlBRH5CKM43S1Gd2NLoKwTjkUIzotgoXZJY8MkDutk/Oh0tdxxSWdhXCsdrkKAbTsjGWpLiNDh+Dq/ADOMO9zg7+Z95g8AqYqEJ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717531583; c=relaxed/simple;
	bh=892/RESdwAuhaEImGg0SeimUEqyvax0C4qSUnvqQYWw=;
	h=To:Subject:From:Message-Id:Date; b=ecrRT2zRcBlrkbxA47+o4x/z5pQGNYD8XrYioFe620gTe/NCpR/C6bcpm2SrMs6urReSmdy+ncLQu1oTPcwbw6E4vKtxpvtNdkddd5/+oTnS8FrnH0Ihz7IWNRw/VR4VHKJcFKu9lz9L3Woo0CweSZcP5WlwXFq33m0RzaiGMWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a30g0PP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a30g0PP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE107C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717531582;
	bh=892/RESdwAuhaEImGg0SeimUEqyvax0C4qSUnvqQYWw=;
	h=To:Subject:From:Date:From;
	b=a30g0PP4tP4HYPmb1RBTiyREFBG2KUDYHDDFQLLPYYEiNwAfnp7lDWdFUePocPRjr
	 05xmTc6vCrwlbzWDARfsEy/PegA4aq0lePY6cJ1Hyi9vCiox4Q1GCaS2coE2YMrX2o
	 tkbIDPt+Bpox6WRRTZTz9pxLxU7tXZPdZWW9a8kN4PW7H2X10/NpRTClCnSbZj+o5p
	 uFC760WvHvyjODQqco7SRya9OjIv28Cj6b9YMCggX1LqvwoXOKHNqpIQHgrjXckrKZ
	 4jViXaUhDRgF0AjN+Qx+DMAqfmBPs82r1oEwAKnqPNd2wbD56Q9qrHZ5DTUYQHnFmI
	 k/q92uq1yeM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE474C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753158277.24691.17313461075283801903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f0f777f876d9225a933cac9d28d889c4e4bf6e8015173d791519809a8a4696
Date: Tue, 04 Jun 2024 20:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717531582
