Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301CD1D8A0A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875394; cv=none; b=kxZOei0tNBkZ/cOk5Nm13rE4KpDqjY4IMD39jYMpjlgleb67oszdnGPpdNkzGB2ptBjzzuWE9sqybyV+XoGuG0qYyj6++pXPmgw/MArCB3fZv6YRmnffV9Kd4jO0wo1PgJexf2cPlXxeDeg4q2Aq5XSj+xmrApkq/ni2oig3aBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875394; c=relaxed/simple;
	bh=/O8Vc0YORhMPyoxI/VG3DLpQgP2wlzNOe5bO13AXN7c=;
	h=To:Subject:From:Message-Id:Date; b=Kz72LpWJBsUQf0h+5LNUcsa04zPhjFuOVtu5dDcUYdAgtXJh7nW6Qh8g1xAdsfV4udtKhe5V3CgD2F+8akrmGIisqT3cK8ZOC2UhjBMrrg0x41ZEO/AujwttqIZvqR9cs8g4V7418ak5hbGpJKypC/rVFCpMm4v4R6fZpKHAOIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2Wk6rrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2Wk6rrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755875393;
	bh=/O8Vc0YORhMPyoxI/VG3DLpQgP2wlzNOe5bO13AXN7c=;
	h=To:Subject:From:Date:From;
	b=Q2Wk6rrLPCWDMPSQCicCcecKtY+XoGlmK3uLit9/C6RMaY3xpyC4Xg6Cc6MiEnelK
	 84xgRXrooVJJ4S/lcZBpIzqBoSxnlKomPcXD46gMA8Z4+e7ZgVcGEmPylfdAqBdEvU
	 PWBcDxlqS61jiTiiJWMlfxsv2LB2ff3F/jaE0d91dA+wm7AiWuJyD5AAgQGskKOiOF
	 yRKmgEQxFEMa5zEoM0yWFWI0vbjwsAm3Ngo+CxBoXmylocNmR9cSZY9LJP9qDGlQF3
	 dp8kcAyLskFDfEvoL8BKh4iLFg1TySdeLrjr9zInlBUqTIaK6M6IxCu5+tYj9x/qqY
	 0RFr4qg/M3/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B5CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587539357.19419.10277865699155126182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fd63b9a57e1242fe98c08e4c9c073be5d9f7fca49335e2b6a9260176241b02
Date: Fri, 22 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755875393
