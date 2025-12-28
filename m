Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B44B28CF5E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766961834; cv=none; b=fG+ZTp00RKvHzISi43ImhqccB8HTnZxbMBB2/mjA+n7k7cApKA3YGDotlhM5CnxjYUxFqnbpRDkl4Ql7YppHPwPQiYPt/G65M8PW/GZRDMuyvZXVR2UWun/krLB5/+ehheY0F3ghVnd/lYAp843KzlQqTERkDtD/ONxVZngL+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766961834; c=relaxed/simple;
	bh=c8m8XoNMmIDv2agQ7LdFZ3i/1/BGoZnWSpfXXujcFs4=;
	h=To:Subject:From:Message-Id:Date; b=EGu/6nSJ2y1FUvASwPkNdyTFbUyjSJFjH6fqbfrQ2t2/NKGPF0tnnY5WdBhoS5Ekl5gRq9YqoXCkEQUDWbJeLawoxs5kB7BSGSuI/dHZvRJlD02Em2dgKTJ20PXlunZgQaTmvi534bhqllhPDC6EI/5V/76nmrBG+7S2IEwPEII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMt1Tev5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMt1Tev5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766961833;
	bh=c8m8XoNMmIDv2agQ7LdFZ3i/1/BGoZnWSpfXXujcFs4=;
	h=To:Subject:From:Date:From;
	b=DMt1Tev5YMv2jQ8QCvPHc2vKaJPNxvW/IFZwWtH6qOe0feBHEAZbOGmxEvkQUurLs
	 QKTKl8lyUIf3WIey0IGJNtbRZN1Vk8SWJUg5CDmLba5NkMYWnrwYW51dLjWxXomKBD
	 I4OrvmxeJV1fcVLr32ERxrKCa9YPlw57OYvW9m7hIIMWh6Xuf+e/MefZT80D1pBzbU
	 GyhCZIwEKJJTuxWBfkGspFUFum/r0ncrzgxbgB0FztR5eMmPQ0SnR0LpwsIG9lZZJ1
	 GA6MkUYmvkwxQjs4HyKh+sU7kYO80HNhPB8z0BxjAhYrIyHcEuK538meSlfLcpOvJ8
	 Oghxn5zAu+PjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95366D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696183360.29592.15949025456433996397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62e68d91aa6b0bd2e62c0672ff9fe0da4e27d0e5ca170fb78f1de731fb69bd1
Date: Sun, 28 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766961833
