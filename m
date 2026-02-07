Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198152E5B1B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770459834; cv=none; b=Wo9Rnb8igMZG0OBquw3CBYsFYlmUQQQlkiyRTsE95y9WYsK8uKgZ5mBjrdGBFct9EPJ5MxX2236E7RPkZslPAS/oGPkJrqAhkJw56WT29lizmowEraT5YCMTtygKypSIg42bNblp0V1E/lumkdgmMhjQB7pkRxA04TCzk5eo8OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770459834; c=relaxed/simple;
	bh=7amPxH8wNB4tGuNCY0glJ4JjflVi3E104ejgOVRyrBA=;
	h=To:Subject:From:Message-Id:Date; b=bHXhX1a2ppSXfH32e3SQrFkO9DmMNfBpUPfCa0D4EdU823w+akqqIcOLja1QcbcjFizYgrjk0GcJlcjEW2odPTvBYddSjlVzOthSYLCT4CAI8T5GmUeruoMiYfW2GN7xgBY4lNmqK/NfYtrDfxV0v0pZ5Ec3CmQW8gldoOfkJMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX/bby05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX/bby05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB402C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770459833;
	bh=7amPxH8wNB4tGuNCY0glJ4JjflVi3E104ejgOVRyrBA=;
	h=To:Subject:From:Date:From;
	b=kX/bby05+TEyK+3hO1NXFBCuvJEV81Ob6Tl0xE6Y36cLjQz6yAyHrTzq8a7NS2g8J
	 vxC2GakhmtQpKTIA/otZUz2s03EQtHKYYPknNCnr+qLch3q5+NU2Wh83vkx/T56hDJ
	 pQhrVv/u7ZH9SMtZuO/FVFcKknjf4Rst4HD3WAjFWtuY/4D6NoPvcqnur5MFkya44Z
	 iSKQmgV1kCOApp0gW7kSBTFBEauXNqQ1i4q1xnBMweVNjMOEK7MgzVStDgBKB2JgPv
	 i87S9xFKhU/+s2LDb8UChJYWO/WoYfxY3pcTyh8Pb/AwVYEgKMY0wjvmN7y9VydfV/
	 K4bfUz2NS9OGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94955EE0AC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045983359.19024.3412848766300427605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac937ea9c43a1681a9ee311f511013fbf2f9a48d334b8cbfdb016fcb8ea72065
Date: Sat, 07 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770459833
