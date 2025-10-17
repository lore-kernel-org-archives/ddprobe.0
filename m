Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E5221543
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760725194; cv=none; b=mIn05Pa0ox1Oa+/DqokLuoDTaopENZ2r0uMdc2oOzFMk8GLWTCKSxiFaR1bMv+xpeJpWv9C7xvtZ0hQpDEQce0E7YQy5Gbc+dvS0whvCEFzGGQkBJXKYMBbSWOEQzv9gKR/3Og6shgRSHEr65Tla/CVxx1H85oBniIggGKCVxEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760725194; c=relaxed/simple;
	bh=cM1ui4gmGeZxpAqMWDMYn9btCu1RQfWelyziVMqKuD8=;
	h=To:Subject:From:Message-Id:Date; b=Pkeq/pZMuM2Ff22CPZ096wLNXpmeVkg6ntbEn6H8Hk4QV614k3zVCQV7qY3V6jUJTRGe2qwcNbcmE3s9YPsdl7jIRFUBMCl0hSo6TYjQ3hYabPTFNt1uU+VWewBM8yGJVnsuw7Ni6Ag70z8RKuPfjhMVDG0WZ5K5nyTSgVKRhs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxaBTdGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxaBTdGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D64C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760725193;
	bh=cM1ui4gmGeZxpAqMWDMYn9btCu1RQfWelyziVMqKuD8=;
	h=To:Subject:From:Date:From;
	b=PxaBTdGsEwBabCwY19s8nqyOaf9z7HOilO+3RYiby6lc9v3267oSc/vCDBo6YDvVC
	 3QxNRfynfpNQbD5jVfLuDJw3LBJM3CdtyLaZqjWN28YnU46IVZ8wJ4CiF1ds0bth7y
	 Mn/n+hKTWwxYkCBCptXtWKYqy+r3OM5mUb8OcMi/rJMeaFAZZ/78uAybhsZWpQBRwd
	 JpaR5Awio/uY0ys1wxLh2dqbV8XIVpzWdC4ckorKkVgv35BN1C+tcLRDi6ItIIQoMk
	 hciT3sKp8yUgy0rUA1wnpQbQOn6Fqp+DgHvgKHcWDU4DVHbtZ96dtIVtlqPrlD6NB0
	 5RF+YX3uo165A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91345CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072519358.5325.6719219997544787687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b882040b8c72561a4b48babb047d3c242b9b90b968b9576aad9e6d3f530529
Date: Fri, 17 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760725193
