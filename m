Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D5F40803B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792389634; cv=none; b=abhB7r9qPmxbH9Ve63v5Lu1UdxuhXim8ds6tEjL2cioB+F2SQGxjsbGpjDFBJpTryjU1FvVCU+eyqclfq6L+RcWM54d4Qbv2NQLKHyiyJ5NxfEkRltH1hTJTH1f8TlMTTFgvCwT625S5KYBeMtd7I8N9/Ag67b/NJ+u+vPI1IOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792389634; c=relaxed/simple;
	bh=pQmKl6XtiYOgCkHbUJEf8cSq4AMN5ch7IEdngBVHyrk=;
	h=To:Subject:From:Message-Id:Date; b=tPdYnGmn4XWNOSdsYOC+IC5ybNHcR7baBntXv+ejucN/JTWVzIfCRlY3poX5bqMVTmMqWQyc0UTjoBmW6xjYvRF2grYwbmRx0uELc/KzHGEUfIcbFifga6RpjDlmhe6BYbAk/ntAIFqqu3alBjQvATfMjnCeUeqYXPcPYNVAy7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIvvqim+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIvvqim+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D763FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792389633;
	bh=pQmKl6XtiYOgCkHbUJEf8cSq4AMN5ch7IEdngBVHyrk=;
	h=To:Subject:From:Date:From;
	b=MIvvqim+vYHDCLuA7WyOolPWJNYRzuL8zs6t0DIrxmqrJ/Zly8nj2ENATXZXfgg6g
	 H16q53uYtBJ2UU3urbBACCrb0nbmyU3VFqAyzdrkizX64Mq3GrtqpxwXZEKyL3h/HI
	 39GrktGdIXYiykU5CpAVikmRGc6FzfaP9IwxF7s8KD5WvZpma9auXqbeX8WJZivI4S
	 nVgWybvLnKDRAaPLHp4br0VbIE3F+xO5wFs/JwOSTY1rGV4uFKhxICq74ui3adHT94
	 3NvVEzmL8Zq+Ekn1I/oB4e1pWK+3RW1hkDDuU0rsKDKG3vinf5vJ0pMVZyEoSeOiJu
	 BWGHm4aZhq8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A5DCCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238963373.15669.9293777772923053522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3fad22d74d9bca3fce1af461c684d81456c43cdc7e9bd268c51caa5308c5cf
Date: Mon, 19 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792389633
