Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66455433D9
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738626955; cv=none; b=Up9Ji/m5QDhcy2iWTKbPSdR012VmATyQPLdNOAyXwVEth+4YNgBzy2shmeZmzTJLcm6wT7IbSWje9droRR9zh20zdTcxIalCh4/jubRFrAlhr0KmKHRcLtQzfC4AEAZRLKCJILdZ190HcWLGkAEjA+3SY6KbvQuzUGvmxcA7F2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738626955; c=relaxed/simple;
	bh=TXSOnXc+TBRn4uRHDbTsog8wfbPMGt112WK5DzRTYH8=;
	h=To:Subject:From:Message-Id:Date; b=oHeAMlqQeiiGNIQEqCOsiljLoZZX9BLwdc7oW6mpJkL2HRB9ahP7pra+zeZElC83PSK1tsYVaT0Ic/SP6KD/SO8qxnX2GxK62OgRKcULcicu8vVD7IMh7KQNvsBx7dkjUSuu00kJCWd1ZH4wDaQb/cjZgZ6nZQ4zfjB6zhOiNpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYdfxd5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYdfxd5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CF3C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738626953;
	bh=TXSOnXc+TBRn4uRHDbTsog8wfbPMGt112WK5DzRTYH8=;
	h=To:Subject:From:Date:From;
	b=fYdfxd5u4fB84ivwkxwPPoSiaw2ILHNCu9EpWcCCM9qMOXtiRXGKaSASBEtq/AQIu
	 YjCoQJJ3YppOnJuHbLbgAmGT/5wZyNHGCiw+KZ793CLmI4xsQS2pinklmzdm2UV3xa
	 W1DbosR0HQ0eKs05Qcqi3ZSHFCHMiQL/yL/2RRBaef9bdzIXr6dovzVRLAg7//JdtT
	 D+ZEKfIP58Ih5AMysjh75bsrm/BXFW4UUWZGekLqHDob09Hfq+lCJ9EwXsSQNwCaJi
	 UwIfZCLtc9x6MyxKJZz9oTIf2zDslBp8N3WaMCLta439aPYV8ErbSiUcdQ9NXknC08
	 P2p3ph+3MbX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F566C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862695361.17423.6871620409545472848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f512b379fd05c004437e3476616a5580050091edbc907999e6d3dcd80e8ee5
Date: Mon, 03 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738626953
