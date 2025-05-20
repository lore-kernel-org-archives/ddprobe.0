Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B0237160
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747712394; cv=none; b=oMNGI0TeildAKAcv1kkJazyfoOanDZtRAHOZlTQe5pcqLB8Mau0T1qjFQnQJid5OtokjD2LtVq+Nlv5mXXJ41aG7427Zk35tYNnBZES0RPRfkMOB6NBpxwg3hsBAfvAwzmxqdiyUczthhYRM3w63QRpAERn2ftET/Q7khGCSwz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747712394; c=relaxed/simple;
	bh=mm5+vgggxY6Z9LF96mKUZLzyhYeJ7c9sEchohPCLsA0=;
	h=To:Subject:From:Message-Id:Date; b=VmYW9pp2agQao9WOaI+QptCTBzxEhgCYkYzu8zDGd1mc/dP2E8gHlYDvjHaoWS2CZGmvUIy3AMWiVXP3H0wMtduIptt9spW221Y0DhnACDQV+ehVseXdaAmtD3Xb6TEtgppRMiWPC5jq2CVs/4NmhZFHTvIvyAyYkRbZAVRXxcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozXNKdVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozXNKdVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747712393;
	bh=mm5+vgggxY6Z9LF96mKUZLzyhYeJ7c9sEchohPCLsA0=;
	h=To:Subject:From:Date:From;
	b=ozXNKdVSebCi7exJQzIo8eGCXiuNzibFw6990Sr6+UhrfByoZPwQ9JJgUiCHJojWi
	 sSgcgkWbftQ/43bKD4PiRpuzlitEDWpaVbKAglsUj/8ejEfcaj+oft+VKawkoDuYv+
	 z+WNeFTTVS4L9HQBJn5RFHSd1CDVlqOcIwAc54ol/NCzjiqiXoIkLZ9z1GolgPOoqm
	 NqkCQILiCZFlDOUVq4tGvvXxzcYzsoaq4xr8nvwA4HyhJI3Z91wlg39Z81Al1twRJo
	 dPJc9cd55enUHVtIbU8KltiBoRVx+2aLZI5tBle8qfOVqTaycvBZ+ryDBUerrKcIWp
	 kchrNPGv1SvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94310C3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771239357.18597.15344074243307696133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17b60281f428d72c0cef61141d5aa821ae25940b3af528a710af03632bb9362
Date: Tue, 20 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747712393
