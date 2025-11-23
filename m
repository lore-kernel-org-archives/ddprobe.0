Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3862A41C71
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763871714; cv=none; b=X2QbP9i9n+KIvYrPaSTVNsjRGQ92sLoWR1L76nsJ5+BmaJ4ZaYsgN0v9r4vpSpdghwabYyYKheZSzpJcsofELivMnk5kqHKpiVWOBMmWrRerjCD9c6rMUPgS73Zztk2XR11IonWeEsKaXqKuOzoPCSVt7bvOTO/W+uJ7cWJSTMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763871714; c=relaxed/simple;
	bh=FeSS6m4RHGiIMpQUu4k5WAZ7mWHX5Idb6lkSKMM7Z5I=;
	h=To:Subject:From:Message-Id:Date; b=pm7Dso3LgP/xiuImoh6drO/k7q3LdB8zIRBpyM8TsjUwYeMLWN7Uf7fAuAVFYuNR6mvjEtVAT3jQ54UuwCT90YW6QfNMns5aNBLD1ZZaJtjjIQmensDWQXP3ZwbOx/GzDx9ixwJ9FbfAC3F2vyLExo0xGYzJOFql3e1JAGOne9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs8PCF1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs8PCF1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A64C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763871713;
	bh=FeSS6m4RHGiIMpQUu4k5WAZ7mWHX5Idb6lkSKMM7Z5I=;
	h=To:Subject:From:Date:From;
	b=gs8PCF1IPmSxoytP0/fdFudWAC07V8T9CKxkk3Dq4qZYMN2rjqlcMkHUJXrC83X/+
	 IzEvRwc/ll1Yj0/Z5QvXYn+9PNc1+th5TMgjkNOQe2xWRvm4WhowOvC5VuEyYWHcJ7
	 Qv934l/9JdEtwnK14m1HR71Plo4wDYx0EQGqtLo+WFyTx4aRpzE9ywqXOwQC5O5d2L
	 UF7ELYfQBaxI/8l19p1YLWMIZ9U8ng/D//L7i63/IpaM0Tf6rI2eA3OXY0cbp+NMCR
	 +lY9r8G/k/+qLRsajOaAUdiD22F3nRG4IVH7qIsI61aDo68hjvcYzUN+EJF882bQ39
	 RMalqghHCmtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E606CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387171359.5340.11896706464805792844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde030d5f11069406a94637598e3b0d784db1e765cbc7fa94d3db791db74c404
Date: Sun, 23 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763871713
