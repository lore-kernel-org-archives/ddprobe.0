Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175691CD2C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757983794; cv=none; b=WRNyRw/yx+MYHoz85kyS15rFWSYaVCr0wmjpWtjACUETghVYJp0kJ4LdJOOj18/4g/QYWlBPhTjPc9rsOz7QSjDLm+kJKKv+xzEctDrrlkEjQ9l11AMCM5ngUcmgq5xWFbgiXnxbKZe4yks6Mu79wfMlMXykkGAlWWfDeHM9ZUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757983794; c=relaxed/simple;
	bh=oGmczEtSrbYIXQ7R4kFOBSvEVsVTqNQ7kJkQ064NBKk=;
	h=To:Subject:From:Message-Id:Date; b=Gi2pmC/c0885eI4y6w/pLP7wrgps2a5Klkur7B5GvNbaHPDAtRdH6oJDoZHStgA6EN+YoCefm0+zVoWE9Qzve18ousfx4Qj6WzcavjOZLA62iY2ZCgpXX+QoA5VAfGzu0n+v74f6EIHZbzqTTaLheoqnY6c182VtgPmXH6jpAdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYvljck8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYvljck8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757983793;
	bh=oGmczEtSrbYIXQ7R4kFOBSvEVsVTqNQ7kJkQ064NBKk=;
	h=To:Subject:From:Date:From;
	b=GYvljck8nM4NcfwCOHioF7ABNCrgihazhFhJzUEk53qXQjfQpV7owgtzOurgaIZV5
	 QCfQEcASoVqfz+a6I+D8/BkV/tHB8adnZ367RJWI+1lTp1VDkvT5mFEFIzUC67R6vo
	 FZZgWuYb2gDZNIUxa95JtJc6+CNV8vm3GOb3END/lteFEKus2SJ3a0bzM54zUzFIRC
	 ekAeZRHU6gHj1HxNqx6KvCALO/dPVeCZwlQl0w35CQC2fdxikTWUoO5Ey2uogPgWBA
	 rBvht3uYQ7iMK5jIGhPTx+AZyJQ6VbK69acMOr0rxjL8TRw7/S38KQKVZycNZGtJYu
	 B9bjwBPaeAcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7DCAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798379357.25304.10244335451518654260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8bbcebcc950907fcbf73984f090b6dce4fc6a092bdfac7a2060693781780a9
Date: Tue, 16 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757983793
