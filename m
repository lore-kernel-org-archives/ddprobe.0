Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4806D8BEE
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744157395; cv=none; b=Yk0fg5N3Kz7/tlxDBRORZm8xGKx9PMhUbNlfNYg1wKX5laQsO7Skd0lQwHaNIdDXW0r7IZj3JDD2XeQJFj3+DjGlbOvM3w7ONmS8kv927lPI8L/2QUHHf8NK+voU04w2dFbarJ81fOTb4Salr9dClPBvUR6cmVf8T7lx6cW16rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744157395; c=relaxed/simple;
	bh=wvsafpwT/RuyiHYEk1ts8weWvNkITOc0dkPFHadwgsA=;
	h=To:Subject:From:Message-Id:Date; b=TkcW9vD8TVuHcRJG0n7HDgmJqP8t8f696iNuHI/CABladlwItgAiaqc4ZW1UvMVtId9zZJpdPm80HW1FFkqV64lpdLCqJhSblTy7OjhmJ3Ed2s5if7VXna6KcuykFuVbN5q/M+kvXRKXxQx9oqAIU5tBj+OfknUVYng/Np2KEoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sznxPjeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sznxPjeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4FCC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744157393;
	bh=wvsafpwT/RuyiHYEk1ts8weWvNkITOc0dkPFHadwgsA=;
	h=To:Subject:From:Date:From;
	b=sznxPjeXb03Sm2Xt7sKJzt2NrCj6rW6EsAR7MkZNiz6IAuog5IxeoRDUw30s3F/kB
	 wZvdUKcs8Sv9S71uPQvqE0xQy1DBuea5HR6T8sFGFlfGL2/t+umRErKsP4Hgs+z91N
	 afolyJKHFdTuJENEDUUSKzDU5uaX9O+qP+uVo4/ixsSm5v++pD14uM1b0D72sBH4Y2
	 MRuhgtGrIxPdfKAW+IxbvpEKsMLNNsSZmmMKXXQ+oDmep4NIaNlEmFPtXK/9zIVRMJ
	 b1qf2xwcRX8niwT9cA5pZJONJD1p8Wf7KpbKU/tmpmTzTEbUul8jQGjLwbPo6fj178
	 dUn8MsF12yuJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C04C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415739365.23406.11921855813729643648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02de56397bb5d396debe288a17b2ee7d22c2980d97e882ce0cd4f93ad4413c60
Date: Wed, 09 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744157393
