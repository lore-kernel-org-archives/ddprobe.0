Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB8525760
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745540993; cv=none; b=tMC/Wd1DS9uFLjJR88xV76DGV4dCZGbRc2oLCVC8UaZwg+8zdZATM60bGKTqXqZf1phVBiB6YY6zFy4zOevULA++HN2cZOX6jcNuc/JJq5xP9lFBEPkUTUNJtCPeciBi4oL64ezDDaUibJzfPA8IgLBhdSo3hsw3LSFukddHR98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745540993; c=relaxed/simple;
	bh=Sxt8Ke69lulYWB9yibDIzz6dKYntgvE8Rg2Q8RcW6dI=;
	h=To:Subject:From:Message-Id:Date; b=SZSBCK0YBjDlc0aq1GQ7rVI/hbGYTVWc0dIXX2CA4sUqdU+FuKQvI1VJ+FlZatiwkG6O4Q3Ttj/CV9+DuvuUtrxTerDZnqLi0lt81p1HDqooYvo9KRvjazoSM7qQ65J3oHVDLsbHUw42PAwVzDpZvx/vmVMvanc/M/h9SolcMZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8GVMqEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8GVMqEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECF4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745540993;
	bh=Sxt8Ke69lulYWB9yibDIzz6dKYntgvE8Rg2Q8RcW6dI=;
	h=To:Subject:From:Date:From;
	b=E8GVMqELp6tyATXcFphddLi2MaO/O43Fu6uAJTTF4eBztOsSei5g1zVGkNTcEk0Hp
	 aWmhxq4rVLcFai/QnwAT8uYz9JGu6bwW3jNiicdFNnRSQErN5MZFabDR5Rwnps97Bp
	 MBna4YIPqWDr4XBYNzaptbeWgTWfMEZpMa0jgOBir6CVZaQY+iBm0/ptInZmX6OL9s
	 9SOTKiYQlmD2y/5TpN8bkWiF+95ZbN73FuYz021SPTJf4sq6jZ6SNyd2pan0Vfs2wE
	 wZmlB1iiQh+sQoVbQyaM1MIs+Kqa3qRIxpZvmWefLurOcseZIk3MbiQmZIkvEwlefV
	 KDFldMJ5fnb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F043C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554099357.18858.8107548805536231787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72818236f88c26ef73b2d08dca3e2bae7d7b67376fcea93fc225bd7cefe55d03
Date: Fri, 25 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745540993
