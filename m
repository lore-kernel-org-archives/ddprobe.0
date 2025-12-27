Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155262D640D
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766834034; cv=none; b=AkUdh/NVmytY1ahV7Tq+5DJMUvuPEj1ozFCYsdumITeIT6qu/Bg2wwikPDL02fzFiwmtuByAr+7awcqLCSpvxOEHuBeYMfWtjQL8mHVDti2wSVxzlRR4f4sDqXq/JMmA48zijSFbjHzICZTj55o7BiPuc2X8FkKJYZcCY4b/ijg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766834034; c=relaxed/simple;
	bh=kdkj8gK5Nk6jLmGrhCPjAmFjRcV3zyC2JOQWj7VSqfg=;
	h=To:Subject:From:Message-Id:Date; b=Z8xWpomlqyvSVkUK0ahLC1nW9Lwa6bvs02jHEXoPRNBvEJmFdB+TGFfiH6stTdnbnJ+lk37B+J9nLNjM9V5Ro7mpTSX/tZtQcNf4g6GhTq5zfBTxx79ir9WASoLRP2nr/Xuu3JALnCcedJldFlUEo7t4W7QnBhBw3PhgFcse9ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV5MjN/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV5MjN/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2620C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766834033;
	bh=kdkj8gK5Nk6jLmGrhCPjAmFjRcV3zyC2JOQWj7VSqfg=;
	h=To:Subject:From:Date:From;
	b=XV5MjN/qGfuvQLohVaOYDxs35EUhVaVqpQwtVQ0JCMNp8o4RRK+N/mKLSI6w+27UE
	 hB+GIt327XvkdHH4G+wb5NYrgJaqSawlTw8cD+xwoCMIpSs7uXuXU2k5rN3l2I3aWX
	 K4jhB/Xwdi1EcX5PIG0VLfofsOCS/Kmy3QRBGdqVQ2C2wLuNbzyk/nt+mQFPvPAISu
	 oCtDW9IQN3Y1Xa27UCNR4HO0wQKrk6fovHBO/dISH71CDNSbu7zdNWECm1akFifs1E
	 ayuWYzvLcHwXTjHXMrn3AkHJm8Ahamv6ZxNYdOHo9H2K493QwHOVnbir0akrqoR0bv
	 K4Kq2YsoJgheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE3E8FDD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683403358.30327.4015930867799293278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca9ad1d48bee9fddca36ce6c52b42cf26e287c84b9d494be54b1288a129c0fb
Date: Sat, 27 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766834033
