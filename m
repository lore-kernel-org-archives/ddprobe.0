Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E052285059
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750178394; cv=none; b=ODJgZyLP6fuTYHQKjIs3FQ8kgz3KjnRjlqa+56nTUfUBiDtBHuqRzxMEhQuVQ7FUwZwmPTqA9IL0wxysc86dA0108qJUJW7os7eIFA2eMsEwtQIDJVVY9+XW3ZkInMepdOYjjJ8cZrXCLX/T3GHpbeR5hBk29H/iwdRR60dUJpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750178394; c=relaxed/simple;
	bh=wW3eHNXJ0dIHRlFsaDJ1wXDqtoMs5YLdNH8YEqmTbNI=;
	h=To:Subject:From:Message-Id:Date; b=CVmiPwkjzpxU8dT7xq0Qm5zx0FMHKxKRDyjAh956jCkjF6uEL8Ew5bkMj5hZCWHjy9pRxA4SEAi+f3irm+ztkAkf0a5A/97gKEs0PikZHXSmD+ulP8e5p96uAKhBaGoCSwJ60/epYMU3VoGo++wmAiJV/u5Ba8pX/HV9f0OTnt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi8qepnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi8qepnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1726C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750178393;
	bh=wW3eHNXJ0dIHRlFsaDJ1wXDqtoMs5YLdNH8YEqmTbNI=;
	h=To:Subject:From:Date:From;
	b=Fi8qepnn0Ux598oQxCBhhUY1MRKJXjT8oqZ1sNFak5jWutzFOmigtlvuTnP4iNjlA
	 rHuHZ0PsyhGYVq/l1SYtym60feNC1d3cLSRmNSeBmshinPStWCt2ly+sXue/L5C6DQ
	 IonLOLMlqbrUq5Ett/FTadQWQjAVLgMTLt2T5Foqm/TRuIW/ed+ki2okqgK9LUWKS4
	 JRgBMO1wu/1HY9TtlIxlXP4Y9tBDDyUozsehWvFa4W2GocrOWtMEO3rI33u/VSoRz/
	 r2SXOuJQUDg2XJdy6LykVdC4pBZ27UWE/9HpiWMq3r3hUFQbWPb1RTckOGOPNjI66k
	 LbaeZriAWi7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A1C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017839358.25737.3718374128856593403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4c639161fca413ed71957790ff83305ac1d2ef2d7410882ec990136bd40926
Date: Tue, 17 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750178393
