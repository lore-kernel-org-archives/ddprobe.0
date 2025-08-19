Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190B30DECE
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755626394; cv=none; b=eYJFiE6Kqe414ah9Xhg7DtJdui3cMtAOUkRHL57Q6Qo+jHUyrRKZKTEBYaGoL3vwvLb85lmIxwe6mU9L2Pp+zPUkXQJbSFgCS12hKdZtkbIQ+IjiMN133z5I2Ns/tAQsoJbDy6ZeZrmhIeJtkvJVSHpUF2SJtoe3D142bNyYS/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755626394; c=relaxed/simple;
	bh=aXNNbYC7K3l434lPSO3A4OiEt7r8aSWGArFlIlbD+bQ=;
	h=To:Subject:From:Message-Id:Date; b=t6e74l6dc7YYgxQTbxYlhTfi7U2mk+jFgHkjZPjMnZMqjcAyFGiKmhbfpTVeGwMhpC8H2RBXS1TLYbk+52eCPN/jYeDBRkz6jblTc7RhXzy2SsXqwf2kFui7YghRy8YJb+65ybIJgTGD5E3+sFgWR3+qz52I1QeaFEQlmFpKEjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tns0CkeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tns0CkeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2240C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755626393;
	bh=aXNNbYC7K3l434lPSO3A4OiEt7r8aSWGArFlIlbD+bQ=;
	h=To:Subject:From:Date:From;
	b=Tns0CkeYQDh5iVWs41JcFnwlOuvSDItO5yvhdBORnrk4TiToiLpwtbtmb6KPprT7I
	 glbU0iE5NqJY/4+j//2NoGiMHyrZtD2dNY4sQpKbViSQ2zZDY4VEQ+T+tw6AjBwFuM
	 knHSflPTdT3Wp9xkIXy8f7VqVnVfhbObBMKMaVD4ZPVv9F3S7aFkzpUc/04nJQftnv
	 jY9fIFLMBv/iMmQjttmHD89zVZ1HBptGak0W8XyyiDrFmXyGJAqNt6eO1Ofyw6FO6Z
	 RTZb/LV1ycsuqMCOsIWMjZPf3APHrFR8EpAb5cQJHf2CYnZ4Pq6NHJHiOD71qckOnC
	 hW5O1TApsDqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC60CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562639358.2658.17910943145769150815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dabcabd43449c3ec657f766d658edc2395e548f471d720b5a9babdf582e5293
Date: Tue, 19 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755626393
