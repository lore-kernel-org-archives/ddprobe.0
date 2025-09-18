Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E211E231E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758155994; cv=none; b=N7p7RoC78R9CcGJwOU1YEgHeuRwwdxMu0Qnrm0aeaPIhNNPNerGBheqOyJGOgaW9k1nLxNtAxw8aO1Sx1XIIkqm1nWR7zCDD7cb3rX1o06KkaxgkcuT+D4htGMdgibt16IXbtVWCsDDkzouly+aUOK/tvSi41j1XYnt9qiaqHrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758155994; c=relaxed/simple;
	bh=iftfMsgyZ43vN9RkRzR/P11EfKFREz74nkt/2PqmhxY=;
	h=To:Subject:From:Message-Id:Date; b=Was7HMpvv6mAKytVRKsUzD9l6J4i7hHI062WshqqfY7hQ4zB+CDHfKdL/ZCH2roTT8OwcVZLhTDa+tlScVBWd4UWHZDQRF44urjbvCELa6glsl0BTk47o4yRil3EBYHRxAzaTB/5r7Ht8okRtX0s7RJOfuV3DWukKivhORYSVxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbLdS/OH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbLdS/OH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B3C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758155993;
	bh=iftfMsgyZ43vN9RkRzR/P11EfKFREz74nkt/2PqmhxY=;
	h=To:Subject:From:Date:From;
	b=SbLdS/OHvi0mmTsgPAHUKUTVFU0H16Pnefcq3REAlEgZyA52kGTL8QcFpK9OIcAYK
	 K+rn+9qiK8QiMcNMSmEVwYEEccvgS+ew9NPng79HmhqglcAtsJTdj5XScuqaDB/mvT
	 7GJV2XvxkLnvfdYQBZ6mz4bBUb2HS806NBLOU/3oHBPgT+OLTS8CZcLKVos43/+edJ
	 +fAMJVwgBS2w48m3eSi+uaWeJFZwtqsI4fxq/d8ca7vU8toV0PataXvsrvyg98fAQc
	 U6TrzmbamoBpfV+h7DDbhQHAyXxQc4ucH6jhLzbtGE53LYRcwwJ20CbJvy70IhHsAd
	 Y7rxIWbTM8V9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90776CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815599358.10784.59006454448413189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df3b4dd617c8d7b6322070fa74ac532aa0015718eeeacad875baee798bae3a3
Date: Thu, 18 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758155993
