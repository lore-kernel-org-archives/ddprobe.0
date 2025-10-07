Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5AE2EA736
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855794; cv=none; b=Cb2W/tUTHOQAGT4c9C2YWHiDPz8eTZX01FvV9DkjqBefXu3NsjXk0Att5/u4PdSCFFwBPfhnSdHBHbgBkrFfgs6ySMolsiYubF0AcIuh4yjzT3XOUaIE0ATXGvcnwChM3hJugEVHnqCJZ6iN7qY8/TG+SelaOx/q7OsrhHyuXxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855794; c=relaxed/simple;
	bh=X8YH7R01ZsnhIDmv5w5ajBpij/+ycMhTAw7t5INNmik=;
	h=To:Subject:From:Message-Id:Date; b=LhxzlbG/QbRp6R60yu+vFGdYxe+P+9mf3oFWZQDv2tT+g/m1lREu1vanwUeag+7Ixcy++t5mneTf1UeannfAp6Ijlx+P0rdB2R2TnPmFcN1t8TkxY4yc/FQHW5yI/eIUSEhi+UAYEOjxh8vftqa4cgm1mZCKfFeGYMaZ+LurlVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUBlYLxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUBlYLxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCFC4CEFF
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759855793;
	bh=X8YH7R01ZsnhIDmv5w5ajBpij/+ycMhTAw7t5INNmik=;
	h=To:Subject:From:Date:From;
	b=aUBlYLxlwEOyYPiN4gDrkE7MjrtoKEVpc6l93krTT7nddsghlczKUzDZxdyWREApA
	 LaKX1hnUDoFBvlMhr319ilw9Ybtg3g4x3Y1hTF+DLpCyC/M/4PSFi/oBAE58rG8dW/
	 4+E29uA9078lnbkpp7s2TbNUfSvGyY8JJ3yPPK3iCKwD3gMbgiJsYQLkkv7lkVMUPO
	 idbczg3vADOveUjScHo0MJz0GxpJFIXotD12mOWzi/PZNqRCtdIdQ9Mh3NeWsjVHs8
	 PvNKKAXOOFkzG3EAXIhSif6LeekzGnqC/CU98UidrpgLN3p5xLskolJquU0fGcNQq7
	 TrS7IwR/zBKiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E93CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985579358.15129.14690837418607501623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d20f051c6cac468ffbe97105c6110425a6d7b7f5ccce910d09341160b79fb3f
Date: Tue, 07 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759855793
