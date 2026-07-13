Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E745368D4C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783927114; cv=none; b=mlypgmAmSC4n7m1GbScu85y29sPmo8pL5+tGYBzAForJux++YzKnhEhJSAxjCYAUKgR3Hl2TP76QZqdtMZjJw/g2C6QCE3HSTQhZ2zp7WPkV3hR4wpkDuz02lHC/T+ImKSmhQYdvzeo79NEBp+s4auMuLuOmqSVWr863n4JWuew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783927114; c=relaxed/simple;
	bh=GwnalQ++wjL2Yreltj6plQG+KY0zTBDjkhondUry4Ng=;
	h=To:Subject:From:Message-Id:Date; b=aAjCGjQFzppOHn4f2ir2SS4NuGzaMlzty0kG4CQ7Z19K8r9gIw63EZiz412+jxx/aRDTPysNIapZXK6fUpbFTqc8s56158twfmzn4K/diZsJ28m8mt88RmlqlcFRKKwEHij802tW+5BibMtWAU42emdznMpo6tT5Kiymi+0+QAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7zDA/ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7zDA/ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9B9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783927113;
	bh=GwnalQ++wjL2Yreltj6plQG+KY0zTBDjkhondUry4Ng=;
	h=To:Subject:From:Date:From;
	b=X7zDA/tsAQJJqIUob5h9jN9XVAr6yn3X+0A3+SwFctKNKjRvscOIUktY2t4xLIKM9
	 fvq+gkvKr12iLBIfuX5vvnQ1J/VDRjeYnTqgqSEbJzzQw/JHoyE8NZMJ10KivFE7mH
	 bogGc/MEDEIN72Mqpz02V6NCO+FGep3IMwI2dJIjUkgd37FD4ezMgnypH6Ch6BDLVg
	 DjZpdEm4n+NbEh1nVOx5Z1z1teISURl7Za/tGHqONYwJhwBFSY7Yyvbye/ls6iP3jo
	 9djo8OWx3nlhGsnTJq0jF9OSOubXqNByXhuWMHR2PrIyhmEu5/I/1acG1GFBRVO1QM
	 BqBmlqEe79HBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E25C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392711368.10102.11494916607583139462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5db8e8f338df5bad45ab36ee8d61f5e9056e3bae8f9580a7a3c0d2f2307dba
Date: Mon, 13 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783927113
