Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126374C97
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760315994; cv=none; b=FmrnQ6R/NGuQktgE+pEaLvfXCr3+AEZC83zHnjzG4Q2XeKBnjweeTfL8XON89skneUlKgOV+i4GUstQ6rGi1Yj5op9gl1Q7Qec59MTkApWHtNeRof5eFHZ09bA1t/ZU6KMrv8VsivKfA22Efl4X3TvjzzKktx4DHLDzb57nJ970=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760315994; c=relaxed/simple;
	bh=4UHp0eP9sK2XzSZy/9iPEBe5G/7Cg1npP/AnYQidaoE=;
	h=To:Subject:From:Message-Id:Date; b=jOvQ2WFLabBSsIAS8IUw75MUUhG1PSkEXTi0DnZLyz8+WcY2HJ5UfOpEIQ9XRRyGQpyX4xxIlpVKYvOncbcU7u8wUkZhZX1mLfnWPnlp91tw+qVYHqeE4WC2mNfJng7BHlyJpblTd+88cqwqY63LL7aQ6v4Q9HedaY+kszsRvTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTcuG4/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTcuG4/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98ECC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760315993;
	bh=4UHp0eP9sK2XzSZy/9iPEBe5G/7Cg1npP/AnYQidaoE=;
	h=To:Subject:From:Date:From;
	b=HTcuG4/qN9cZF4khNIgbnR9sutaZ8+Q5cVmFKMDc29ngM1i5ynY7R4Y1FTlsS/Xk2
	 TIuBhculCiVQj859M4HrZjdVG4L9NDfI0xoi0J1y9QXemnWa7RS8VZkMFCHYX41H3I
	 QFUL/M0zAU+ubpOPjB0MmSM7aS+nrEPSxcN+ArxP9n/GvmFEKWoaxb6KoWgV+0VidC
	 E/iqO/Va9x5iFO3ON/rvHlZcblLPpaf2vyW18kPIxDFgIKxZxMtsT6twU8jPBOI6gm
	 aPmA2VZCftuGyHQ3+aJsmZiGDyOsl4JjGv1o/h9hyXHdgWFMBlx29bIL1b+B3cBrE7
	 yB2p9wD5Bx4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731ACCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031599358.1443.7968874388216066860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076a6edc636c5029e5ffd2447fb07ad421393ee8386e1982dc99ae6cdb21fc0c
Date: Mon, 13 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760315993
