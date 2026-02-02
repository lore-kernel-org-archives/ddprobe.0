Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5087D28136F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770075834; cv=none; b=hxWvs11kZCvBEHtgCw0aUyzoukcrbpy9ujOvkhFrhUABGyeOIGodACqoBEOVoUHvfOEk3WGYbAaBVxUq8EIHhJEotVCUtJwuITW7fc2AIMHTaBifkc3Q//nTs+CByFjrClyT9j+FzZ0RGkRc+yP1PSAzohFLRsiC+8fNosMe7DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770075834; c=relaxed/simple;
	bh=BprxOmpKHHd2MmMyYlhXwvjadoQZ71yI4IGYpK9DXpg=;
	h=To:Subject:From:Message-Id:Date; b=Ru/WWjkoPtTYhv/nsqNb8PcVJBLvtSCXJDPQVu4c+mZzol9/c/evWOymQzInGgJsX1lHptK+b/WrM9qeEZVmSkwWpL8AWN3XrN3X79RZaBSeeRlwzEXXwCIrU2hJKZdXJ7CuHLhhZKLoy55OG+kYqCuoVi53HWQnw8+ZIAMrZC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHtqgKPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHtqgKPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D503FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770075833;
	bh=BprxOmpKHHd2MmMyYlhXwvjadoQZ71yI4IGYpK9DXpg=;
	h=To:Subject:From:Date:From;
	b=SHtqgKPrsRhu9ZQGwpH5AHGP8uHMCzs9QCptq76YgBHuvMwNzyp6QNAdJOBR/f5jd
	 7RVjnxSqtViJZf0pDYCbeUH2OIbCdcQM8pgZNiXbkpc6JBhC0pdvjtu0ycLl15soQW
	 uhDMopz/ZqRknrtueb++iKMWdiqVCkcZzjh9zUar9z5oThBzZKcYHF85iwZbGYxQR7
	 8+rxx8kpgz5PthGZaisKzLDcVYsHOGc8h0G1044Z2JXclzLpMAc21GKVduyAgwOfu1
	 P5RpmxfrIMAfXsCVsCj94/R/T/ahvIqEFWYjt3YqEMVZA4e1/y7kkrBRbzd6sj6xaT
	 Ubww5a9G697bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C46E7FDE0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007583369.14709.2339585334737323061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9b74967b623e9e7c15eea8337da2955a2beaf1c90ddeef11e39ed643bdccdc
Date: Mon, 02 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770075833
