Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A827A90A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761104394; cv=none; b=chgpAmOEhYd3YpRm24pKLQIarykW3Sy5Vwv6+/lWn4vAnvuH84GuSLpEk4yefA2dGFUkOFMs1Z7BAULkcDF2Q2LV+PoEYXkDmLtIAnJDwYgzKvR7v9VpOp8lFuSgeNIqDw93907Da8/ChVjtfChJV4iktOjHogaV75bO8SFftUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761104394; c=relaxed/simple;
	bh=gmFHxfbhgjE7gvVGVM159V6fKJLYmDYcD2M64y36h9A=;
	h=To:Subject:From:Message-Id:Date; b=uiSgTmPmiHKCAW4V5H7yXhbEZhGysqzIBzpQW4TTrYc5eqGRmAOhxsVpJrRNgpQkkbpzIQ05gMHAKjeE8wjgjDdw9ogbSnu0R5Fskrx76zYq0I1uGvvb24LQg1I0p7oOkcOHtGYZSgrmzPDpDnHvZuk4w35RlyHEfTrO82Rc9lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOf8dVEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOf8dVEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761104393;
	bh=gmFHxfbhgjE7gvVGVM159V6fKJLYmDYcD2M64y36h9A=;
	h=To:Subject:From:Date:From;
	b=HOf8dVEM63aFH+hWgEn6F3fdjhVkeshUkmRUcbuTKaHXnxwSJAvC9jnTnlPe3zN49
	 nblFu1jyx4l0fDgI3ugC66XvwWqrhEwff3gT/T4z72Wzbcf/F6x5pnpOflvC83jKRD
	 CmmP46aaP63lsmjk+r+jiRtekzQrxlOczM6PrA9ANF0KpfDulPpzO0juDS2yA0wQCe
	 9m0k2Ygf4xcTqKiy2mWdB2qhKTMyvTyEgwcHkT8d22hH95f0erR+YHXL5vQyi/enV7
	 QmC04OsNlNi2lRVRyR+qHWFayT11zoNFC77Ci+e+dLmGgVZg1AwQtKTcvpWiBcQf2N
	 cAfnjQI93qEpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CDCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110439358.17842.2482963454996130022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65e94b3b07748e947e0e8ebc4e4e9568902d0075122c00334b8423ef0d0a1e1
Date: Wed, 22 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761104393
