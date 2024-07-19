Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910247A66
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721369154; cv=none; b=BV4ojK3BAvKg0m64Hae5ok+ukdksgLNRh2RU433sWEHtrBL3z1H1dR+Xnva0dk8uvzM9OPUYbjEUuiLqnclWp81eA4oloB8lVa4msH/KafdvvdAKw1zer9AdNgvRFXrMLPAaXixSquOFoAMrB/zf83URYZoYXszq6oBRkznkImY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721369154; c=relaxed/simple;
	bh=Frqb+PnzX87Jh8KZ2GDprOew8rXfnPMD0jMTaf9T98A=;
	h=To:Subject:From:Message-Id:Date; b=RAlzKy3ZVpaJWTD/usRgliZeUuWQ+WIhjTWvSSXoPARcj1b3hF2yTgeJNtrTVwwOjaSBBhJzBEjCBr6CPDhldFXechdZYfdwKIk56yOk+IrT4PikyuFloUakvMnZ090LwGu1S92dkZKek5DosFXj5phidVSC/Di1eU1Xk0I3WuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOg+e9Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOg+e9Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7032C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721369153;
	bh=Frqb+PnzX87Jh8KZ2GDprOew8rXfnPMD0jMTaf9T98A=;
	h=To:Subject:From:Date:From;
	b=lOg+e9MzV4xG6Umwj1fwawKzIx71kuBYKdbm2va5ir1sbl7n9IHDDISz3oW6jB84I
	 9ODDctCxEXkgNO5XQKQaoDWEUAyV8M7DFTzSjIE8K38r52BvN1IkX1wig1vjbr43rf
	 Nucmiss9/1K63iuc38lyOgDbB+PW4/wtWCbP5qomQDJuD+xLf8rfFPtkbhM1vK5jx0
	 Jx59QHR8QeAYUVhhS/w+8N06SgRJFdZ8yk3UScK4txEYALwZSTZVt/aPZr2GZEIxs/
	 viZehU8tdQoobHSG+/Q/QxBTa195t0lzpUq41TqqiElUebjuDjYqHtquIfaMNjI0BP
	 UultlQPesmVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7215C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136915367.4022.6762638231285997478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41c36b9865beb59c75b0b33fe6e3bd71112fd14afb6819d795d9d441ad6d136
Date: Fri, 19 Jul 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721369153
