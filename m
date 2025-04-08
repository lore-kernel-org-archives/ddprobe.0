Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E796134B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744077594; cv=none; b=kM6YsqVtGfrgm5YJ2asRgD5HvgpLSUI/jJu2KuLzGqeQXl/r2ZAuZeeV+1/1Sr8PYDRpGe4PlhyggyYYZXW6amULDILkJeZ19HthQh/iZbktchJ43uOr75pzDeSiuN41F5ZfeadqcbI+g/f73ymXQXhkEDMA9bA3gNLyjHUk7U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744077594; c=relaxed/simple;
	bh=WAJ0/AJt3qtMOqB+GE0/vUXM9DbzEgwJyFVs/8eDN6w=;
	h=To:Subject:From:Message-Id:Date; b=YRkwIr7gf4K/YiSKPTQ54ymu1GlzlX0QtdZdNidYjHMbSySOL+3otfXKzq3W/BhHw0YIs5tgJSFPmc1rCGogzOHSQ1IWYPPSWE5QikpO9jbWB72LRJx9y7QLKOpaG7sZ1UfLFbK6tuL95B33PnEHJwvjkDCjtwUWpCasBvEDfoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIyIn2ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIyIn2ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF2FC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744077593;
	bh=WAJ0/AJt3qtMOqB+GE0/vUXM9DbzEgwJyFVs/8eDN6w=;
	h=To:Subject:From:Date:From;
	b=CIyIn2ysFVfQ89ZexQ0XdAN14QO+GIumZ+WaAZh2AU5zcQVhqN8zDtUixF9zwCgYy
	 K4Hftf7Gu8IqPHhiSjo8iy+3mGzskMPCL/CmTJIFi8BMxDztj/2TXuPLb8mwNQOCWX
	 mmsH8a5d6A6Xfty7FiRyxPz3qXu0blc8ssawGUYGMZ01vcfZm4Zu9poYA+5zvgKVUX
	 x+ZeM+erUdHC4GlWj6j0AuFM017Xiy8BzDmlBpiOHnlgy9cALt8BlrCi+rJWloH+gp
	 RS0aAWH2pR3mZRn3b6TsurTLpwAILUQ4FYByxzzdP/R7gWoy/w01ovw0rSaAZyYNUl
	 XgSLarVi9VnoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A910C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407759362.4401.8942385629057292995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b8952fd01007e30d67c8490e8586f4f9017adad1982c4850dc645808e6ef72
Date: Tue, 08 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744077593
