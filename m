Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DE110E0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720828163; cv=none; b=CxAbdDgsT0IszNX9okhA8yU6sIdVrtc0RQLxynzFtkF2Dn/85CZ9dE8iQhg+x+OA47Ri5Qrn7XEeh5DwTGBCKjF1PtV3AKQLxenh0KCBn3M3nb4FFCBQWyd8AdGfdVsXXskd3HoB+CUkoQEV1pzsf/XDGGZ8tqIE2OpeV6zQaV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720828163; c=relaxed/simple;
	bh=hbN4lFYI9pbViUC1tDEpD8zSvAqai7xZNo5i4CHBQ9g=;
	h=To:Subject:From:Message-Id:Date; b=OzM/uYBFgz3m65vkUei02jENIh7ULRTF+vQOkA2q2HK6Rsbq7R7z+b5GRLoqgobB2u+w+DfJ5jZi3zrZkY896+lhR1drMmyrrnQuSkKycctFnC/kZT8r8FWhIRhn8rAkkMVjt0WvcGnFnvyUchFKFnAjTTn9i32rk1mfvMn4g0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMkFgqti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMkFgqti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB848C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720828162;
	bh=hbN4lFYI9pbViUC1tDEpD8zSvAqai7xZNo5i4CHBQ9g=;
	h=To:Subject:From:Date:From;
	b=SMkFgqtiSmoZ10ZVv2LlTm2pwAwZ0uL97K7r5L8GsrKeqh7t2FlhxaDlcJXuv3HO8
	 Mb52YvRl9B1QP72MOBFRUFt6hHvaJCfNhpqwkYkcTAj/53FPEEPJD9zbHi+kbqh+kr
	 RP5Znux4PLNEqW1vI7ty1q7WO3pbRYoovqIifYfgTTdoj1tLMoYwPABXEneQiMviGC
	 tOLgqQRqPBF4lEAfTT5N6v3jgQClEeeofnTo5YzMwmCHspcGYtuxnlHRZXX0xfs6JH
	 ULPKrcXElA4sZlmIkiyVzgbmRgR1oWieF6VHSPfUoaksIdAif8uf3WC0civi1I499n
	 1QOUw/zwsxM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1065C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082816275.11226.4839982337352598033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f8f465b58fd81c00e36fa2d346fed8d0118d4bbc56ea424f1291eb9c67d6ce
Date: Fri, 12 Jul 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720828162
