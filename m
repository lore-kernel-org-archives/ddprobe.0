Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EBF14F98
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752958794; cv=none; b=S/fouwFfBr2LYA/zHyYUXhDc7Vl4UfoyrIuEtHXchy3c60cxtJcbGieDilutd1vgM9OUQFCNy5Sqw3znILkM5aPhCtpqVNsi+HcYiJvIsFvLHUkIZBqw7QMmFLWwpnqlfWYwyYAm+CcDyLLHp43apknxICx3PwU/h8FUohmXo6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752958794; c=relaxed/simple;
	bh=xecVo+bsvV5wbmAnaTwk0GRMdMxaTE5TBBevYUD4yOs=;
	h=To:Subject:From:Message-Id:Date; b=EaDn1fvYkU8t9MA97aqSKcmWfhhbsHUI7L3jB3Lq1+VerRF8eBdU0klsysR+IQUCmOCnKyHgw9Mh3TneNre1jidNy3GtQdVkQ26RFPCtJCdZiNO1B41wEtkBnNKDv/XmxNn5V02BHoBqn42PF69oKx3p9H4imLm8ktW1aAkC4XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMRTCWDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMRTCWDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F85C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752958793;
	bh=xecVo+bsvV5wbmAnaTwk0GRMdMxaTE5TBBevYUD4yOs=;
	h=To:Subject:From:Date:From;
	b=vMRTCWDUveiUZzWvEQ3mIemVHfGL2h9LsLTlCIwjiootgKOrXSbLW7y44jbGz4oJT
	 5wzrImFIGv8Cq1LaXIos8sPRmEMUQf7ApBrDejLm13RxtmKYN8MxG44HE4WrUTqXd/
	 /q+bDIFFc9nNelISOEtslasTSGmhDULUvNMeB6PyMmPoMKXrOWuoO1SYicaQSVXAIv
	 Xuuj2mG5mrxeHbcnab469R0wHogdpXrui4xTFIwqhZ1K58+xyfj0VlM7nOa49p5mjz
	 /JAznYPUG5VPyd9Vz9vSV1qhg29aH3GUNKKjn7PzLi2ErIWoxUagfW7slkXw54POmW
	 fmHCNQJfV1MwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95795C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295879358.7580.9903473156535678409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93c7561f78734f7dab6cbe810564c9f629cc351554a938b48a0a6e540b5f73d
Date: Sat, 19 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752958793
