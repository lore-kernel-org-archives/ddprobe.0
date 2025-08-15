Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2497319855
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755265793; cv=none; b=KvC1g1CYCmoqMtfSJB6uP7C3gtOy3Umj+eGazwCYQ/Xgb5+GM8s9UJm9+3IQcq7PVgVH/KLg484vgS5gnk8HqKll4/xlrB7TCW7dFjZ41X7LuTvD5+AninIN/aUVqvqk1ZpzmzDdE5OrS1jCeuQjVpV9nsoOWdNNtSahQpCrWUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755265793; c=relaxed/simple;
	bh=7MimBtg5kaV8vGS4ejmEq6uBgjY5keOlctzGUby+UwA=;
	h=To:Subject:From:Message-Id:Date; b=XbPCzJZI+OpM0vB+k0ldzAu/snEnS57MTGDTZkl75sl+JIDPsrjU2L/WnYzH262fz/EGyNVU3o88o5dgrB6GvNgMJMjvuixlTLZQ1HDupxe1iEcgYDti+fEcPuQ+VljIg3lGuuuRFe81LDaO99bNdnq9OK/wKUM3j01Rba6eiqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS3YBDhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS3YBDhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755265793;
	bh=7MimBtg5kaV8vGS4ejmEq6uBgjY5keOlctzGUby+UwA=;
	h=To:Subject:From:Date:From;
	b=lS3YBDhzl/r+wNYgy6rZLTMEvAdgqUwbYxQPzOMwxSo2eETVDbboNxBV9fZFQ+Sd1
	 MC0MiScEE6trlQbOH9leoAuut0yZJ+N8br4YJvuMT+FMLc4xtTFXFMxnXjClA12Ukw
	 yV85SNcrQ6iNewFdr5SkTJsdW4lu/E0ij1uxfOQuMSAwSgoB4vt3QkwhXjR/ze+4tX
	 BtM+9SVcIrw/x4z+N5JfCzr81dc2pfFqVthDEJ8kXXaRDH3WsCZxkmujn+8WNgmc3K
	 wnq3tgH7KgaSJfod5nauSqVnegVeM/Hxqxw7TBBCIksztiTgFSYP57SoMysQodnu38
	 tFfL5z2jNYIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD68CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526579358.26498.6652103012982310713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b4bdb46150e16844210ef61d299db06f05a6068a8f4e78fee2e76d40055001
Date: Fri, 15 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755265793
