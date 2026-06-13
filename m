Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B982032D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781331994; cv=none; b=dIeVMYRuCT13TGHGHtSNY4iMZ9DXnEhH9xkiWYVarzvi6vPHMZFqEeLyrNpvzSM6AibnsPfpsVF1bbvuLO6vRSrMEyaSik/ATwARtitvDfoPKcey36iNRpmGhXo5DcPDT9eyuTDQi6wtKDKqyvhhsKjt1stUvRNyWqkBT3R5ZaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781331994; c=relaxed/simple;
	bh=elLd3sptQdifbqpFY3c8Y7ywFSdDmDheLVWMDGPoMJ4=;
	h=To:Subject:From:Message-Id:Date; b=LgeI5EQykvRJAfn01NXVbZQXjGHJu95aPwipSQ1u7VawbNxCGeB05jJAxZnpMhi/euYi1mBKl7uhDD68g8GaCRJcJtBenoOcPg7kPwZQXOhZyayA2bdr3PQY+hc/8Yqo1N6JR50zpIZec4nRkySeJUAWRbR+W2jaFeN0tw01TsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiOGUgsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiOGUgsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31ABC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781331993;
	bh=elLd3sptQdifbqpFY3c8Y7ywFSdDmDheLVWMDGPoMJ4=;
	h=To:Subject:From:Date:From;
	b=GiOGUgsMZJE0dbbcpDgtxqCr6wilZEf7qLpP8nEE41I+oW+HFtr2ubK2x6ok8U49h
	 c/l0fc3a8EJFIdSdOGbAEqIPUvv+K14UfOfbo/SQv0hmpWp6CwvAgnL1x5qqwDndgI
	 XfPJG3smmpTyBDaCN9tdDFrnLlgHTYQ8RL1A2CX6LQ3kSrbp/oM3vHS4ZHI0Mfh6b6
	 Qt7JWTsjFjx8oSleWFeclu97L8fW8SkRauEapTMGHCvpfdlo455Y6vgQogJ9kJ3LY6
	 SvUzZxK/6rMRupByHJvFpCcX7L/PiKvU/wbwCSd86LpFJMijsC/6ONJoSEhJ3Hbtct
	 hhgK6c7e4Y06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA675CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133199368.13910.6430678134193797225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d870f6a9c5cb5b233afd2740cbd3389837c81147a4be7e69feebe6c63152b4c
Date: Sat, 13 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781331993
