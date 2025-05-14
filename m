Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CABD170A0B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747258794; cv=none; b=diUkRisTWKeUUo5fWz1c5EE1twSOUNorEfEEKYMFUb0LOLlH8JrWHwblitPF+cF34CzzISlLmrggtFzMPCJHuqhLVLDoCm9FeDrigrXps88h3i0ok5jXA/UTAGJHUtvYm/YPtCyOPCHnSkH0t1bzIUeF7nANDu0LB31Y0E2VlbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747258794; c=relaxed/simple;
	bh=Mss/EdmMi2/pV/rs3HznPngwg4qo75mtt6Cy5brTmjg=;
	h=To:Subject:From:Message-Id:Date; b=btQvGJ5G9NgrHlyJmNerM9XnNh7+FDWJ2QVJZxVZczgIEUa1wj+YHGA87NK8t3hMinaR632+EF99lpP5xqi5XTGmUQRB2BMiBk01R/+Fu0yt61D5c4BQF57Lh5rMpL1bfM0IH/7tIKLGy3hpcq2T4wdHuLWIkbm+JcOxfIoLNEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cncyMbuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cncyMbuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2108C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747258793;
	bh=Mss/EdmMi2/pV/rs3HznPngwg4qo75mtt6Cy5brTmjg=;
	h=To:Subject:From:Date:From;
	b=cncyMbuTOROguK5CiKNsRYTEbZNt1Ia72iSd5136NZVGY3NVBaP/bjej9TgFpdvyz
	 5brbkrY1Qzl75HfdGFjjdtZ8MjznePTxYpYMt3fLil80v4fSX8m5tFYHGFprH6hFpE
	 FL4pXw4W3hWe+uKqwzdvWDEXapB8uB1wYFoX9zB7IzunWlR9a0zMks3qN0OZoloM9N
	 pGXprzhcTDBhlRox4AcLvndT3Wchg/Enn9qlBnUfL4k65BGDZ7qDd0wFsDa/MB6LS/
	 9q5meSM+ldHoJWdZKHQ4k0esJhkd9aEsHLpiB/j5hjUCjx/4GYda52fs/MZgRHh8GM
	 jItytWzC2RTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078AC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725879358.11733.3350748434547664916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019b4b78b33c9dc73f3a2013a183607b9b3a0c525b74fcca4c97c4400fae35fe
Date: Wed, 14 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747258793
