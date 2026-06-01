Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466873E2746
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780337674; cv=none; b=UY8GPbOa5po+eq5EyJxIfwCeHeB2yseGfL65OCBmsSk4ZlOnF+rt1QEfUA3o9ZLabzziUYtVDWaaO3jbKDv4nuE6z+NiufVrztjZxDpGwcDBYlaR2+hrTm1pe3Q2JkNLo54kq40ldNXX+30qZkPYiPHPmFSnXCga09QfSEZUhlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780337674; c=relaxed/simple;
	bh=9UZZDfWZFw3HFO2ez3bjNetBD6MFZKkwOOIBUW8QtqQ=;
	h=To:Subject:From:Message-Id:Date; b=WGOKTovYOWjOSn4G1xgpMF1R3EzP4uX+R2VhYb+QDxt9YgfRloVwSfZBSYVFioRevelfu3EyS8zev3UTXl0N4/U0iK4bZ7BS9AbdYSKOvhg6EXQ2GIzfHlDWupMVaTcTGPpfsl/k9gfrEqTxVASOTM42bYTi8k2qIL83xqmMpmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFWJWrJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFWJWrJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7D4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780337673;
	bh=9UZZDfWZFw3HFO2ez3bjNetBD6MFZKkwOOIBUW8QtqQ=;
	h=To:Subject:From:Date:From;
	b=CFWJWrJyHjtyzGbhJC96qBmC1ZNMcBQYuV3bMUKfIJB+T7hI8SXnlFWshfMiXP9le
	 ogEBQX8yq6jiby+/z424YrlA6K1AYWHWCxcy5HCZr86ZGkavi1jasE2hx5osBjFBPX
	 WnvzvVIeqO8snpXMJfl9ooP9ZZXfvnkLdyBDAm8fY5Xbnja7fnaBmANbb0C08B2OI5
	 +xu0CeOE3Z1r6ekgmf2AfAM/Ofy/479XT7kDAKifWTt0KOX+WfynKszd82/KjCROsm
	 k3uxISRVGL+CUC7b7eIcA23acNgtrE4soU+Bi1czSKOsuY6KafI5shpuAFojEWYLF6
	 uurgELsUKebmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA47CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033767368.30750.10283383848664815997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc36e742d39c9ed892d9f270a217bba7d9035795cc6a63156ee2771c1b89061f
Date: Mon, 01 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780337673
