Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DF69463
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758530394; cv=none; b=qBHOMPkpwpTd5+ukFNprboq2ccF6eiwwRgAPPrjjJKvqtjYXexwD3/OeDaSvTfPYd75/aC/Iy/nnSMa9DGG9ARaYghf7CNPue8POO7owpZJpVVGBKHIX0E2dzltDp1wS0vDNZXBBt0r1RyQ+vKA4osTAdjWOZtLfGYPt7uUbJ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758530394; c=relaxed/simple;
	bh=H5Isp6k6yA4NP4D5x+g34eLt84K8C6BDM/S1j3Rnp4w=;
	h=To:Subject:From:Message-Id:Date; b=i2pBAJ14lYZuRNgM14CFXDnGfDUK/GcJFmbRKDcrEiKk0Twqbsh9gU1swsPCqGa7ZTuiPLoMQ9aBCFHaQPj9+bvuuCTRgBABtLlKLdgXydugtgQUN1IInOs0y020vChanLHQ9ERf5aXYznruzudRDUnX36cxnPjU7OpfbiJ/+FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVWXclot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVWXclot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82DBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758530393;
	bh=H5Isp6k6yA4NP4D5x+g34eLt84K8C6BDM/S1j3Rnp4w=;
	h=To:Subject:From:Date:From;
	b=oVWXclotgxFod0Cv0QygE8pIpIdQQl3FMwxGGW+499dhsJ0xJGf6dWtZLbTz0Dn8W
	 xmmPib9bcDcRXIhdBKBHTKELdEoYRLWTTNUguiXNfliJHeVobZrds3hi4UZ+Q3Aatt
	 DMMltCd8zpDnMqpd48X8vFhjhku8uZ6wsjE/nGkwPMMmFqp5eB4C7Yasp6Y4QBSSt4
	 sSvRGcsGaTM4OAyFmMwmyugo+heTPYWs8GUjXPglV5oD//EUa9+PKVtKhpD7TED8/I
	 MFCCNbBDDqBMSTkNK+Wf+QuW+3NPJg5evFt/vAs5zbc9Bk0H8YHQ1PBlm9V7uxU0jR
	 4NPI/r4bl5vXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CAACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853039358.22733.14922356011301599806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f42efcc6258b2101256d1281efc24d1a093f2e944e28dd4926d39ac0113d33c
Date: Mon, 22 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758530393
