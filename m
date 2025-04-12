Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5346718FDB2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744487395; cv=none; b=TppfmVgYzEyqMYfXDVn9forp32RnWO9HCr4G5k4VmuwKGAGdiryMSprnQX+VlQ0qf14re8H0H9W6PwSW9mjGeZlVfTxK4AauNkNi2oxPXp3HqbH1uYlWeoBzDcA1G0t99zPo+ZXAn11dJsVBxtXKtmZVjzj+EunrSbqGMYjQagY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744487395; c=relaxed/simple;
	bh=ojdDXSLtXGuFoiZGKgvAt2mE3TEOAH/fJa9t5iK6Bpg=;
	h=To:Subject:From:Message-Id:Date; b=jhLT1v8p/kJHvpW4i7Iwc9lLr1bQEH0hv2FzXDPGj9Gt57SAAHA4Djr8hNeJS7uQl2mAPLNeSdK3rBLJf625EOIWg577YhJuu37pSzMZMsj6UbmQKIML9KpY10bPraMJb4+HkuvfOejgywETkgejjSyVcIMzHZl442BV+55lwEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggi7ktPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggi7ktPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3216C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744487393;
	bh=ojdDXSLtXGuFoiZGKgvAt2mE3TEOAH/fJa9t5iK6Bpg=;
	h=To:Subject:From:Date:From;
	b=ggi7ktPpT7N+knOAh/uKIfD6jEF2Gx18hVfauWdBptBs+7tgn7bOK5MdUvxqJNRNU
	 Ue0UT9/PxNTPcFX4Wwf5j5Xs/ikQLpN+Tk848I7P4+DRLLZBauT7mPG5h0nDz+LV+A
	 qr0U1SYsCvhVw5ntPk4N+fcs3YHrrl/QyCJp0QsC1KEXyAFhrFkEO8t5/rLgYCvnS3
	 vdsjw+bDBk9dTc83+4cziizACGCnDvq2wQhY53GtjIi/8xhm7tCOrqT5XmdJQq3ZK0
	 bgqdSkpr+PIN/lOhaI8EqLcLHv9lLq0O+rL7LTfh6diDEQaBku7p4oG6U7d5PsZc26
	 cAIQdwEMqnZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C822C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448739360.2208.9749417039691715116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee210517a4b86e21cd59be3bff43d1b07d734993e26b9b5a5b4c674dbd73088
Date: Sat, 12 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744487393
