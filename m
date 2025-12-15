Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275D31CD15
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765768374; cv=none; b=hZwmJfyIKa9bLeX8DGJeNkKu5YXDapcJileyzDAld1/baDxER/Nz2lB3A1C25lYy1O0XGRfN62QvoEHnG0ZEH60v4I0uWdDEgcW804SGBLMlY4mnPsd6jcTYza+8VILte8PYVvb7clPYh+jr3mPYSppy4vqM5aW+OVM90ywpIQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765768374; c=relaxed/simple;
	bh=aUqskob/2VWQBdAudHpG6Bs38/Oy86/7il87ENr1l6k=;
	h=To:Subject:From:Message-Id:Date; b=c635eAmSFaxLoAhMUrz9JyUDOwhEX+vCWjZG9fOa0IBJVog2oAA+2mZocdQv33M5K7K+uS4SvjFJPT/ceysugF5oiSaeS96kXjBdpD2R2wyrCasDfCwYgBpjriPLqz3J5boKZsOpipB3GCrsnGdIV6kULwa5xi/6M8ezTF1kk9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEbupfC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEbupfC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DDFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765768373;
	bh=aUqskob/2VWQBdAudHpG6Bs38/Oy86/7il87ENr1l6k=;
	h=To:Subject:From:Date:From;
	b=IEbupfC3K8xzXNYcqmJZhPpQYTQkL/ZTDC0VUgI1rv7lPv0gIbY88LBYrvlIo/swb
	 fwGKgeanHElxIdzPCCNKqoX899gxPOVB5hJNV75zRv2YRyAEmrIM/1dYTuTpQDycGL
	 oklSbKtm38SfxtFb9IEZfSynQtTwd6mgc3X1mhP7kzRdokHBDjnYlgwlntLtQLdKnG
	 GnGuhoT64gkO8hNwKmySAs/tvcHq/Abo5Qe1HCEV7Fs/OWHDy00237mAJMw7aH55eI
	 N4oQAAhtOh+s2FzrDv8VWALi0qNKIMjEc6+K+C5V1Hb5J7Xm0jPrD4bHDpvod/iXHW
	 +8KphcU225BLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A107AD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576837363.2306.8837777849227515200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cef0412b87a7f7a970327d6f92068315fdf1647bc278f05ddb0e4e37481c39
Date: Mon, 15 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765768373
