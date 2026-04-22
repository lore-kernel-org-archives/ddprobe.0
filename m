Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2925A37FF7A
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776883054; cv=none; b=dp5DADpssiUTxCt6KiknYYopYDpxhl8uDtxjv1ixIRpUG+IrsejTnszvE56B/wt/hDs1Q79+TxAjdLG36fQvvcSpCBImTMAO2/A901FsC4E7rfTL9L96AHRz5eudVGHM7L5QxQ3fzbwA1USiykK37b5c80doNf28a7BYrkpsK1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776883054; c=relaxed/simple;
	bh=2W82Sg+N2QKYebi/tP59kJ2V9AshA1lRjUnrw41rwLc=;
	h=To:Subject:From:Message-Id:Date; b=lJgifAyf76bkeIQdGkd+ebZPXBjwRtqF/sXGtDRrmfRIFjGs5ldygXLf8eOcoc7en3GKoRiJWsciFqWCUDhVE4g2zPIfMx0asJ6/MbTANRxlw6nGmpdzG1VOEI0AnCZuhnsc063ruaaGsE5EFaVXeABunAfb3Cg3gMu9iohK3i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJTos+Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJTos+Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF11DC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776883053;
	bh=2W82Sg+N2QKYebi/tP59kJ2V9AshA1lRjUnrw41rwLc=;
	h=To:Subject:From:Date:From;
	b=JJTos+FrvTSuFAx0KgL8uYx/GI86kXCjgWqXV3COwZkHVbfoU1h8+DbWtAnz7C6y/
	 bRv1odcUNS6LaymWpwV9eEMu+uncxX5YkMzLFAOWZUyGT3m7n7LUpPYAQ02Intx0Lt
	 mfjS67Oz3Ftqk+Os4FPazj5ph41eirdgFrfKss43X/l1NsAbtQGhfcNOtBSnaZc8an
	 ikPEu0YG4soI2XxD8wcKyWoCrkFBbDs4OMbn7sN9PdWn+GS4s+fafOUXAyhFL3STkz
	 zcWX5imlGwQmMJckkVELKU9bib/ycngMR+Ot3fTvAJ11R3I+RTRwrH0ZuuS2pvDPfk
	 p8OQbvWmaErdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53EFA1FDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688305368.18941.15199766143127994437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3973dc78f0f8efb9aaf11262cc9b504807db49a3bd27d5447220181f6a2541d
Date: Wed, 22 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776883053
