Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1453E30DD31
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769403234; cv=none; b=frIwEPkHj+8V2e8viBl7wIooQbb52ZOT16BIpN/cF4ET5QISAKDdJAYiYInLEnXs9L7nwaP62WrfkRln9C6zgArDq/X68beAgm9WPUa1gxJ7p5+YOzrMbbP7Gx9mv3rAtWK8fC21Zejkdw8QrbM5mlDD0K1epfrOiJa9Dh+vG9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769403234; c=relaxed/simple;
	bh=548JANP+atGa5rCkDeE427BGMhzmShZPxw10a0KrHlo=;
	h=To:Subject:From:Message-Id:Date; b=X2NxPJPQ1xhTC2QMGXZwRytPwTK7o2zG/XPZ0ATMn6tnysGBC3T49i05IygRdC/I/tLVYR306oGUujP2IAaVA/uTFwwLlR+ZhbJz2TsgWNV7wY4ugbHIPtPzaG3/KJ0CJ+mL9KHjSEo46SgLekgiYlCTJZMkcIogDexM3hWCE/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd0Nny7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd0Nny7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E34C19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769403233;
	bh=548JANP+atGa5rCkDeE427BGMhzmShZPxw10a0KrHlo=;
	h=To:Subject:From:Date:From;
	b=Fd0Nny7iGLlN+0R8wgVn38i8JB/UbfxlK4nvUQzpMGSwAbOYLbY5OWI/Cf2ZdQJJT
	 ovgaqsmhIYWRhvwEwfwKohWgfKw+VLgTnwVY3+0gOnoU85NHneKmBCO/n2aM86UN2c
	 /cg7juzFSeIzO9aD/Zpzc56w3bflRGfgVxbJAXp7Va5yO691g2iwqNIcAL8Z4EeqpA
	 j6Pd2I7TitR85TV1QfOXyxBjlOAdhbQxaYGTlHqSkZS615KcQMrFafZ7oatKKcCXVT
	 BA3P1E77LBhe2x4xVFbeyEf8aqtGR+eLUJHO0e5LAbPk+N/T5SH5aOC/P0SJLeL7qP
	 QUlBzGMDC6ZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFAC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940323357.1454.11835375808848247128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7129f41fb51a2a8768aa773a4d7dab642d27aa24c6c44ee4a2a16b05ef9dc2
Date: Mon, 26 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769403233
