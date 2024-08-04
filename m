Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7C1CD02
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722760554; cv=none; b=qwWgIcAJfv5Rb3llyoXO0RcXs+HKCeG9hFEGQRrwkxCjQTpJaAM8b3NHEsjmfOXElNQiGedHdeUWgLQ/GGqEewoTh3Hr/9DpX+HMznh9Rx6U09Mu7rTI4+UXo6m0MQTan5D3cpRHqINWN8XPbCDmSi4GFCv5tSiC5LIExsyMNek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722760554; c=relaxed/simple;
	bh=RukG7dxq7ZAkyBADYl0Rn+K1Igq9Q5dBaPQL2xrqVko=;
	h=To:Subject:From:Message-Id:Date; b=AqEvw17r2RFMgvQ1d19mDdcMs10nd283IXp31mi7zNeIGXH4IHGeIozLrsWdPipB4xOVaTR0+VFPITRDXXukpIipGYIjNLKGY60/zphZ/8gNVm2XVu6ANPYUPpMXaSYgfwo0uXWI0d39AzqeGGJYH5xofIk+zar1Hiko1jIvkmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmzTNyXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmzTNyXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9FC4AF0C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722760553;
	bh=RukG7dxq7ZAkyBADYl0Rn+K1Igq9Q5dBaPQL2xrqVko=;
	h=To:Subject:From:Date:From;
	b=TmzTNyXXTddK1H5ghjXywd4g2jpWKDCbq7nGElCdect3sIS6PwqiuUJayf32/QI/T
	 ytCAj2SESQx3dLhqTLT8m6zoeF+lyB6brNVJFZuwpRxRhg1A8UA09bb9RkHbpGG5D0
	 DE611pGhSE7o+cv6alLe9Djt73sn8jWJlPtCEKelNyUAacOKgxnWtNX9UL0fWeDSpD
	 vPkNktMxugTIO8x6dQyJ+O+45wTZ0GFITSxJE5BD8lRblAizSWPamFqr1jJeBn7lAw
	 X99MQneU3QthrDYpQvtvqWokrhXoEs4NOKl+MaFJT69FSTuSx5JJtaGdjTpULZVBij
	 ZOAuk3gCXBbaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602BC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276055360.32317.7932848940524360331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31ea3e3d7f9c47607aae2419f2dc9761d27cda2cc56941774a064c566291dfc
Date: Sun, 04 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722760553
