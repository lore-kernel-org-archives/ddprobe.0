Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306536A01E
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722841554; cv=none; b=tIlHxeb0vZY+I7ptvC5bgEilhmhEGEgw+K+48SZih0t8HvVz7AixhF0GIzNQDfmJi+ReMOBW+22BvMPwA/BQCUXHaQQUyKse1n8i8FQRdCA/U3PJdT71U04DYl0MSdbdSJV2MUcmvxlEBn0WSrK7qVW0Jd/EzmCdYJ52YQPJRgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722841554; c=relaxed/simple;
	bh=4MuYJZZKvOcrT7Txgei6gbs/GwsK+DDk0h9j0aFgyNg=;
	h=To:Subject:From:Message-Id:Date; b=oNVDvP3yzoGOEfuu5VTv1ALUG0yveVoNrehGYG3skqL5z6UY22XlODMdoGcJSpe1vPc9z5WUqhWafUhnvG/o9WYYlTT8y2gTn5Nc0XInm/MTQCFPzfleDXyTIkPI013naiN5ZecmtAQghw0lTUbHimwCvR514LTAMhemOUOnBDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhHwA9St; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhHwA9St"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08A8C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722841553;
	bh=4MuYJZZKvOcrT7Txgei6gbs/GwsK+DDk0h9j0aFgyNg=;
	h=To:Subject:From:Date:From;
	b=GhHwA9StvLHSLW4qFwmflPCHI4elUG4YW8EYiFvnL+vBYUmTXTTT474yx9A/Qbcn2
	 5fTYlV4o5QiInEAZqqZKU1RLiKH4ZBlR63PKA7ZPjQlJQ1nz1PO/KMwKSeYcDZWbEL
	 1+2q3RjS1i/3wGIJCfAaJ+RlQOlx67SwDiie6IBE2OrVHLv8ZSfaZ7huT6g3v5mzSD
	 TuUnGIjYlgQ3FJ5S7AsBDeT6nbY4PC5jDsL+qHPq1KRLKe2lFjUBdwT72vOYgdOoHM
	 BtM4zil0L86AtvSwpBVfVJCqEi8HfIwXGBQUgT8JS+uUAlovm2p1bDZTkxuMGwPa3z
	 4svAqIWHBZi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FA1C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172284155361.31732.9326168315705772310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4143d715d9e7cd2da80a1679c7af314e5e6354e033e8c54009f626ff00bddeca
Date: Mon, 05 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722841553
