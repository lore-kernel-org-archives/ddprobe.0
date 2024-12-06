Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7EB13AD2A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733448354; cv=none; b=eXJ02nEfgd9Vo8cdNPytQqhqwY2SZET9re+5N9Sw40BzcRLlo9tlil/jJwdNWAa2NWl5VsNTZIKOIXfco0Ac7W0XdbfuMxyrxvchcxD6tnz6Gs/N3ORCx7G278nsHdMXdPIPoF6RoHJuHW+ZM2NwO8hiwr6SOHhj5yjYhuJgxjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733448354; c=relaxed/simple;
	bh=pSiMft7NHQE6yr+e0CuGhfUs/KOsSBiJrK6bgG9rqDE=;
	h=To:Subject:From:Message-Id:Date; b=m8fal2mXeoDhIBLGM5BLEeuu9DYzsWemOvlntOQZvUJiEn+SU7ikh/EhmfIvnaq2h/9IK+Ev8hW2a0IWVFiPZJk/CIQuaF/d7NogPuEIY4niK21FJiV6pOamcmwyf8YATANdj5FQNXSqAzrBNtmGWzupOtpRO88EGTv+fb3b5Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ5z7/J4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ5z7/J4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB08C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733448353;
	bh=pSiMft7NHQE6yr+e0CuGhfUs/KOsSBiJrK6bgG9rqDE=;
	h=To:Subject:From:Date:From;
	b=mQ5z7/J4huOk1f7Ja1BYk/KN22Jw4ku36+GUtRxBPByW+iezLpcx17y5X6d5QEh2V
	 AXOp26f3qMilJ+kMUCuKx1trr1tjfBiCs/aFq7/ds+0tNFi8MHbE0zaDdm+iXi6574
	 bvSjp1zMjs2+yQkHq5JPr+ERYpcC0jEc+2Nt1pmTd3pYFNOk4/PzwoFc6L7jRvLH0k
	 1WQk1HV0VAE7kV7fCu3fgC2hLjh0hbW4iBjW+LLIh9yVi68psyBqlImb7mCb3zLTgm
	 /6o57oO+HHwKeckcvC4qyNzVHnC59Gez+XYYC9OXtbymcJbBdmaWbboUbZ9k+ibCyg
	 JTY7uF5LndODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6AAE7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344835361.31148.10195065263166840138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddde2dee6f7689ef5ac998a52e42a31e932a39a856d2713cc088ce3f52d909d5
Date: Fri, 06 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733448353
