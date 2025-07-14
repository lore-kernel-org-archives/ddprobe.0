Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186D25487A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752508794; cv=none; b=fCtQeNOZ2kec8szJTY05JUngwbqYJAgcUzn03BfXFLUeXvOAWBmauO5+M/K1+ZGamRdCR/q+yGjM4dCd3nXIV0X+RNEaYB/3cF3Uc70c2yHWoUazgHzoQK+CENWWb+blqlLjnTCGs8UBgCbUku0YmIxI4n6ujeyXf/BLDNlhnSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752508794; c=relaxed/simple;
	bh=/6h7NR21tlLYxJXK4ZKTkRqvSxg9SnuEClgXsYGJPsU=;
	h=To:Subject:From:Message-Id:Date; b=hrtecUUe6XaJ47FZRsFiohGclsbWsEGyvAjbh8NeFSD++/T5cPqj8b9EXP1+G1urhdpvidx/ZqRTHz01cg4qaVPUqO6/KO9sLeDbxpjDmjs3y9zPy4Rj7UgR61tWZx+Ls9m3ZzU9PVGaGnJEncb3hlLEtK8N2pQP3+Mx+tbBfJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9WNl5sZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9WNl5sZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1705C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752508793;
	bh=/6h7NR21tlLYxJXK4ZKTkRqvSxg9SnuEClgXsYGJPsU=;
	h=To:Subject:From:Date:From;
	b=e9WNl5sZWZaN0frULPeayrCGxxuHDEP8rAUrYZE3d+pBC7+O6eHVHkCH2YHp71zxQ
	 g4maf4b5FnIXdeG8wGf8acflvHFlFSKOoYhkY2tLSQOkcsnoBleeIROsg7OixnEwn4
	 pWrUxn3/tW2DomjkqmSGDPqBsuOwj3D6yohI9k4ZA++zznCIDpgzHsfGzYM7+mGaB6
	 zeo+8U4LerSLIKASnqjHdekvUjvIwe3IwWRL4iA003f9oMfQxp+XjzbdJIkNtCZAbP
	 5+l3jSuuQZydHEhxLubo6Hjrt/vzIb8r03kE0MviAkPObtT2uFNDY1WP8xHvoFnue3
	 ULt+VswsK4kvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D609C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250879363.13468.209495551228734706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91a0666fd43149dcd97e3992f1af120e06adc52dd2325ff7f60fc779e948c97
Date: Mon, 14 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752508793
