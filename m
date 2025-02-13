Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86B204C21
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739419734; cv=none; b=g7AgaOX1kVmyGwiW4c38+yTTVO1lrC64C086M1ETHRu0U5nen7gq68fpU1CGpeZBu0ysk4VZkjq0OTyJ2hLU0m/0w+11UFAcMRJqi69pIfEeCk6KUDjaNs/gzLgm0S5YwcBPM0H0zIUQCT5U2bs143Osnyt2W8WQnoUTRUvWTsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739419734; c=relaxed/simple;
	bh=dTOVP++eRmzRj8rhMy27ezDaTwUpRvjk1jvmIKDu7o8=;
	h=To:Subject:From:Message-Id:Date; b=s29dkS0epn+3Epve4i8myTqaNXObC2GFaM5V7idUkYhv3gYFoy2IBj8c7T7mmLteRhNEpKuZw/3HIyrnu/y9NvoJWoUfuGXQmNLEBFB6gUEptQ8u5Wptk7igZ7lSJXCUwxz13hWrbvn2RjLD3WyqgICVPlb3U2QdCiyjzzJ8Y5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXQ4aMBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXQ4aMBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF827C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739419733;
	bh=dTOVP++eRmzRj8rhMy27ezDaTwUpRvjk1jvmIKDu7o8=;
	h=To:Subject:From:Date:From;
	b=MXQ4aMBbaApVsqPfodDHQUDM1g7ZoOB1Kpncfu0Y7qBLQFp659cHPaR9BJ1+DPTbn
	 SVSKRBwv47m/2U6gHNRofn+FSNBMCINy0q4uWmxk6yn4KqyQI55ghDbLIqsM3O4MmQ
	 6ajp+zY3iieU5E6WFLKH08Waj+xTrCUkm9RdGCDDICTwOMa8VkWqh+TRl4pxyN4Xl0
	 +lZhY9JX1Df3I9URlddkgrlj+6bIuAkiae3TuopcdAiHix1WJ7pCKmQVrJodwMJ32m
	 5rbH4U1R82O5FcSxee2fuV3WrwmDxyc7rTs+cZw/dr4X5Yh31bpCngcqdHCxyWqzd7
	 nhn0Uhl+94APQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6289C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941973367.22051.15272553622662714484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac78efd89ec92a0d9f4d4cfb0d0af464fb6ac6cccd21daa94e4a27883714c302
Date: Thu, 13 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739419733
