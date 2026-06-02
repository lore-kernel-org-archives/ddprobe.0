Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7946C283CB5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780428874; cv=none; b=jq6GdKtVTjNGJNXrpVpqDcxS+kqKE6gIDMZDXuSKrk7s1noSqxGjEgssssz/KABcUZjIpbmTyva04iM8W0dk5+n4YjRrd+zZfdpXUvTBIiONmsw2yBfyj861GtcNC8tme2XqhM3w4ALtWP4Zu/a/rYcdB/YD7Cc9WTyP3RYxGBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780428874; c=relaxed/simple;
	bh=2/tOKa02zFBAb6f6a4OZdB3bFKC6PRvvFeo3bQCS00Y=;
	h=To:Subject:From:Message-Id:Date; b=W7WDuDbwbVxvu/8H7JFHJR/OVybeqxgIj8Wgm3cKXEW9mwwDF7CuMKM5CeThrBvhGxbLiR/R46DdIsO/BR5RktSHC2Nr1i5Jy3JjC1mZ5IwLuA55rCFwejQMCizsPg/2G28EcSDynzRCocUvsJeBQJI/KcmoDFzcf30z2JNDp0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INfwyqh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INfwyqh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFA6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780428873;
	bh=2/tOKa02zFBAb6f6a4OZdB3bFKC6PRvvFeo3bQCS00Y=;
	h=To:Subject:From:Date:From;
	b=INfwyqh2C5yfPhvrT6eX6cCihS3R6TD8ztEyumX4Y7eIEuPamzWl/kuJtZ6jhNEOn
	 szdqugFLuVZTihqR5zW+M0M/xSSGS+rtrs7zL2wM3SRjkfBb/r21BpY54hFg9CzQrR
	 gKqkVRk12d+23J4f17F4iSBb4qRSXyyEPFns8/fH8wk9wQAz+GeLmJJh5DpQ2BmjM0
	 AOH8LGYsXrO/Z3FbxaztsEyreKexK+8a3WMIo1FaK9hdyBaw2UC0kucO6MjQmoCrTz
	 D+2tN2rKEV4AL+niwbQs49pbFtPUSkJnweGjONDIbvLtG0vmW+iFcvp+87Wh7wNtWq
	 d9GFddPMntwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF266CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042887368.15664.3128688937664559033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e668412db1c49a9f29e41beafeed0a99cd2fd2a38a137013b11c0017bab856
Date: Tue, 02 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780428873
