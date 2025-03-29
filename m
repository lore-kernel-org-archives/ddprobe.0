Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4811D249F9
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743263394; cv=none; b=rcf+FOSuMunSNBNB2yU28/PGfc8qDxhcC5cvQsQo+VIKNziM9vjgTiAUAYxtUSFjJ0oxVWE/wjo+0EkfbKZJ4mtMi51XTJgzIRGqZsUHkovT+yluow7AdzJSsaNvbEPWsjv2LTCFOIeQHrZ407LXgZXVcp7S/gbVt/0xzwFRlTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743263394; c=relaxed/simple;
	bh=C5SdVNgLTqpnXK3UansiPk138RZbjEumZlu6YM3n+NI=;
	h=To:Subject:From:Message-Id:Date; b=tQzFMVzK+M7GuGvvsYjaSTcgzm4lYWrg6u387dnlWr01N1MiNQXxxs3HiByhkWc2LqUVLZN1V1WKs6oAOOgPpmHYluw1FUqJ/lzvY/RCzumoIm294c4i4nO/Phkj98okxkW8EyGU4DVkC5aDXJVFwjXsLHIaNvcHdzF6++KtMXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPKfRY6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPKfRY6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A52C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743263393;
	bh=C5SdVNgLTqpnXK3UansiPk138RZbjEumZlu6YM3n+NI=;
	h=To:Subject:From:Date:From;
	b=NPKfRY6mfHVTKnD2AfxMKr52u5GQLKGj3yk7oyWuzMyoWBxQdLAvbonPch9OIFO0N
	 1uryuJGPt9fplhwN40kNk3POisqGK2SztmOW1pyxFDf5v+yxx2H8jjH1d0tOqMST6c
	 WcX8sILw3nTPKmGCaM8xVTmaeUGDPVYQotfVxjdA/tqjBmIJfD/Igu9AsNXv7JZDup
	 IY4b64P1UFF5ThsleotakgO3JM1ZwKrUIZgnIWeBWxQLm7R6LZhMzRYU0H2OSOsn3U
	 sKZIz5Z3IvHFI0Ts99gF9d90w7Bl68rUnELzQGUJuEUQSjahGdgNH+qkCvRZOhUATj
	 LNlTffbnVw/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DCC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326339358.17103.12711759201251868019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa13da726b5acec523da20f9b59e80f52bfa21acacd704c09c2ee26e5dc3a74f
Date: Sat, 29 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743263393
