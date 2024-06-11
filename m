Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708DE7711C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718144903; cv=none; b=BOe1JTobt59CUVCbzjskaw3OvorwBGFS1eo1mXBkecjVCWP1MUsqYHfJRB5h64VVeehO1nZIOj1u1lDt2Px70M0mNgDUno0+SFdZwyOHZ2ufbaHMxB+dvpUxpfpWKRbknlFhpZNwbbu9a3deLdiGOaadeQKA1B8J00rCeT5WhU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718144903; c=relaxed/simple;
	bh=jwP8IFsGzr8AeT/QywUu3bupKredgl0rI/SvM0pYBxc=;
	h=To:Subject:From:Message-Id:Date; b=HNX3yAWqbngDFOPGCgjsuwL565OJ8wPAkdEye5f4GfYdE9kk346GjILziKEeF3JKQLllSxcPBghbm9mVD8ZBgpE5uKoRUvZjOks0+8jXUpm64HI/cV0Y1YvizOCGhL/X+0YJ9hDZfKTrVwWETAg9jqGXla9njfTsjEAccEyp/Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO0TBG43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO0TBG43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E52C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718144902;
	bh=jwP8IFsGzr8AeT/QywUu3bupKredgl0rI/SvM0pYBxc=;
	h=To:Subject:From:Date:From;
	b=iO0TBG43JAaLiJFuS7jyDdmqUrsR9y1r/gHgVesuADkRofcDW3Fo1IXS6dVsQOlV6
	 IY/hKu5GePzAyxE/Kiq1EtA5xbnAOK09/Ilr5nfqpU/NsvlvGldpfP+qx5VMrlQTo8
	 wW8F5P4IQiAdhyJqbBzkhMj82RuGafDOFzOUmL8su6T0XBf4BLWDAY2G/0gDMRzgLB
	 9cMwBzybegayWwlxJcPJ/R2lWT+DK3CswJdeU8dZqXQNsy3vrFNGqlDqkfVq0gkJIh
	 hB7C2vlNZZJniC3J7qW0euC6uakMCfhV362+yXCz0/wFtDBHYpEYdyLLIAZ4JUfrCt
	 TMZTjb9ESsaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B5C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814490279.15097.10949278348550978766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7e0c741f52c73f21f0f29a185b3147ba0e85b31852a54b0145b5eb7b1dc893
Date: Tue, 11 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718144902
