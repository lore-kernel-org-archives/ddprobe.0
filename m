Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DCC201032
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741967934; cv=none; b=pTGANSzGzL/lvzmm0qNWEetqX++VwkVXmOmpVhQ2HHxfMrk7SsNoXkeXIXmGGHeXgcLZnjRPx9Lar8qD+O/f7DIjZNN3aBrtshxb+MhPfseNziM1Bx1hJE5jmcrZAt4UUy63v5tSB7RqsElnAEC+Q+JwbVb7QG3FDQ6McmAn+mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741967934; c=relaxed/simple;
	bh=t/p+8h4CGkvb8PAZk21rGTQBaLyrvhc+VHUIPEGx6jo=;
	h=To:Subject:From:Message-Id:Date; b=PmlnaeHIfVKl+kpGbYK7T/oO4GCK8Cxqyt4GhknKuPdFBGpYC7qr+5gv7CFQx/+1sKXIH3c4QBcz7/I5G7ji0Bw0LrPk66ZOI6Anaf02XZGHD4ZcwQvqyTfVRk/6UQZ33BiaMrJdbs9F60rWwS7sqXE3FzTe1K9zFpONT8RCLKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2R4gU6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2R4gU6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69B2C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741967933;
	bh=t/p+8h4CGkvb8PAZk21rGTQBaLyrvhc+VHUIPEGx6jo=;
	h=To:Subject:From:Date:From;
	b=a2R4gU6jNwUEiBTMGs57EIlfGrYHlHHC6mk9lD1J7SPuBxlrARauDfN8d5FJPMFse
	 C1ycuf0LvfKQ5zZbJMSFc2vrkyGyuzFv3s1IP+SqaIj303I6SdQj7pvDUxA7P/EpZt
	 isbuSqKcKrWVoQt45VMSMFNmnvhTtm/+yQjbylTCbW5N4QLpfcO5vhTTM5OlMxGLeF
	 Kf+yfCkkLWxu2A45P49ZO65l/XU/hoAH4HMEICNBfY3oZdRatmfNAZ25LrsFsAJdVi
	 k/L753GTOq+Naf5sYAqtp12+xC/DzPm/QjgxJft6q2JUQG4s4Uu3UjEKeUuVf1LpTx
	 y7GBidi8LlO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9656C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196793367.7484.15164659648936812464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaf4dfe0c45eadf31f55c1457c9811d06dca783b35afd3c85d10c0dc349738c
Date: Fri, 14 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741967933
