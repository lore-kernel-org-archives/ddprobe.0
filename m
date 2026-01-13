Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB43356A0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768282434; cv=none; b=dviS9VMzvYR2O+iGBgrTpqMdJpa0uxqVxPzbHMnfAhb/fN1FepfnokA7D7o/uR2KLeWO10Kx72h+gSuBIxvkjH1UchTzr1TfHSeq/Qd6NQUKmP0h9ey6hl2RMIQU8jVv3An6DjF8G2QUinQ4oOviW56DyeJOJuiH+SojC5kgXb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768282434; c=relaxed/simple;
	bh=R6lFFVcJdAR4K5cgBjkv5Ikcq1ybKFjWQwTG+/OFT9M=;
	h=To:Subject:From:Message-Id:Date; b=C2ZOpRs12ZXaKCMKMXnpPOldAV9qoG5M8wmg+s/BhrWhcgbvg5FVsdljQtkMbChMIfFN/ixwUnYydnbNMdT+tsDyaBUQTmdVHs00Gr1nVZnO4RaSmD2kZsP8fJSnZKTvYYtC8+fNkcLz3TL2aMM1DLNtAbIis8u3xCo4FNgw/LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGhnJrc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGhnJrc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2170C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768282433;
	bh=R6lFFVcJdAR4K5cgBjkv5Ikcq1ybKFjWQwTG+/OFT9M=;
	h=To:Subject:From:Date:From;
	b=sGhnJrc1L+NckJjZdw8Xr1LsTuqSse/dmKuKyIaTHJYIaFc3x3ndRTUeadSwL394L
	 ZUnanOZOv9FJGnJtHyoy7E8b4MA8oZga9wH2V70occsfeGbLZIPfTOUdkD96Klvj+O
	 5XVH3tJ8v/o5wSaSDq26xubmftlbhFO8UdF53bHub+E+29Y4ZVtZ8klgyDtAEQzqtj
	 P3qFRMM9YF2qV+qZ2eNoo6G54+txxSj90MtUCeJTkRXj7K0WfLYEEKuUZrJQ9n6k7c
	 cke0Wme3GYq5LN0DB/3JQu/07+O3GtbKGQRK8KKGgmqDmh+j6Mwme9fYJUndCIAqDA
	 nyc8QiDP3B/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143CD29DC9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828243358.17809.16059844747307483801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1ce7deefee2b10addfb360f10096eaae168081cc423ca3ef0e42e6a2663d55
Date: Tue, 13 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768282433
