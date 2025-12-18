Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D07636D4EE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766074435; cv=none; b=o1LZk04A46XKzkHo3oMUKBT8bc0I3koznkU0tBvCcWZjdgw8gonoDiguJXTntrBlvch2Dlutl7xsWnoV5uHR/8k6NpJBPvzJ73/pDDn7BHcaByi4ea+HvpfZZBM6DTYgr5nP4BIJJ1wyQn45y8efach88WpYIZ/06ESlYt4aGeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766074435; c=relaxed/simple;
	bh=RWNeVRMLBzGirA72jz3VS9hhJzeR1C0WhXs48v5qEeY=;
	h=To:Subject:From:Message-Id:Date; b=jn0o4CRG6xYNeEMphnkc81XAlVNqiyeBklYhELjfvwzftoxwa8Dy4CZswyMyUz1XV/vzCEJ/M1kc19WWoetahVymMdQoNG1HNDhjbjTVTL9syM7bd5VdB+3EF1pDdbgcvZNjPcGRWmBEm+qrk4iWCxBHzRUGVJEBtnyNxkvc3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnZQHXAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnZQHXAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF8BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766074433;
	bh=RWNeVRMLBzGirA72jz3VS9hhJzeR1C0WhXs48v5qEeY=;
	h=To:Subject:From:Date:From;
	b=lnZQHXAqkqXyQPBwQ2fwOgLPpt1p1x1xhAVA78F9O7zRHVSfcR9cxHxx+68w80Fj2
	 pYDCA25xOHdj1B9Np28sRXOvoHdCLEmfJIGV800Gwj0KMIVwtRgEQD9a+7MU44yYxo
	 OYodFozb5igYYyR1X7FauOOH7Kea3A03jZhH1gXRjJ8OUBgQ6FSlS5XpisCbYhweIR
	 JKwXVTOa2WYoVNBo/ScR4GmFF11uV4ZeBECFFvI8xiPtUk2HjnsaJj6M3wwSMQEc7S
	 OiIcb6xlpHIkulDACIOjwmvuUQfVSiXLzsSl8Od7K540GKa6eCstCvvG+fh5s2x3sR
	 /1q2vInf11FGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1AD6ACDD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607443358.28980.7777274494251161143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ac4ea0326b1ba57fce99404cd8b75ebd815f57e253f3f9457dfe8e5843c15d
Date: Thu, 18 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766074433
