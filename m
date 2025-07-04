Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4E126A088
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612394; cv=none; b=gBA+oG8H0N4YlBwgeIHqp807g0qqDXUxchhM9spuzvMgO9Ru9KR9unH88AZJwaL04bivXVL1lerVJk32E+iIjyNbKIVb/o7OCpzYD/i/lqJuh34IVWWMtiIw6r2GhvaxojQZFfqikiBZwpJ/ZqheSJR9dOYjQFsLTjSJGx+/Uoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612394; c=relaxed/simple;
	bh=Gi+iqiwo3eLiS0Dku3uJ0c4xGcV7ej/Gti3hAG5Auac=;
	h=To:Subject:From:Message-Id:Date; b=oAwd/975GlRNGwZmuz/q3zWDSkIlU7npsKwuvjIjwyk+NxYERww8Rtq9Z9s4xCs03amNbvWIKgfhRrFaKHqC885EdcvqO0I4VANhnBN2h9zYtso5TbvfVzOZBlfZdFk/yzKCZA4m1qfYMsFqzFmwT80GRoaGzbR35jUJ5C2kFx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfDfILLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfDfILLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F438C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751612393;
	bh=Gi+iqiwo3eLiS0Dku3uJ0c4xGcV7ej/Gti3hAG5Auac=;
	h=To:Subject:From:Date:From;
	b=KfDfILLGe4VAUf7cfig5LP08tTnm61oHRQZJrv77uFIyygm1UNDj2QoeOrvzHJOll
	 biw8fOSBYVq4omMRiqHkJszj0h5xhJVG4qkLP1z/EkksNMLbdjuyx26vcYPVrWwIak
	 gRdJ+XCwkstx92sW3Ft3lv+TbwmORDVp1rP714s2bTj0lS39jCF22idmnPObXJI8Mj
	 jdAg8vEMleEDd+xOvyv0BIQuZbeqB8OT6jkkwhmgE7K3mJuGo2jflmVftG7tb6r8et
	 ZzCfuqFVqewdwe4Dwnc+T62DZujS1EJWdk0O7cOjGcCgIhd302oyL9wd+y47aaO+dQ
	 CyJVEyaPHGv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDF4C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161239357.17016.18011095881931040177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7236f08bbf9bca84a2d0330d71afa357ca1b0b3159ac051804f7bb8edca4095e
Date: Fri, 04 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751612393
