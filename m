Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357011F3BAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751626794; cv=none; b=tUS169m5Phm8LwOfQpNhw9E6h0PMmJXF/0UyYk6bE514rl2XLl8p8WnRieXl0GvgGhHQaNSXllb2fo3/IT3L0pI2XFWDXHkvIxZ9F7wm1nRueezR17/j47/mv6k+Bm/d8qAxIKT3in+izntpCxknBVDgpe1V5CkdxDcx5F3g8GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751626794; c=relaxed/simple;
	bh=yMwta2gcGGzkrVhRjv/k5zzwZwnFKwx/cCPRzTL9O6U=;
	h=To:Subject:From:Message-Id:Date; b=ZaxzilgUwVD8d8r4ugVgnOivgQrzqELomERB2ggKEw9OVSYBgduj+iXYIGbP08LeHXoInPQeuVDUy5gILqBuB1cK0U8w5SYBhu49e9RhNS1GA8D4TcaE3pGc/Ci9TbNV4Wk5OO2wA4b+vXnNTIJ8q1QraYIV9lP662TSjpBsIJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJFHH70F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJFHH70F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD70C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751626793;
	bh=yMwta2gcGGzkrVhRjv/k5zzwZwnFKwx/cCPRzTL9O6U=;
	h=To:Subject:From:Date:From;
	b=IJFHH70FfgGbgXhB44XgkLFsLL+Ltj6hHEGrfFDe5xbzBtSPGbYr64KzvfBvBHDiK
	 3NvM0RMhHVMSUgmGiMvo+r6haj3rs303vWwSO5hX+AeWHOjkHHUHjvOdqYwqwTYyWZ
	 tQilBuWIE9jK9s12lfghrGnlcLj0OcDaiFpgnth+JdO6qrfv6+QZpM9CV+Mm9FEJch
	 syPdDy4k3EJXWApVK4bJOpvftw21//IvTyNHlMLphawl/f6JUYAloTBaI0Di2c7qac
	 zU1FIR30b1376XDd/Sqvb2rRdGXrz18sFWX1kIxzGjcwT7d9DMXdJ7SdIJyCEV7JYP
	 YDCo5xUpUPlVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E730C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162679357.18117.6179545943968146567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b53fc184a2be80113284a0d1c5164885d8ed0368381982ba75a93107a64cc4
Date: Fri, 04 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751626793
