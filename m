Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21148188CC6
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731060954; cv=none; b=IzPNBBXotjg1Xcddj/b0LezJeFBt3ygeIKNvGy0B1BlShBijgiHYB8mgg9TWggBgRW9eA+wz4DDnjEgcDZlvmOz8cs/Cm3WsdUq1cwp0yQBDxpgS9jugCAvSbfyskH0U4/YQmeqa8yMqDTwPdv+4Z9Cuhxp5iBZG68DIUPG2Va8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731060954; c=relaxed/simple;
	bh=mlrqDj9PelUPjCdPyKHxRQghWI5OPDkoVXSTn9MDI4o=;
	h=To:Subject:From:Message-Id:Date; b=uEoEyZ67OdFs12iN7yxQr9UulHYL4iBoP56Q4p15KEZzfM6VJHgoA6y3Lkz2X4o2fdWKw9y++/hVm4EYHNfUJWltw+HzrTUlsMCwupDixHnq30EhCL+P8FEmSyvTTPYVChyi9guJfpsSfFJYAjcl7SEalBTvS2xtdFswHlJNj6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgg6zcbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgg6zcbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF048C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731060953;
	bh=mlrqDj9PelUPjCdPyKHxRQghWI5OPDkoVXSTn9MDI4o=;
	h=To:Subject:From:Date:From;
	b=mgg6zcbUK22l4vTNkSe1gCW2n7pJUbc66cqYLiqGVcW/JmFZbwtbNTFxv4izNYrNI
	 G/fb84iF2ImOx9CU7fOgWixTYnrUDYWAmINPLPo1VATrKt92dmgpgNZzO85WU8sIxx
	 QHT3yEJGutABhdzUkL+fk4PpIgummS/LVywvEeA+rvxUOfoiWl/Skx6Ykl/2W2fbKd
	 m0rL27nGiFVuubXb7QJkm9qXl1edYN4cp0+tJAoK5W746/4Amq/11zD1N+fu83FeEm
	 UZNcxShdLV0BqeEHo9RcUda6aUUe4o77uUHpahNqsDpbHfI8/Bph/paNqzX6ubyLK0
	 PW09Tis3eJdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4DD5E14E
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106095358.28028.15672011701876465133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85192db88529663f0aaefa9799685bd519493c5fe1ed70430ff02683cacbbd9
Date: Fri, 08 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731060953
