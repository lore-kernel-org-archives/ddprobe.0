Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF0D1946C3
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719495863; cv=none; b=O/PytQFReCORlC/Jt8GTfN1/8st1ZhuCSMmGs5WuJzwRjZdbKjS6byMooPl+qBtcpwnkDsry+J5VtxuQL2guVRfb+cbqObvne2IH6TU6vU1zYhij9Z6DOA9ab5r6DvDFv+8rWqnIioLA+VPS/HpmxJ6blNo3SUOS9a3CW5AU8uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719495863; c=relaxed/simple;
	bh=2mRTA9X8jwdR7KG/NGk1qcjow2vrVV532XgKptkJCn4=;
	h=To:Subject:From:Message-Id:Date; b=p4RaO47r01GgVua1VUXsdhoZwAKWvqQoCKqpG1UD+FB9TJNYT4S+zOozk86Fz2AMvJDiTmcOSUIsES6LKD+KAmSX3MyyE3riE09qRxUQBFYl14C2K3ed7kgSQIghDbtv4rKJ4ys/UHy7Pa8IHPZqJSjGCRnEOJkv91T7gOpcrf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdL++p2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdL++p2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E0CC32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719495862;
	bh=2mRTA9X8jwdR7KG/NGk1qcjow2vrVV532XgKptkJCn4=;
	h=To:Subject:From:Date:From;
	b=BdL++p2NEAy8DZ5837C7u6E/xD8qB2J/OOC+7UW3g7x74fDkv3f5wfucUlxy1Z1wo
	 ZUXWSB3NE9ixssCrRr94k/cr+05JBVeRbDI+5Af85oz5mQOKdjITra3Ad7yQeGx+/w
	 pfYZimw4QBoD/iDQZ2MCD6sneSRss/5c/3RCsMYHWWtRUTBQWxJyWj2A4caeG/T3NJ
	 CIQbdrlcJeZKTYEMxnw87RRNzQnRRrfFEC3EWFTn70EhDdIY+qoVaQ7cX7b50bjauJ
	 rXXwjqUM1mEP8M+8l4nYWmtVB9PsuY5QtZBLa2LVi1c03DYh75CdzYjxo6YUxM+LKL
	 0TIXyHWW2BzuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C506CC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949586279.9146.13526422228365247246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9218c046b4fac0c1adb0c86ff32bac43c093d3485598c1207faa6398f03245
Date: Thu, 27 Jun 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719495862
