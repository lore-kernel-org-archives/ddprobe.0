Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F522AE90
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756252194; cv=none; b=EpkL2obwyr7WfQMJ8CIRpcutbFhQEie0EE9+7o/q5ycgcVaUpBts61lEu/DRyw1ou37dh/wPCeMpSyWqluG40v3B4pYR1o/hbNkxCJmp16KF9X7Wnjgv/jr6IOpWlQ1iCSnd8e0WqQG4h0UkdzKoyheaC7/Af0jghkdG37g51/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756252194; c=relaxed/simple;
	bh=YaWgN28ipVgZUG8oNwh5ku2UJb31I4f8H4rYfH/vsKY=;
	h=To:Subject:From:Message-Id:Date; b=ucndp62/axpwm+Bk+EmPtaqQHl7uv/e/FUgSD5QBLUcUcqvYjYqCVzjfy4UyLezQJFqAg9O1sFu9UEaVD8udYKNsu8zvImKBfEAC8fx6IAdIgZKJ5J5OlUMzdpkgMXnJaqAnZdmAL+xWK+LV1/naqrIrghCXpkNY/ZydsXrmHPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ40bGw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ40bGw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0262C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756252193;
	bh=YaWgN28ipVgZUG8oNwh5ku2UJb31I4f8H4rYfH/vsKY=;
	h=To:Subject:From:Date:From;
	b=VZ40bGw3B2YssPCAhDScPlAN08Ohn+ZtVXWD+6og44rOF7qMA6mFM1aoxLK1Z2oZn
	 /mIQXt6Nkcil/M5I5mwHGzevb0pmTVVCeXWy8kas7vQncLOkGDr+EXYJUyDc7EDIjF
	 /bAkeQNnrP7/Qt0RaJSMw0d4prfxHmj6/lqoauAEkFkSIl+0UYxalQ1InlniGQL+qH
	 ShCv3x0cgxe1ErKW6catnPXgOuMH+umMVjkLvmfJhHZJZohg6ya9kRDm7oK9y4b3Gu
	 6Bh/OVnx5HD2FmxNCCFVCaWPkos1iI0HlJz54i1KBsJ24k9Huw8mmUxO8RnT+ZlOSp
	 t45CoZydAC/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77ECA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625219357.20135.7835949857884835823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0bd1bfd65939e83bb2a52cda4c39b1090be97ba4e3fbd03eff7b96e57d4aa3
Date: Tue, 26 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756252193
