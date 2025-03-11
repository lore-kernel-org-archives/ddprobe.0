Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306B222422E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741694334; cv=none; b=kV9kOuiaiHeq0+6WwSTqTFg1inGPAEGKIwB/2Ddfhsf7otZnd5x3tRztHANEbPvt4XKX05/Or9Q1NXiVQSK58vbnHFjk6bAnZfR89B+sNeRt51kik7QzUqkPbrQeRMMEUGaDpRqzB8GFAm9nIoBSJvRGdAaNYnQK6WrU9lsYRMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741694334; c=relaxed/simple;
	bh=DKrapqW3loStqityCV0C8E7pqDzvmk6ns0nlxJJpzGo=;
	h=To:Subject:From:Message-Id:Date; b=ZpgW3h3L4jK5Aw3UVyzFUFyCnWX5RMahcQR9d/0jdfzfdNztBfQy8lMX4HvA7HnP0dN+AtDd7YFZhHDHEJaEBXyfkEXBMPLlSdPePXhLqz+ffqdzUzy3Bw1ocEC1GzQAki7B1mYzmon79xNiIYVfmnv+5pvxA12uFhiFkLuTGQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr+tn70G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr+tn70G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA0C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741694333;
	bh=DKrapqW3loStqityCV0C8E7pqDzvmk6ns0nlxJJpzGo=;
	h=To:Subject:From:Date:From;
	b=Kr+tn70G66Xrc5fBK7DyG98Uq41VMUtr2QFXM2lM7b/PEfZGwAqu25HqttW2sxOYA
	 O8nCCfWz1HrgBXkFJtQHIvshOfoPkq8FBZdstkUHz2WeDAk5qddfxVfjBIp2WNWKz4
	 HNJz77Gm04lcq9AOmwAtu22yIbJrt5/fF1+hTBjpG3ulB00+kKCudQWw5PU3NtpepO
	 nt0wDnVmrCIaKMQONqHTcSBJ82oQxpSAHuNt9r4cf8E5EDzusK50T2zCNYRKFAN6Od
	 CKc8QYIwqLOUItZNi/rcDwPeu93+rQhPkg8ZLv0jPD7/HuQ8cPUjZNFHX5pZsKX8Fo
	 h8TF0o4ARjMDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97962C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169433361.6319.4045479825198455195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb0952e34ff2de6c0794ad4fdbaecd3b5d206050cd713e334c0982898624256
Date: Tue, 11 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741694333
