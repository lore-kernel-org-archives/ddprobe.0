Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CB2202C29
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174894; cv=none; b=SqUyKQGiCuA9mX4gj+JfwSZe6brnk395U+Kju0gIMeq4ZbzVtpOtTkQX07GHT6VKFAA5vlwHg8/nm7jQz67g6EKBnvTFf0MRb+oWZUUcwivPyi3yJ7sansXtXZy1O74DtBWcu5tjjPzKdbOtPgG10CqexmyWt3RSJ0ULWgsHml8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174894; c=relaxed/simple;
	bh=bCXuVw9FUe6EilZBHrQdlnKeIDyous3HPbSM9mkNOZQ=;
	h=To:Subject:From:Message-Id:Date; b=Ih/WadTZz8zHZTPfXC0rn/TUoM6iGmy3uzdElMondYHxSjLYudwYiucEaTOPxMWN+y0sYBK3pG848bFxcp6HG4nWYFW+aae4ja1QjZKJHmSPiyH9E5M3RD95Ff1S/yMuPZ4rtBJqh4mQlrKS/maV1ej4EJlmmxqIk7MoQRplD4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPudlW+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPudlW+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA7C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773174893;
	bh=bCXuVw9FUe6EilZBHrQdlnKeIDyous3HPbSM9mkNOZQ=;
	h=To:Subject:From:Date:From;
	b=GPudlW+cTxo3TmSXUDsRTHTpsrhBCohOvxkb06Sw4mZGU11qPPpbbcnzdGzUDXx9+
	 jfiB/Fa+p8b4HCZ4DgngBbpaWZ/NOemL8AixFa834VkkroodQ0fVnUHRazU0VbL9NV
	 cExKqZi6Gc9NhotTGYXTrS9twP6J8HEPiIkbSForGES21jsaxo84hjosyWfigYkSPc
	 ScWa/TT6PUubqH5GKbwWYntlopPpKKHxaQTcYdtKCR9nnG5/Zk3d2SdcQJrjQthPd4
	 KhT5oNDPZqbww9ArdPOeIhng9b0FZ1eqMDiKYaABENxpV7H4Me7BQy/3HyxWqPkbkR
	 icTWgnoJ426Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988CEFD4F31
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317489358.10919.3836000948586160618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98b2c2d87919ed0a52fef356a60cd2fbba76711f0431f693c79494d4eb7d59f
Date: Tue, 10 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773174893
