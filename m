Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3506382F12
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774901094; cv=none; b=DINqvK6iSNKF0HJzhOFrd5qTAhnzLK8K6QYMd3rmbECbZ1sb5Z14qlDE5varyDOjHLlgjwoUixUBHuIKcUXnaWcisJBU9KdSdOsKB8f2KUvL00N5uMq8NuAfjvZqO7RKjJEaD6AYF1WjDlmrqVP09DJ9wkrSC7PImJCQ2LpctFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774901094; c=relaxed/simple;
	bh=un2NDN+NGNiN4twb/AqT7+tlSWtLpIA2x4i5sPviCGs=;
	h=To:Subject:From:Message-Id:Date; b=uypEmTRo7iFJNzkAHGMN2LklNaXVWXEv0TJLnMbzYLuXhyy/7EjrogJz2lfY+XlieFgAdCkvWpBZZHUE7GNBPeWnrX6vqwT0klaU2k8/gzDF38NVMO69RJi4aYvoIHL9jkPHxsTc9UHCB3G20DBtOKvVKoihhInBtt7Y9n/tQG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7kHISST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7kHISST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774901093;
	bh=un2NDN+NGNiN4twb/AqT7+tlSWtLpIA2x4i5sPviCGs=;
	h=To:Subject:From:Date:From;
	b=E7kHISSTyShyYjxikZE5LBrXxa/iMXTs/Mx8HQ+m01OC+PLjYG3/+f+qC6wT1TsjQ
	 6xkbJ7sTxQAW6zvCwEikhxIJtpgWCQ4r+WrCshaUtrL/B9O8dmHoBWVAjxEl6EPvpu
	 Um88HrVVGp7NSPrv2i7tkCnhHe6Z0kaADlV3upDdHfgpmI1kW1gIhA3v7Neh848eNc
	 VZ7JWDVOkt6LfCLQETzdInRw5+OPZm5e1kmBs7bC08g0a7lXBTXV5SMjd2Xq17g19Z
	 q9salvG4Zu0430jruFmWE0NTLmWgdoR+tNGl/AR6xmZ75R90gvEjXi8ss+WvyMGCxq
	 YqR6p08XMNcAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD21061B1E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490109358.20209.2843481084059133880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da9554888f3089958be5a10e76961a8480eaa94d3deba633fd66a7baeb03998
Date: Mon, 30 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774901093
