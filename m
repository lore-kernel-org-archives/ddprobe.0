Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768822F23
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720073723; cv=none; b=kcpoUqgy3HaJPLRv+giOPtuEi1oRglJJwLdWQw1VH7hKfk0I+Xps2HlQrQZT6Jvh7/KegSMYa5es3hkURPoYFZffp9fCSeHUKDFqAMwaQQaCiR1MokKh5mdhyBpeiz45gLV40taj3mbEvpBNm4/dMvRCpNuV1TPnq2pWRoIUzl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720073723; c=relaxed/simple;
	bh=Tuij/K16v03TPQZzRWf79PguWzGll5YqqTxsX6qP0hk=;
	h=To:Subject:From:Message-Id:Date; b=AleaWk1OzmJLGlRd4PGV1zVo/oQFpXXnNl4yJBMR8lxrdp8xDDApIiXOjGV4IN7y8krr+URLnsuN5gbPmE8IZk5BijI5me6BfhRbfnVu3bJ7yOOQpt2AZKBF9GND7+BDKPkArhBw111+x0aXC73qVeSrck5hyQ9V+KqI6QkW6Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfwMaZjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfwMaZjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1222C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720073722;
	bh=Tuij/K16v03TPQZzRWf79PguWzGll5YqqTxsX6qP0hk=;
	h=To:Subject:From:Date:From;
	b=hfwMaZjzWlUaQNUq6VpF2KxYxHTZv3Uai9v1sLkJU+1+xS5NRT9JdUAwdF6j7izOt
	 ZwgqvqCWlTVa7qnWn/3SVrXLmrZAdDM99tDJOJ0FEhjzNGhxbJuybpi3pe99rO0rwL
	 dPGIXY7U4jhOpAvL6VbPJEQETs2jXVFgdkuRI7d0Nzd7fIk0u+xKor8OWS5zAnlH7Q
	 y4yM7tuE757QKhHJnIp6RR70yvVCkrTE+RP5EuuKCbHS2mv55w0Uk7iOhD8pOz17On
	 bpcSz0xyFaj7czKdiC5i989X6eOJ6S9VdO60QnUnyJ5+qAJEeV32u9YejbwjmaKUIm
	 BP8cVjax4Tn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7725C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007372280.30342.6690491100276477336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd38935816368573e4b213a8e5789f7eb4679a0a4833e642eb0cfa76375529c1
Date: Thu, 04 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720073722
