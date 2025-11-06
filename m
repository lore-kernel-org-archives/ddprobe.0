Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF06918D65C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762451394; cv=none; b=uy5/CWyRucerxTWUAky0D7IMGTbq6yZ75rkW1PjoncGAYsyl9eDLZwHZOHnAeaxsfq51P3n2YzLTHg6bEjPYdoESz8yBbqD1Xzhx0jD8QwqR0OJMZhik4IRM1ktxxAtlz2/MG9db/NtKzt7AUOmdNx1pQcqEx7mjlmH4jeeiR28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762451394; c=relaxed/simple;
	bh=tN6xwPmltcvEgFF0279asAqf+lbAJM7xTzwAx8eu1Cs=;
	h=To:Subject:From:Message-Id:Date; b=GPakVqp40dOk2nRLyge04/7liS1mdK7x0/VsGm7a2cQKRzud0af+6MJCsTSiFWIybrEMdzSI+p6OL4Hf5nkqgsPwJQ08FOVx1bs3e5VyETwBiMKs+Kzi0+xbX3i+znzC3lcDTR/r/JKDJUiijrWWqEBVDs9Ce6eL32/IUuOPbaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9H83sWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9H83sWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2127C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762451393;
	bh=tN6xwPmltcvEgFF0279asAqf+lbAJM7xTzwAx8eu1Cs=;
	h=To:Subject:From:Date:From;
	b=q9H83sWAG6ntCj3eCP0hcl6I0ZTGcUKGct/oQbJXFu9rGxcQqrPU43m+CqXWL7mv/
	 e2E6jM7pRMbrZbBqsVRTax8l4SIeY1ElEmiXQXujZNw/sS+0kJ+qH+Wnmk8zjWeoNk
	 VmEh1+PPSr8m0vx6CeEiAjsyK8zOhOw4e8yTkIaPlKk771PGDlEbjCIw+kHjDIhjQ2
	 fdvELthBx68sNiPF4ODk/cguS6EOqONxceGYc5aEPfndYi0sqf6udKu9vkhGYqIiEA
	 zbLaFuAIkcn3UHGHdIVkT2t35PVyM1mwzOifHHKtIItHWfQj2BVcl5+0WVpDXRbJjb
	 GhWpEcihMKhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BDCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245139358.3411.2406221499317345412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcca60a739188405a38e948b62e7c83ff8143c955e3dbb2ea4db57895eb49310
Date: Thu, 06 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762451393
