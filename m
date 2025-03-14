Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48658190676
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741996734; cv=none; b=PDQKAwWh99oOAwMdYX89oJNYquKJQnTYoySwYEhG3agp1VKdNhQpsFclgvPfWHQbD0wHxWd7kLDQEmdNc4pj2PivWzse8jLW0jcanTQ7alnXdc6SGEmQpCrcnelZusnlas+JFAOyG7RW40WNGc1ffjAej7dadf6TSLegYv80Z0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741996734; c=relaxed/simple;
	bh=EAQMaj2iUxUTqFk8rSO/idoN8VsYZZ7BxQazR3XN/08=;
	h=To:Subject:From:Message-Id:Date; b=oRkp+8cMtuTKhNJ79gbyhZlXcY2bSKWE+0l9YfSNGfxzVtlKcM0bJp34smi2XnuIx+FlvAk6Xg+S/1IS7YoJlxzGMVO+87EoJv1YxZ5VFivmOlJ1O6bLykSB5tESfu4Xk4C1BNgRpUhYsqMocruB7NboM66nTqkBTgGp1yZ5Xv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1dEaRSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1dEaRSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE141C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741996733;
	bh=EAQMaj2iUxUTqFk8rSO/idoN8VsYZZ7BxQazR3XN/08=;
	h=To:Subject:From:Date:From;
	b=p1dEaRSpudl1bDws34PXinttq4ZNQdZyLQC/qoOxVcCJp6tXjgi3ZbYQriY3UeAeA
	 G6aG7TQsQymnzmIeRrc6NFlzfA82WB8DetQ8NAk6J89OI9vpimHdVnzQ4ydE3TEeCC
	 kmpSjryG0J98Dj6D69JyCTD5LZZOCewlrOmDw5+Zn8rjrBMtfDR/f06G2ru9lPRaqS
	 C9c6Sc1zLbX4Xi8YKqVcJd83lllQ6vycInDI8dZc0+wuG2CeIMqe5Unttpl4nCoybO
	 ythtu/2H7XnTV+TNLkzZ4NDBaNK/+YFlKdNUFTgmMDh+Qrd/C3xDLWHfBqurY0+sJ8
	 PVeC7BqtVpjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A7C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199673359.2441.17779847935949313964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76747d5f1fee393cefc44db5615d958c2523da868a153ae660b194f76ad0df09
Date: Fri, 14 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741996733
