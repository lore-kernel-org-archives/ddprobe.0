Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E784E50B7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789585835; cv=none; b=c3sHCAsp6y01QADCuVTiPgIYAiu3mg2PZaJCeAUqBz/YYl6IfGAMIpsORnnJF9tPg2MG2whZzmwbkmve9/6i7KTxTeHvzgot97likpr+4np7xn/pL5Ph9oXB9/ljGHpxVSXA3UGz9C+H0rROGDcOdaz/N7KLnREys7g810q7WXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789585835; c=relaxed/simple;
	bh=jCL6G65fv3N7dT2EWWlpjSBT0//IX0H8IpzcwzO6oFg=;
	h=To:Subject:From:Message-Id:Date; b=FA3V8trakq5JqiGfuMbWthXyUawBmJnXRV+vl8Cow/+uIhWdcYjGHhZphJIALZDsmEfHS10atBpO0iE+b53vEUE608X1h30MryHiGR+CTkNkr/Q1QNSAQTLtYpzCtxWG9BfTS2HUncn60j3jdCJ4gW18L83mYmBOodJflFP9nXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJkj3Tiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJkj3Tiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789585833;
	bh=jCL6G65fv3N7dT2EWWlpjSBT0//IX0H8IpzcwzO6oFg=;
	h=To:Subject:From:Date:From;
	b=LJkj3TiuFtLSwO4FeufM1dEEy38inmAMKbD/A1MmcKuHBX4xLc5sjoXOaFiMgTQYl
	 uH+mzxasAC+lhn4dcRci22sxzMbEcOKg3hi9Iz/SxVfma934I6i17uj4BD7Os/+wId
	 R0wWvO+iM7mfoGq1zf+dQuS2TMRxLYAyuGaqDXi9o2TPrFxcIxMJhMZ/UpultyZGTo
	 lyQkM/Jvt1OryVkiX5FMNj0oVsyMMGVr9584si3e7TK/8PxSCL2AoPnmgG6OGm2vLj
	 F2TpLJ9QlDqLe1TfZJ8JcwCq3vg83CGhFSJ4GSA+692wPvTvNKk4LUfSWFL78ON9Jm
	 XcsX3p8QzMOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF647C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958583370.23598.4756248927967407281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d1e66a5fc262ef9efeecb8d5daa148ef135620547bb5716410077f3d939a65
Date: Wed, 16 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789585833
