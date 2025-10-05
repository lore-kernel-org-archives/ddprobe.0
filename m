Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0F779CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759708194; cv=none; b=U196snfdX8W/rVpn+uJVG82G5Q64tNQKnjD4u7tjO4D+uolC9dqThncUnOihx2MtFs0V41ybAicJM7iBCj04ycm5STy7uAT+oCOLd1lURR0t+CejdHJVD4jv9JoG3TgP7QaTCCcKdhytZ0HXNCqvc7Y7V/QwG6Dw/rlk8l2oJ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759708194; c=relaxed/simple;
	bh=XShcXy3RcvmkJ5M7QvHGHpwKEsqkoOG6m1DffLHUb3s=;
	h=To:Subject:From:Message-Id:Date; b=gWYfgIpW1vlCMEozUG4Gq+PuJzbVW7+gS+kC6R4FTL0RPTI3YV2OXLfbNRR16aqqW7NJO24JDeJz9AC5SoMhCnymXi2nrVA6gUHDXgXgMDSet0Q/bwa+BLYAJVJbVw9fAAaNPsrNyMQGxa6RwqNe8OLCocWwuHXNzHaUSSg4ptM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb9nAe8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb9nAe8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F54C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759708193;
	bh=XShcXy3RcvmkJ5M7QvHGHpwKEsqkoOG6m1DffLHUb3s=;
	h=To:Subject:From:Date:From;
	b=Qb9nAe8ynC1QTtTkc+FXhUvNEWV003vSXL4Uikvsv3/CtNvg+Js+LZILRy4Gl8f4U
	 gILseIQdYX3jcJK5uPyGgPYMx5tE0YEfNc6Ka/G/zHySMRAxpordbxYDNKk23da/kf
	 hNn1iQh/V2/mf7CMs/8YXEip8OBxaBjlBqqx7VjArFdqIpPSGmmGV92b6FYalibd/R
	 pjUSclQUuMy8HrpB3mbrg3gdsFfj5uWpIuTGKmUBcMJEp+ugf7sdI6g4Aafwzh/o05
	 idkgfTTfXmD2wEPTQB5vYZwftgOiDi1apKE3d8RL3jABkfK2/aH6xQHxdTNHNiLrbY
	 nt/XXiMDDcBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4CCCA470
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970819357.16983.12100609810143983989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bf704ed146283d3290d4e9c3934290f6057890986595cba48a6258e54a4fae
Date: Sun, 05 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759708193
