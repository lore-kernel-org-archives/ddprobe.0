Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DF352F87
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780542274; cv=none; b=fs4C8SY/oOnUR7kF5hUAPXpJJZA4GEkv5wlbG8r+OSXjKxhaSGer88swuZus29zucEcO3jZycaEk5h/DWc+KNayW9lGi0c5eu3qVPgVEXIze+ylugeQNmt9AdiAgbM4FOgfdrKqB2Ry2PFBTpmYBFn7qM0TZLl72UGpFAYlvQyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780542274; c=relaxed/simple;
	bh=drm6IfI/8yM92TXDsjyQH0X20sZFbKkMNZ74+zVaHXc=;
	h=To:Subject:From:Message-Id:Date; b=MSnIYW4T4WvxFz5fu4AewFTqG0/aS8/flCNPiCaAfMi3iml3RCmGjaxTuMGcstjXNs203FyHF+F+xEtucdaWeqdavMIT9KIHoYnweAUrr7SHPazVTqPbvqkmRKGmg5LM3Dx0FSOo7bY5x6BFLcqyRKn4ZYn0v/n9Z3LWKA7tOog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uECioT4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uECioT4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDBBC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780542273;
	bh=drm6IfI/8yM92TXDsjyQH0X20sZFbKkMNZ74+zVaHXc=;
	h=To:Subject:From:Date:From;
	b=uECioT4rky4FXjkycmatbPH1MkCTaQxX/6QTFqB7TII8UB77t2ftCWEXH+TU8Ti/5
	 Ir7U76phSOk4R+QWOPCeN8/KS838WZ+eKE1WZtRq2Sh+RgFN2J1Q8bP1EpBds5z4UE
	 vdBrxHqpSoOOi6M78One7EBhfd24aC5dnCCHzAfxqgIxuL1FQiclNa2bHZQ7c143i2
	 CqF/JZxWe3IB2sfjZRfuZeUD+SBH9v63wR+d5Y6JgmtJ9GMLYlryZc0caQmxtxogzg
	 /w8aNgGvb+pQpoEpm9iqG2rNVavwZQIbO+xGQOj/nDx+DpVoyI3AHGIkbZKDksc1CP
	 dhV1cid3HMpaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D37CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054227368.11904.3086976487933907934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74148fa1a8047da30a2c7ff7e568ba128fd2e0d8761711619ef25d03e3aaa7bd
Date: Thu, 04 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780542273
