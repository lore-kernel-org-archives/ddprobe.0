Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F2F3B42D9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784690314; cv=none; b=D+01lZhKlCzI8XE2ZUeGjEExLEyVHyDBUmpN8yPV4uRQC9H3OwOPmgHM3ZK0S7j1LAnk55Bo93Rb591uFe+KOW/9a119hBoTG+XTV3jVmrHNIUWjXAyK6iDTHLeGvS1FWS7YKCb7dWn7ViCIn6eNlXeXms/ZMVcaZeefpxPwLBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784690314; c=relaxed/simple;
	bh=r/0LziuiZ24owDCeIKC1ou5wb9CIn8lJCrarGoepZUk=;
	h=To:Subject:From:Message-Id:Date; b=KBtL7oajqRDaRinbYJFDvyqEg8oDXfXXIBlzqoHfKVo7+jQ69qb5L/agMV+qR5By3/tWU8M6PLLySNSHBYb97v5PkneGG8I2jxWXPFpGe1f5Djpti2hD1eDlhC31fW1qs11d6e7MiuEuOWyZYKLc4asraM0VjdvOwF+v5Sv+mz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyPuiGee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyPuiGee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC605C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784690313;
	bh=r/0LziuiZ24owDCeIKC1ou5wb9CIn8lJCrarGoepZUk=;
	h=To:Subject:From:Date:From;
	b=QyPuiGeekaw9QaTYDkZuavQHWK3lCvZOrminaAP2ZB1F2i4aVlyHUm4Dn0fGVdioh
	 8fMSI150kNiT73SWN9mrmbxaQ8pSeVIPvDRDShNN8A4qonyq6NAkpPfuNl0hrq/oJF
	 GhCnrfXRsTYDGQlTeR7Aro6NZhzysaU2MdkzxvWYpbbG8SWe+wIKODwJ/6lr2xo2J2
	 M7bOBXdH/rwwwqZVvRWldDUR1K3oR4Gty5dgz7WuGAQN7aCqlCQ9AskM5Fm380VhF4
	 8Clxraux/IxM/ogWgPlJfmkTwMasu0aej0kfawqRxk9tXPy5uT2YkTN1e0gw8d+Xzj
	 hrx2aQHCAVtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B560AC4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469031373.14755.4548651180098539298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84184234cfde996fae8853377da3368920677f4ee37b3ce51c1aaa43762d5d7c
Date: Wed, 22 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784690313
