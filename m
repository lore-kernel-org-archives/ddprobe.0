Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B315B995
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725870954; cv=none; b=AuWBsSNFi1j7K9o4MGGw28grHf375l/7OU/6/GUHZe+8kNuI+b8PakRQmE9nAS/Igoi4VN+EsER5yQ7qjl1MmPv/B4nPmQDVDyYQXx7pY3UUZ0/Wc+D7RTIvupUDd9Ty1a9f5dUbwfXep+CCcCukfHOB5Psjalkrf6SXo8v3XsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725870954; c=relaxed/simple;
	bh=wIeAiQMgbHcJtMGs6HyLXj77kGfhXefEqLxF1Q3ERGw=;
	h=To:Subject:From:Message-Id:Date; b=q6U9ozP9zSCfv6KBAhtwJaWeLzGFNuELSMiP/G49xJInRFv371m+y/1C07WfUTmFSBrlQ+6VSb0tJnHhhCs55f6vSa8xSgNOmPtbcKPbjz2Q949GrWscjrHaU2IdMfvdG3aF/mKxILJGpqp8pFtLVzirEqNfUHaV4+uSDwA69ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRkYQkph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRkYQkph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D8EC4CEC8
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725870953;
	bh=wIeAiQMgbHcJtMGs6HyLXj77kGfhXefEqLxF1Q3ERGw=;
	h=To:Subject:From:Date:From;
	b=VRkYQkphheddLUUzVR/sOtep9zzgYCCkHae6Uw65OvfpmvH2jan/HPSMGl3fJN5Pp
	 IFEImbX5fGyxIQODcyP//7XlT/c2PC83bwmbZAmNnIkb/5mpIzQad52wcsKmSL6FFB
	 YdvbH9khh6pkcUESxHeyzrudnk0MRfMxxacQrz9qIp/pKe3z/ZZvg7mp81Zy9YjjvI
	 WZpIZYoZrdVhMTov1RjMQh398ZxTCupc+Q6Rqdg6/9ABsLHrjvx+PVpWwcDPWxYymt
	 mKo6Nng9AMwj8ScfKrrkoVUXK5q2PKunI6uaZ8Aj5ddaOUTo7bYSiDuRpApfd3/e0j
	 iFHwRbyG8Z2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFEECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587095359.28387.12523488310548159856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2143424f9a4544328cbd058dad04b4d9b09e0dd183f5d16c1b0adb256f33fd
Date: Mon, 09 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725870953
