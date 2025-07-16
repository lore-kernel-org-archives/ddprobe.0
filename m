Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2271D2356BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752680394; cv=none; b=tt+MR9QngwztPbIjrrunYrffcS/wZ9qeRDNqM6F+3Osg15qGLyXnUs8lPLSsFfEhc9QS/Uetn7IBW/yfrAYz5PPcx30r20yrGCIqAQCYoQzlIvUWN6Vec0gjaJjoXJwTsOeykHqRLC2D9NtuEBPOm9vRHspyGMZ7+U0hnINQcmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752680394; c=relaxed/simple;
	bh=TYcymzV/oGUkBoIQ39X1eEVROxGZjSc/x6izC6Cm1m0=;
	h=To:Subject:From:Message-Id:Date; b=C+z8CXah2az9v3ZYwIALQUoqgHdNFrEOF3+0DvNPMLvoXts7AZ+unxqIUCte45j6govcnbgXx9s14NzmyuLrRVVtzDHEuKLgiVHCXRDemftTIIPXBfLBsvsmAXoXSjf0FnjjTLCFhKXcWOUaU/GvUhjguVctvcsjMFsizLzy25Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCKK4dhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCKK4dhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9CDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752680393;
	bh=TYcymzV/oGUkBoIQ39X1eEVROxGZjSc/x6izC6Cm1m0=;
	h=To:Subject:From:Date:From;
	b=kCKK4dhVXd4gAX00HHjl+4JNNq1XRIdQIAQKCeTgbe+N1MwT9Gp1NaoXm2EbC3rQv
	 SiFfLeAylfDO5XiQJLzP92QeTjkXriHY37MVtdW5iPAAfEbD4HyXZ0/2gOmGVcokU0
	 3IpAdjwqPol+eqtEolLIbt1yn2iRCV+zaOYwxwxRHvlUFjlZ2zsCZ1xl2oN48kQp3j
	 YXbfTtEIUbzadp50UtgTdioUybexG8XiK7BoeeZiqGqrrEOnPM1z4v5FVExiSvlt2S
	 /VLAxkZLghg0Vz3vxy+NpvRUm50qG0qSUtwmohWver4oW8ZMobpCI4gTrgJUrND2s+
	 GmPxppxUaZUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE8C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268039357.30352.11753753911020724706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f19a0f0b65d9e96d38140e87b37ffac6a2a44938da73e4fc68df7e43f62d43
Date: Wed, 16 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752680393
