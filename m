Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC00155C88
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761601794; cv=none; b=tB4ufvvYUVPkbCBMMq3TDFtpV6kZU/jAhRA7/nweminyrxOS/qhsoFYmkyB+PTtGNZb7Z8FajaDYkVwX1iMeUlXOWnVla3EWVv8DJf0CjJ/fujPqtxFZwsqB435rm84p0u8tWPPPPqcOMm7q5RittCrq5Eww/U5JLr5iRW5Mn9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761601794; c=relaxed/simple;
	bh=cA4x7MR8M0NywC2rn2j9DZbnVrnA4/G54JOrnW66AqM=;
	h=To:Subject:From:Message-Id:Date; b=PxjzQnb7l0o4mPReajqyi58kYmcj3/UZQHCxrKwgEGaZA8bzmh3Wv5k4ITGa+vhDd6PLc9oONgOhCMhO/Q0skVRkL6KS0XgcEg4RlTpWBJtlAHayuK7aXgpCx1LuaFvUtOl/ucGPIClRsN6ptyZmVX+N76bLBG5Mq2qREpEBk9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5/IhOx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5/IhOx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0028C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761601793;
	bh=cA4x7MR8M0NywC2rn2j9DZbnVrnA4/G54JOrnW66AqM=;
	h=To:Subject:From:Date:From;
	b=K5/IhOx0c/YcKPqciLie6WxiIXi7A9JrbQN+WFuhTiGYEnsLwkvz4UqLXyzE5oYjE
	 uzNqDovCzCV+zkp4yhEAhSYnSHKpy2kISXG0sP8cPMB86ekOWSX5eIw8WmYl0mLCF/
	 OLr5aRz8/uUOVz/PkTi9BPRC7QyjJXtdzKga6A8TjY8XFDVPwIcOwldohbA+QUNdeL
	 BDKraQEHahDz4nwFZafqG9b08GWw3rjxPKn+AqqyzLh4TdaeOPICH1Ii2vLTTOiVAY
	 oS2AbPVGrMLiddsDQlUSVUor/hvshbQM4yiDOHMUB0h7HK2QI8rVDyYutJmVQgYcaH
	 tdXAR1YKW1p2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F36CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160179358.11567.11792411855189951500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44ce5959ffcee0b5bc4d7a5fb0fe1fbf5dea12306a6ef6fbbeb31ebc4cb672a
Date: Mon, 27 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761601793
