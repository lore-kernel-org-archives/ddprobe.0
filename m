Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3053718AFD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769273034; cv=none; b=V0ieeiJQyq/zFPmtNforQL7UlS7sZaDqOGOrrQjnfRJhBQ8SkloAL9MglQuYPJjtmnnUa/ZmIBOptlOAFCt7bIiuPnfwyeUihHtF4gTQqeGN1JkA5xIn/kTiBiiue/EfUPbg8I3Y5Q5X0GpdTQoAGItLMMYG1+/yDXpjLd10G1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769273034; c=relaxed/simple;
	bh=z45RUK09uhbLCiTTbnF3+7os2qKJF+hYFJgMnNsPHTw=;
	h=To:Subject:From:Message-Id:Date; b=Rf6z641sytTd5qqhbDelTkURBtPufa9zqb29ME1AhvP91NyMlNas0xzmr5gkU1te8qdmzm21iKn0HPCnqG7/Z+YNShlftu9dkejikQV+GZayXeZ5/ZEUIAS6szs5f3lQht6VpRchy566RAc6o76lth9u5SMqIuIKT+DBLC2WPk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbwhEVjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbwhEVjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8518C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769273033;
	bh=z45RUK09uhbLCiTTbnF3+7os2qKJF+hYFJgMnNsPHTw=;
	h=To:Subject:From:Date:From;
	b=fbwhEVjQ3JgMFcXqrbsJa7LNTLdPpJzubnsZiH95HB31J5d80LI4uGTcb4WUWoWlA
	 YZV9t6iG71NmhgKdxYDj32oLDiIT8qmdR/gwSuYrFqwhmBwLnbUWuV09JTHUblpYPP
	 SEaZAem/2A7GM+31lQ9edIRJyYz7K3CkvtQZ8zmstBKmK4xS4E3mFv3iukCcQXKW9B
	 DfnHk5gyxKmi/FM1wYPLoaB51SoZAsufWkCnoxtsyxXlFwh/C7AIyU1Ii8phDjxxFF
	 OO5YJOG2CMC6flnPucP91qE2X3oZlwdZ75a/HN/28I70PLvbjOLtMPBGcaKNgh0M+G
	 BrhkLKdOac8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C75D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927303358.31027.17113370000017211295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd8571062946b60a30bf081d1b8aa43b5d5da941d820677f33bdb53068f32f1
Date: Sat, 24 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769273033
