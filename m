Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190B22110
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122795; cv=none; b=T7pGk1a56ablmbBX5zfO+O8oEn619RA09QmHWeE7viNNfAlhuqVAkht0tYwV8ryvCNwLTkJmo/AbWKTl1YEwsauJeDh+Bxlfm8Rb/e79Ux9u4tsuwsNaDUWZtmE4YTrJFPZFQvwYg3WeV7PIGfR4FXx6YidZngh0ZOGCmtQrl48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122795; c=relaxed/simple;
	bh=y/26EYWcIRVWqtZxgMH2aIjc3FaxXTAmqNad9tvlT84=;
	h=To:Subject:From:Message-Id:Date; b=G8fpNMFehcn4ugHLmxV+DPKTHBZJ/AZYwTbaEGLZNuqpq+aEL86Cb2LZD/TIlvK8Rcinr9/hGjGDjxiL6oWk9vcnF8EkGSLE4HKHmJHO/XkxO3Muf0+Z4b/uMOMiqAY3jv4YfYVgXahZcUTL/I7PQeyOwP/wNiGNpEOYRtQH/d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdM/Lefv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdM/Lefv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E553C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751122793;
	bh=y/26EYWcIRVWqtZxgMH2aIjc3FaxXTAmqNad9tvlT84=;
	h=To:Subject:From:Date:From;
	b=VdM/LefvRR4JEN5qieOlFxtWYRtnOv4W9mMKwV+8x4XsgUCwbouZpMoUi8Ju6FWg6
	 4SQQcwlL8oNF//yA4HBSn6t9O38wM3q6SoTgFH3oqKCvNfZSn5+arubJ9p6Ryooa72
	 z+jhWT1fIXbfSEN//6Iu0CstgGSJMZxKS6sdThtm5d7rlSqCFLa3tCMYmDQZIPtV+r
	 jM1+3pfPts0xbbm+GuQIonVEfeyci3Src3Zg+GTChIHIRQwYyPlO3u1IB8AgN3rdRj
	 Sb1013WpoTig01B46VJYZl2D4MmEdeRfGBaPsiQA5/LIXOZwpSTLAL27smoK/0bw8y
	 MdIphVyW7FyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77AC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112279357.27121.3391848038814963879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd48d29dd80c751431b0598447e799c3c6025d981fc512633f03f9647f87a645
Date: Sat, 28 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751122793
