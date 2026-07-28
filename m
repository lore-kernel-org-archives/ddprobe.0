Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B4141F368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785262834; cv=none; b=s7cOKHN+sAUaLBX/cXveL0REBrLwKHgjHjxLNi2jf49XGpe56l1+fJ5KQBTMXnNLUy9NwTp/3AQd6fu5QkXo4CVju6Y2Zn+PYKvMSeMWwpG0VjQ/Q3c0szzD1Q6b3SAkPHDTy+TDh5NF/lHQ1rgQtiLR2drNyQnQk/d9QnkI7TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785262834; c=relaxed/simple;
	bh=iA58YFwk/9xGCUABXpMXwX7SjhgbXrpxDZhALTWPYzE=;
	h=To:Subject:From:Message-Id:Date; b=R00XisZR1Y/8+rRILiwF6lo/QTMVKySsvxy+zFmDOq7ai+DnAvsibEHRkABWZzOhl84yL5XAvDepNRtvVzcxX89QoTgm35CNlEIl783lVHCi+re2AzHW+SZ3JdPDEc2zCsDQ5CtbsIAPW2oxnfm/78A3KQCeKstOW5knY2/W+84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeJceHGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeJceHGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D377DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785262833;
	bh=iA58YFwk/9xGCUABXpMXwX7SjhgbXrpxDZhALTWPYzE=;
	h=To:Subject:From:Date:From;
	b=VeJceHGQvmv9QYSwOAyEZCrvOLuUSGK02QIoqMk+6P5F1N1RM+JPX3gvV4J7HePf6
	 bSr+Y9BVzKRhik6BCVZKtK03JCtt/OaxhtEx2qA8T4jNESVHulNuYAaoWMUytSUdH/
	 R671lC4wNw0P97AW9EOPoZcrFdS9dmd3OQnx3SChT2qvUbTDIfOUtjZ4fLANEXw+8o
	 UquMNzejz0qeVMMuxWY41e7teSuo+mCmHq27AKx2Q3wGGW5+QAeKvHZ1KajA+GBw/k
	 Ae0c7yTCIiFxSW4FAhUQIHIjBA237qEkBlVQUyoTOXrTK3hwSktM+lwhBX5jsxkmqJ
	 qenUq3qegneag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEC3C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526283370.29975.6014247630131521577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5225d93edcd6584b5ab202ff29eaefbd333d9a3734d13f58e64cc056e6d5fa
Date: Tue, 28 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785262833
