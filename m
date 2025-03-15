Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5381F583F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742034534; cv=none; b=IAeCvrApjkjivHxAEQKJetox51RceaPiwATD/caVjcv7zwTrlQzjQKhYPFyqN+giHO3frfm5jQjTkP34UqTQE+dFT16pnZJj8XpWUnhBPoqsm+VTpjRtfOUljHG2n9XnltmmMaE0d3s7c6XUU7HJHPTPtSbgi3AuV5oUGTRo9C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742034534; c=relaxed/simple;
	bh=G/lnzfPPqQcQz+EQT14y+xi20O8PT3BawtVMIeTWAb8=;
	h=To:Subject:From:Message-Id:Date; b=WEMrhYYLm42qAsdvyB2h7nAGxXnYi6hgtUC52Ia+iCeUslLQUgyZIRzhZnZk9iaQ+GYVIZhJnHXYuX6d6Bnf0SBVKkCNoPBCvpCD0tGXpAyvRElku5CJoFHwCevKVD+ptE0IxLvSLTgDrf98ygXs28xRAd57GDgs4/EdN/8yqTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmGIREoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmGIREoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0399C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742034533;
	bh=G/lnzfPPqQcQz+EQT14y+xi20O8PT3BawtVMIeTWAb8=;
	h=To:Subject:From:Date:From;
	b=VmGIREoSflyw+oE+pZuL5V52WhxUDd+saqARfmKkKfKzGStlozmjORO9VlZ1ac+cD
	 XmnvOmNjhwroBWnrwtxMrD2EmomBdm87ooVAAV6I42VKlTtN762pAEw1YN785Hr5I1
	 iYLWqZcA6y89Nf95Y2y4SQn0xR5iuoHpcZsKWhSIm5D3QhGVqS5DsYuzUpxHKAvKO+
	 S5YPKUa8tPv+TweBXBdi49MJj7f6q8DnZZVA8ShlrDixTsmidwdVi+duEuXxjhcCOv
	 b91mLxXoVErvVIbipR4arqHsX2HDw6aFu5iOqI4T54RYNvdnxQ6/l6TwCZyx6PlfTo
	 B50pd1e/t8SOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACE6C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203453358.4465.16614606593385234322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9499c830119c49366679ca9c09e16aa22da484ee76cb7a51bd26df13caa415
Date: Sat, 15 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742034533
