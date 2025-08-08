Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAE21DE3DF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754629194; cv=none; b=t+umd58mZMabj4ageZJabFdTpHia8phNmzZIXSoHekt0gB+qwzO7GzsDxrA1uELpBbNyzV475/zMcNyLLk7qZVpOKvM7I/u7yhk0l0rkZATWwSZCFQky9Jt0iw36+8aqQez7n66HT3oYtpViz6JAZKP681pj7wF8Ftxod3j/8AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754629194; c=relaxed/simple;
	bh=7w63csOyYFNxjrwAuqkxavcMb20M4nIZSsbGJm5Ps9s=;
	h=To:Subject:From:Message-Id:Date; b=smpMp68Src46OM9YJEgu1a8dXAH/PY332gzSc8jYHHEQ5/hGs609wtVT2UoIPL06oMDbmuR5nlJB+UppfRpuYrGx/rDSOxn74EsDeWqKUpLlnmnK/WNN1cWKGjT0QfSGIvcZhnsMYtY30wc6gZ1a/jmmxLnuNUTNWj0Uh4HzdA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY90YJJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY90YJJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DFC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754629193;
	bh=7w63csOyYFNxjrwAuqkxavcMb20M4nIZSsbGJm5Ps9s=;
	h=To:Subject:From:Date:From;
	b=DY90YJJfSByfOKwSdNU6nSn8HFWHXq7m29NVeIYcjtmRJJTe7+IGiBrEeQh5wRv9n
	 nROeW7ymIOfFEOGFtCScAFmlDRZhxB8bKhEWJpniwSZrpjuSLwlBGGeKzF861Lqosb
	 4i8JitC65LXAEpOmODmzYB+GTHhdHW9pywd2sVNQ0ziSNbh0t2qjIe86+FC+eUjRro
	 g5UD+DmvxsVyhYDcwmRmXDA7ga6LvkK00Of8mE2aNW7adMaSUTQvBeP3yDYHQebz60
	 FK5EepW6MbscXNovZZwgmZA/CLSzhjMV+Y5QVpvt1yr2T7VWDFNDXFhR6gawnf9rlL
	 ImUEG/wk88LJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB6C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462919357.3784.5727860280229921199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0daa7a43471ed69ee5211a6c974f98a39c5d008fc2eb7dca4ec7876d55e33df6
Date: Fri, 08 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754629193
