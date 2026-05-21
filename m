Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A6E2C032C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779393154; cv=none; b=vGQU3nekkgC793VEwZIw0GYLcSqlY4ZczmJNlqvJ6PeimwN3L0xYX9ef5D2e+eR17E/dJQXtUsJGqJDZSRV0rXqOVoME4EG7kbuoV2dAjqsr6dU+1+iGSwDD/BMA4K2cUUruOowPr3s5ydEGrYHvMcLS/TzzenibZxvDQbwSvK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779393154; c=relaxed/simple;
	bh=t43o/wugwMHaV+qSBqW1qvU1RvryQpKF5Qr9KwtbOpI=;
	h=To:Subject:From:Message-Id:Date; b=dsKokTEaTltGWkCqXbErYiaPycFjMLiEnvjSc50uoPv6vkEMiwLF3EmjOTl3E+7X30ks8A6AjnJfOKwJkPxdzprCfvjirvwN6ob73ymEPo0lZh524S5oIWy7cZ+STMJGoorwOlNp/B9ug2zzwyH5vwkXPhkEzULUwpn97g828XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id5D/JqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id5D/JqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0582C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779393153;
	bh=t43o/wugwMHaV+qSBqW1qvU1RvryQpKF5Qr9KwtbOpI=;
	h=To:Subject:From:Date:From;
	b=id5D/JqUSXttA+qZc8ze0A5MxygSIAI6hn8iqz8OtUtHo3SudG9ND4fzgheCp+8we
	 NrKUwV89LwyG6qplnI9vxZjl0wEPU9ohZPDV8P1+HqkVZDc50rBa6WeYIeAMYaHaM8
	 t00znQtIpLnTUEUg/e41ri0Ynobp97DH93rMjvCjUVZcu76IxbyXuMNr1K2I3yw2B+
	 d9nTt+UkuXgWSLxYhtwmtCx/xXK025bC0SwCQF9jUA5WSobu9IEqrJ7B7kyWSBlrb1
	 OWn+3vFWGIqwTEdvkn8zdcXxu6b//PVd3MhxOfW2xrIGWSrMr1YWC2za5rxXGUZKsI
	 wZmQcusNkjkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F67CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939315368.3320.7323552030332306204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e96b211fbcbd3ae9583bd1bfdcc4fc04dcfd8c57b51cd7e72d88e2e835c50b
Date: Thu, 21 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779393153
