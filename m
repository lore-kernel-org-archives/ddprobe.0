Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100AD2EB5CD
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771385094; cv=none; b=h142M1elmH65ZtBRnP1HfuEWMENS/Grac5o6hZh7mrMS7EzExdEUMfPOU8bIJ4kq184+QbSZWEfYgWrfLJ4GJoU1ronfF+D4slU29aUiuMXTbAAwOTg/MgcXqGnNYkR2iowj/Q/Dxvqge0H4KntPaqaT6sAvM6ln+LRnbaQG3E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771385094; c=relaxed/simple;
	bh=aixiu/nwTBf3csCjyBYjA+2J2tHPNAMq6rOMjro08uI=;
	h=To:Subject:From:Message-Id:Date; b=roZkzEJbyi2er1aEIPR0kuY2XRz29qvwkM5ANo4rKrPgM8bAlzlliujCikEYtuU6W503UKHTiTvvcexkBrE/1j7+kT0zAv5pY7hQgI04LM/bYi8xhvOI2QrTylvZhgQVYdjihWnPlxvNLNWQPVg0ClmFsOt3wu0+dQlYf8yPNyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWD4rtKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWD4rtKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7FFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771385093;
	bh=aixiu/nwTBf3csCjyBYjA+2J2tHPNAMq6rOMjro08uI=;
	h=To:Subject:From:Date:From;
	b=KWD4rtKoErN6Lrusbsfi38Ay4gwBkXfOtI5A7xhf0GgdwMltcTqm87iIWkMqbSvPE
	 R4AlPO9tAHDnglhGk7Zbk6mYR1ejzaqiKft98JkTVbhnzLVvKzt7ZzM/FRVPGobhW4
	 6ONn5MlXkY32emXnvhGW7Cv/sFfcF0ozzZxjhu8Yxvpwc6w4vMIRnwkmNSp/+8iv/U
	 nHi0oxUb6N0swE0O1p+0A0UrKqn/RWXj2d2Oaoib7sK/Y4tvXyHH3TAYTzQynErBqD
	 0/qHHqJQOQPzTRMwyqZ3TBz2VVSDnWOAWVGRF8cvupVPU5yae2WjjDKx/SO/b4aR6h
	 AwoYTW3032jxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EEFE9A049
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138509361.26272.10152889082548884494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766f11febe1f2c141680ee3a5a123d7092258d37c744f5e890925c6608390de2
Date: Wed, 18 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771385093
