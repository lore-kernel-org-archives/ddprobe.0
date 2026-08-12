Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF9539DBFA
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786520435; cv=none; b=F6zYyB3xhjai0Qm2V8oOfqRPHBQLPEHXyTP0m2dU7x5FW+tmg4H0S3t+SStp33gabdtUHXwn9VN+ylKUM+CsQZ85Mwisg1NjtLLHyWomCOP97z5gfT8osVzWWU3BheqrdHP/w2eDdo2J8fI8P0QpM99YjEcKJgv23ZyA0w4iw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786520435; c=relaxed/simple;
	bh=boV5hgLXAI4NDyZv0Txsjr+BkQuGcq8/JOcib3M0NSY=;
	h=To:Subject:From:Message-Id:Date; b=HQGm7NRXYt4s/Lq7ibD/04xVE0q2wmRQYM0CwCKjUh+an0+VFjXyPvdxDEWMh9hSNfUdAW4wCdLufz9sstAlkmAuF4UQPMPh01IrCw7MJ8ygN0fcWhLPcUOiUb5ihZkcYcu6I295S5JuFsyrZQla+DLvO23N8NYV9vCYMsDOoMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKXTO0CG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKXTO0CG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE025C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786520433;
	bh=boV5hgLXAI4NDyZv0Txsjr+BkQuGcq8/JOcib3M0NSY=;
	h=To:Subject:From:Date:From;
	b=MKXTO0CGVEcFvc1H+B6DsqAkrIIXxHgjvCQR+abBP0k6dsJwLz5EcvREhfr6+iCuM
	 kjVGL9Qrc7CJ6lad5rQchAVY2wu/wTPO6Q9WpM1ioCYAjzVZba41KEgBacv75SVYRR
	 vdh49bjHhJwM87f1Al9mpeUUCwZ/nNlusgbHA+YrQoLSgWa7zJvvmP8qe/CQh/vW5N
	 RaIPy6+/PplgnqFYtB0U7mFSg2jAd3q3QWQ9UgUc0wIuHChoVXhtEs934OEgQQW4F3
	 PFAQ84Qri6PKrffeq6OXxMWyVLXfCDT3mDgn5fjZJV4k2isfre977vEBHekI8DdJ3J
	 fnjZ+UwvbmHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD9C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652043369.16392.6122190160588372353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fe27f8d27fbf5ff1a4f069308572a54a83c2b1705fe069d367d0909ce4d724
Date: Wed, 12 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786520433
