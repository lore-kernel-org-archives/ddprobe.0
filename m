Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F8C1DB153
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736928354; cv=none; b=eu+Z1SBX6KlyC4BQEKsRqtBRRATHD8wFAeWoH0m6RpzHZ6bukS7kvZWLVA8uYlSgGt8UbjWw78zsOeLjdrXLG2qcrLMjYORYo6hNL7tRraqr0FctOxIR4IbhU12iDPxkoDe0J6EGyz4bUCjVM8QbRWkANU7g39Ga9/zsdDZy3Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736928354; c=relaxed/simple;
	bh=+z+jU+NcohWUX041BJ2bFjRVvTKVRB+UHOl8r2JU/s4=;
	h=To:Subject:From:Message-Id:Date; b=S5aYzLNo/KQ0ty17nFWF60z3AlQBwR+Wtz8TiQFw6u9nmsXLfQnH5lyKFKIC3Fr3ZN2hIxZ0uKh08NEVZPEzq/3U8jmn+ooQEAk4occCxDcWTui91WzijcZ1g4Rlkns+uzKWMN6Fs3kyaFaOLhkmQk2GmSHwgZtZjUNjVqp1pJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAmDM69w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAmDM69w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736928353;
	bh=+z+jU+NcohWUX041BJ2bFjRVvTKVRB+UHOl8r2JU/s4=;
	h=To:Subject:From:Date:From;
	b=YAmDM69wuFt8Uz25P0G6g9LEHe89X1ITdnHNfYHbMyH6n9iICyEcdmZhdP6sKwK8W
	 RcU5jS6Txp8t/Y5yrsToGlzzr/VtSM83BQuBDuVyIQFLhYxxS/6dR9Q/9mGztB/+xV
	 jB3C8ELbliTZXRhWE2eEF+D0ab86dikPV6jDodgbRBpoQbpZI875ZjQEDx4NOQKa8f
	 Fca3bSES3aSoWrvE9B6ckNhDP4fXTqqmlIRVXvYY3gvTSVd/OSuqYzPwPyGurYthme
	 EdL5/8D8PF3VOeOZSJDgEtru2QfMke6LIdVcEIUJODPcUtwWgKglrXq/jnBKp5EqKh
	 wzuJbKu628rOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692835358.25301.1731657985870740280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ca7e31f25206a9bce64ab9c50e4bd72f14fc23a832170af53854a7e85ae3c1
Date: Wed, 15 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736928353
