Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2096D27E7DD
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750288794; cv=none; b=YUQD8CAHXEhTjEJHKs8qFsukrr6ZRM4TVwwnaYN1PlHWubTvsMVIS3xm9iGSR8B2NOM7i6pHsasUT5EO6npxpT4ojs5poNVa3g9I5BZOM7wq9s2gSOmMNX0eZOYn1eQf5c13yteESn1CceB6pljXhf2pfE+K2/UsZV0NGbItZlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750288794; c=relaxed/simple;
	bh=vAPhiSu5xRod9YKCGMBUMyx4TtYg+XGADPVY4oMy+7w=;
	h=To:Subject:From:Message-Id:Date; b=Yl5PkwISxAt8OLJOgZ8uAepJ+Bu8NTWVwLVbdQPqPteWAfye4N/I4yb29TTxc+OpAlzrqDR53cSXBRPN0JJHmSo8fXVC1Y7EcrUCr0fthNy0vB9F+ppxak2EVg7d5uahKuzFdJckPug1LA+Lv28mT9/mUAqUZtenzflt2ulqhK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzwiV2xF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzwiV2xF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFC0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750288793;
	bh=vAPhiSu5xRod9YKCGMBUMyx4TtYg+XGADPVY4oMy+7w=;
	h=To:Subject:From:Date:From;
	b=SzwiV2xFf+4qJ++dX4k2qf/MpjQ5JO+PkYLSrYfw5XbzAZ3RqosecRWpUpzSYk2Gs
	 NzHQTagEveP3OoTsTAviwUEEGvZNxcN74QxDlrfDr9dtZglesH0i9/aSBSo0Z8FgfZ
	 JrhhRFV9Pfmq6FetLQzbUJ01IIPEJj+6oILhXTDXF9O0Rl5A/yI4gYG6TgsdEdF5UI
	 3ghphsQ+dM83LmUzXf6dxiqq3hXUxVBZG+1tv5wmF/K5+oj1RbknZ1Z5au6fGZwmVS
	 /wZwLRIlWRRgr/5c7qjPuggt9zFH9Gp6paIhpB6Ro8yczRUCdxYh9ukFSUB8LgtNYo
	 wvKwy/XTsVehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A187C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028879359.26921.9401463649131917064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fbe0a128332bb2a9650d76631777a60b2e1fd2808e851dd796a3953b586e8f
Date: Wed, 18 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750288793
