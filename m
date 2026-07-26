Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B7137A842
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785099034; cv=none; b=cClOM1ZBPlphXyyyse6ZNa2EKrsW/4I+QEH6hB/uxYQDY0PVG5eWLa7dwfwreV1AMqn6KykjcAMgZP/+S37u7/K7oAddoOcIjh8JxbD1Bds+gJJcrOIqKZiqoVpl4jw1s40O54lBfS2+dTc/CWhAY9ZlqrbQtOFLpejkq9tqvPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785099034; c=relaxed/simple;
	bh=QaXKvF+fyOstrs6L2RK6LSGAs2d3scg6tv0h3CoCMuU=;
	h=To:Subject:From:Message-Id:Date; b=CfkROWvSvH6ATzcqi3osoSAJci7zex2ly1cmxx5qZnJ3/wkoK1jeX2mJ5oVrUrqYs7f2PxAkm9RXKKEKUKlrHOn+Q+n/wHhs57X1lp/4lybFBKyMGXlyxOPRBIk5kQFWp0m9zERfqtl8wwGrjszBqGGTgvm0HOC2jRull+8upu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppU2095r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppU2095r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F80C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785099033;
	bh=QaXKvF+fyOstrs6L2RK6LSGAs2d3scg6tv0h3CoCMuU=;
	h=To:Subject:From:Date:From;
	b=ppU2095rnO1JUYYnyG+TO0aNsWeBENP4sKq58b353zJjudfg6V/lTKv7EOOgLXCgi
	 P5Edt9djHGIcoPzkJlIshRqWMbbE3nVfvlTfrfPXLy63ZJAXxE+Bqjqft9OzxQv8sV
	 gn9MnoZs4ofQcWKub84umQ7Ef9LXpSSirti5zium+1ZUcQwpYQhvCCsDdQHFwGPxD8
	 ERi7EXSap9UmLTvnKUdfkjZZlr1Mzhv55yT8Pwp8wBhx1PODLjd35K2Qm+gDt9oNDH
	 T8OZOdgQJ7IzXbYDl9x3L51kRwuM9ScvahSHOKAzzpgSH3wagOMmTG9YVaOl8W9bDU
	 6ZOfm/gWOYOlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DABC53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509903368.11420.11155430253041620230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08774c339e0004316ffab7ebbd9ea1b8f81a90d71ed9046e4eec2fd27d372894
Date: Sun, 26 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785099033
