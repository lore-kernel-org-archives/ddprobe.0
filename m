Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3734E36B076
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781208394; cv=none; b=T4GrLvA2Ui7xYzIqZlS3JcsV+ZSVuaQA0mXWlEzxmER14C8oxTWGlCOvC49GwG76TmWdt9m27sJzkSTK18A/SLsB03U3VmTW9u6F3CeYF94ZVj0SyR/5YHlYAWP612leKIoPH0VMw/Ids0tay3thMeJXt4VbC1MxVcEULq06fb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781208394; c=relaxed/simple;
	bh=zYeUAYU2hf5NwLGyEZnhuW93q89CRYCiRi/gCux8Ugk=;
	h=To:Subject:From:Message-Id:Date; b=jHynxLx50ubYIKXDGtY69a8Vpa2NTWoWTpl2gvV9NKwEuyEhmFcksPeTMR55DFZzGKvyt1r7VaZjJDr9YRPEDF8ltDP3K/Z+IaTIXligTP0py8NV0PUmIzGuFojNQq0zs6fV5z1qWRYjqMI+Zhd+l5ukGd4fmKX/ngyMvP23/ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odW4cs/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odW4cs/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7724C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781208393;
	bh=zYeUAYU2hf5NwLGyEZnhuW93q89CRYCiRi/gCux8Ugk=;
	h=To:Subject:From:Date:From;
	b=odW4cs/k8uLVbjgs9Pd1QpHScfybtYodROS7KXX2WxqcjLlu016I61HG8hrf2Zf0D
	 czsZYQf1WiEYkmLVbY90nt/AcHhiqqHmUjDY4VFC6r8eYnHDIcEr5RhBXcWIDHiNUx
	 CzB+WLOLIcTa/6e6g0oKo9o13n5lEFh4JVG7MTAdtCLHI3x7KiLjmmxkbjX/CnGp8U
	 0SdMd8IzIhDYu0wGSotPlLgFPRclc+5L4+FKVpLqV5NHJvamym8kChe2E8feBfWn2n
	 cIej9oIswUFUls+vDAYToIi29wNOME4ZSH/VjfEJmPdFSZOxbtKyQXpuUqejl837Mq
	 Hqt3hq6mchYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEFBCD98D5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120839375.20790.6247749199339824163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d85ab20a08fdede01fc81a332f245568c8dc5ec7538a629a06ec56482061e2
Date: Thu, 11 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781208393
