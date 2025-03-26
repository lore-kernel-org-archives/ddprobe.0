Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB8189BB5
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743032994; cv=none; b=lEFtNpbV+lUUo8w2L3170tqwa1Pb0ZQTTxOKTal2pOPst6rPZGGobolsTJ+oLNOz5VRQpzQdn58NLKOBCjeas+0UojjH5RdyotD0Ryn4ezueRdt2T+lukmsISiYLyW8x801l5PhCEfRUKSxHFCnlx8UAMHPg8c5vyxyDjaoYjeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743032994; c=relaxed/simple;
	bh=WsVtpZYrR9HG61Rs7zo9XcRz0i/VXtJMXQsr6F+MV+o=;
	h=To:Subject:From:Message-Id:Date; b=RPDW3gvafGucvTyEwhIwnbPoSkTzw/hRAPak3o2AhutEZsdwLbMCcqOlF5075Sw5un5ew4iXzSshv9Fz0ukYjyHMDjccLBk5Q8FJg25fSAY/Xn7ep5s+ft+4l/89B05zAuCv7ONIz1EUAg+Zb0LgiYBft2lh5nYl4crqiwdtV1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEICLrGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEICLrGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3961C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743032993;
	bh=WsVtpZYrR9HG61Rs7zo9XcRz0i/VXtJMXQsr6F+MV+o=;
	h=To:Subject:From:Date:From;
	b=lEICLrGTnUdGymLlFvFJXo+ej4R61Z1AisCwKIrcUoGwZbDwDSQRWqvLIPn3sUt/F
	 qYef/Oy/D8CxMb2o2QURVEQchcKnqWV5m6J0UmZ3soFU2W6mXB0tnnN8pLH24nT0VV
	 C+SEAzAL4HxBwFrlC7Fe/oMebTQXLVFv8CNcUZ6b35CRvWiedM64a8mF1ZHpj/V9Bp
	 PZgPs5OBWkRjBFYtkUXKJRhHkhrDREEqBfU2R8T8ojcyUcJMFYBfgIM4iPpGQUpWaj
	 4hCtQ0AmnmnnrOSi3+r9okB4Dz+oetGb666j3IFtEz/ZbU2poVTvpWcSLLnHco1jY/
	 pEQmiEJUwl0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94356C3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303299359.32667.8436915731687676273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924eebce849149cc86b6be535329e23247642c21633331654c00669ebc6d31c6
Date: Wed, 26 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743032993
