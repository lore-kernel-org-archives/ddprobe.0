Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19524BD1A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749807594; cv=none; b=k5bPVo6FzF7aPD8Wslp5BPYbQJrRngcxL4dJkLSEhI7Ns29KnC5/W4QgLLeJgYMD7kWQIqPlsHY/HFe2jbHh62BuH77jQ214/SjAvCkhxw8ZzLSO5et4MK3gh5ltL88Nlau5YmYSRtX79YHRcCJS/YU+rerrEUM2htSWAXCdLqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749807594; c=relaxed/simple;
	bh=ZQNpsWrh3vPH9eQYSYaE+H4p4NleEmzFfHFWK41nMfw=;
	h=To:Subject:From:Message-Id:Date; b=QrDHMOHC9klW52LvslEDgqzHj9UZkGKNww5/peLNVEMMS8tb01xWr+VQqcYNFpmtN8hl9Vjl7KZXWkRAgieNc5zTlWRs4wPHkj2380hFqv4rQrCBAu+fpWhzX/bND64u/zva6IzTOxritnCwdMPqAk/Vx5M+xSIjEYzKXm0GZ9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaKXbZuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaKXbZuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D261C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749807593;
	bh=ZQNpsWrh3vPH9eQYSYaE+H4p4NleEmzFfHFWK41nMfw=;
	h=To:Subject:From:Date:From;
	b=KaKXbZuhvd4WU4eSExmPCcTUUooUI0HP+WCZEZUTr5HRd6Fjk5XmaSo4woIpUs4KN
	 LvpkpDXmQFM0PNgrpoFEklS8WLhiP89LNKCaPqg6QHVxkS5QzwskVU0Hs+Q3UzZ1Zu
	 tMSxuNJnaL1c25crvfogW474K0pwDaGJw7/VTV1XY7/SC6U/SMX+cTadrOvV2o6qi5
	 FM6BSdQTvs0broQmdTZnJECTU+IyeZrhuqF3j0xQk4HpCg363kJYo725wsuQrC9XpE
	 3gVaMmLp7z/3TV0+RbM/vlSujGz9x+6JRsaJ/v85KT747mSBzXUykg2NgJhArR3V8g
	 4SCm4mdkXtvGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46DC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980759357.18547.12679959255712617566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa51c6dfffeba37dc0cae70b3eab1fbc11569c3522b972cdd1578fc82e7849fd
Date: Fri, 13 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749807593
