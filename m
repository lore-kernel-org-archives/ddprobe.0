Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3502248A0
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773633294; cv=none; b=k1ZzYAbk4njMBW5YPauyBajypIFo399QwCdUqaO6w8UcEmkpL0rQsWC1QONkwibtTjHZErAztt/18X3jFsW5v8pIBUoOF56nw0qh9BIohZlOkBibc2NTEgvZzYCJFYOOpPpeifAH/+XXJzD5TNt6wRxBbF1Sxu5JMoSidXhbfHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773633294; c=relaxed/simple;
	bh=eJl9vVTDYJq8GuAD4U2ERqaT1ACMdB7o8bWTIGwS5dI=;
	h=To:Subject:From:Message-Id:Date; b=PHpR2a0c1Tqsn1mXc1vfUvmXBKLlDN0ShDpLdpPifAeGFOF4c55LsyTTNbg2rhI5B7LDR08ne2UWj7C/YJajsNxOA4rVRgXhxcsgIS/ubCjBsaMjMATE33BHsKrw8iI+V6Int3RoXRQ1ezo2bYqblKeaywRnSDsIKYSlEn5BGH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiFzfIJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiFzfIJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39ADC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773633293;
	bh=eJl9vVTDYJq8GuAD4U2ERqaT1ACMdB7o8bWTIGwS5dI=;
	h=To:Subject:From:Date:From;
	b=KiFzfIJ/zfPXpyKYm68ErxPbbZQtDObWWraPtz2qKA0Qgfvb4WA6hjFl9KIA6oWpF
	 C7tFKA7JmN6BoGQQGdvzzAAyZ9y6ug7QwETXPQWkoG7L1B7KB8aQ/NfWx9mS0HmcTg
	 +YjuZxUYdWazMw8478ohn1EVda8onflOm35Yoq1X1OKTHXBG8uO2N0+8wTqH+PdlU1
	 vOVPW9cs6jeHlpMZ5Uby53B6UqScJg6r2VKF9ZO1d8OAaXjzgo38hnPqx5F5rQBqFI
	 dIE2X6O6gdkfoXXgCopbkwogaYBnxBNd3uTN6xgZuXTb0IzaLfSdw1PxPVlhI62DV8
	 VT8rXwOJOWpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91121F3028B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363329357.13265.2976094866218164499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fc17ab201a3963cf6271909c7409e194e8d18c6a863b467aef57c047c44e71
Date: Mon, 16 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773633293
