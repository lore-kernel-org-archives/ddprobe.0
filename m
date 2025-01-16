Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA22113B58C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737066353; cv=none; b=tmvcmDyKzEF3yRLkhC0xDHK9jb8U/pMf0c+mLVRloJ8oHcFsxQOYgg5VkcUAM/2zeqo1Wfg4IjT6WBGX49CTRUwsa/pgI7flDIXMtbRJJWIRQqwZzuIuM+23FuKS8m03Wql1+PyQqPwj9DUqcR3CfxcrsBdj63PSK8G27cFsXFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737066353; c=relaxed/simple;
	bh=Vrxh/8DEZ1w5u1cQfHKjjamG5WEM8YecnzOC/7ECB8k=;
	h=To:Subject:From:Message-Id:Date; b=k/+B7EJhmbZC7cnMsbhFfWKE6CsydL0ARvXaObhImVWwoEzEaFdelLYZpt/QXyuVtKpDwTI/xROx1LtMyYWdxbNuNikoggytzjrNuG5ywh/2kWQhOK+JBYVIwhld7MABIkq+kl5Lr2ecWJKWVEpbNnzHNpiG2jZUNgRRjwbpNlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozgWm2NS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozgWm2NS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A714DC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737066353;
	bh=Vrxh/8DEZ1w5u1cQfHKjjamG5WEM8YecnzOC/7ECB8k=;
	h=To:Subject:From:Date:From;
	b=ozgWm2NSFI14DWFqJN4Fw4XNaSaBWOdBZj9PgEN2xnccIC56gZXqdS7S/RVUajzQv
	 PrXUb5GyPngu5+H3X0wm2WTHEK58393NnRqcZC4wAMB3Rbf/ycc8TE3lFBnUbybrEp
	 EIqz/Fd3J5UNyU2+fYXv6O6MqzBImgg27a4ms7wFbS/sj5NTER8Cw9BgsIGO4Vm93K
	 bDmG+DXm7hrspPCyJfMUCqO8nOal6YarJchcKIk4de66/ewBJWOyzHZkXFAx5xdFrM
	 8HLh/nD/vNs7AXPC1j9wOsXvYZef2CUUioZ2FDUYxWUIYWDEZpChM/ECSoSkgazx8u
	 fcG4blUJNz2gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310CC02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706635359.1829.13721818238908147579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a3a9a65b0b06b9b2b9307541e11f1e36b6abe2f5a608ddcec5d6f1f69f6a83
Date: Thu, 16 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737066353
