Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358A1383305
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789022434; cv=none; b=qrqMzDwQ+paNgMqeCN/2kMFDjTcIJj/+rrY3/8CIdLzZCkWXxq6wNXnbQ7+rsar1a0wFtxxwAWHtV3ms7Mjf3pCCIuJkP9byDNwocdVWOg0FD+vpaE37lahYbH8Un0Mn9kwZ9VJ8kwuqG3RMhWvyRPTqEFy/rNkYoaIR40Yd+Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789022434; c=relaxed/simple;
	bh=U+38Y6VEkMJSt7ionGTZHsdeGmH3sa1UVkjPr5OxwPY=;
	h=To:Subject:From:Message-Id:Date; b=NzU3V/rvGVrueUb87ifDLoraswF3XhWJf1TlzeJ7521NHf2ePGtaddLG+YqIwep4wX5JMNdoJTwa65DzH5dKlGv0xnHP81gtAXGP/ArSTj1nvuzS7cC/4NFmZJp2ifiUiwf2oe+axZLdvOVRiv1EzkQ/BlhiYLCkZqYx2gQhg9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3+gkx9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3+gkx9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D5EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789022433;
	bh=U+38Y6VEkMJSt7ionGTZHsdeGmH3sa1UVkjPr5OxwPY=;
	h=To:Subject:From:Date:From;
	b=A3+gkx9kGqejCYaBfxY1EXhvv5NeuXexzGMxYrPT90QWbJmsFQnAQLqQFfTFuoe3X
	 Rhm3yfJevIxYi/Fzr1TfG+IHJYxRFZ7aJiEJERBak1XKWtKRvHbkU+ndHJqd8bG5fH
	 7Csx9B+q5lJT0sjz1x/j8h+Dcao9jsIwNgxnP3LHhl47bU7IZ4iOfxLc5XvqYr8vpY
	 Pug3gI3g9mpq2ri7OkZKn2YDWge5J3YFieN77aQOdP+hld7CCpuKBCHl1F6JVJ+HLA
	 BvuyksutQSjIzhKfxTAJRY3BGZ+xzDGG8Hw9ewVKsrydURmQcOsBBnOumO097sXyln
	 +CtPIFDa6fwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ADBC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902243373.21824.11318470461341267274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84a5a5346113d014d2ec2513e0da85d4f8f998ce949657fb370b71ecd3324ad
Date: Thu, 10 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789022433
