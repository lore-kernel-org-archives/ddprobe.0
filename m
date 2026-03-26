Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187893AB28C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774551294; cv=none; b=s3QAil8oktyGpzQYuKkhsCTm7oSHdS5tjM8GwrsFh3CPvGgl6L6Ow0HGdxvEDY4GwEUjARQ0Ih+MdsbZB5eyKkFcCzrb7sXX8mhv1XTGWj1NDnxRtWYwRNZE8FeLt9PXsug285HNavEJ783VtRUPGIAnXHKY8rS4eVJY2fHTdEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774551294; c=relaxed/simple;
	bh=bqbu6kwasTAFcrx+pord7wEHj3ikW+MeBjQqH1ykWps=;
	h=To:Subject:From:Message-Id:Date; b=QCdevd3iEYaKQUi8565lAy58ZdjiwhUrVczlFdZyZfcqrIh5VdgbAdDVPHOWg5ucMdSu+fXNnVO7aEOiHYQaw+BQVlx9AgvqL8eLM5konWvCEN/q+iAaVadO7xza2J4K1NBabNY5SBrqxK25hN2c8wIp/bFqufL0BLrJzCUMJxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK1fQkFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK1fQkFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB369C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774551293;
	bh=bqbu6kwasTAFcrx+pord7wEHj3ikW+MeBjQqH1ykWps=;
	h=To:Subject:From:Date:From;
	b=OK1fQkFrR9BtAPTdqBhQKA18PKG0eGpVcAsSZpbbL6ifeo8w07KJ1axbz92lppM4S
	 /fgC9k6b7wvVdZctRxFFfHSF7eOWYksAZVUEc3ncZZ9YzinBDjUoPFFKUuzP97V0It
	 rUpyz2eTIRNXiTrAMA+eEwhqAV7F65z2m3YRif+zuqAR0XKX5xD7n9wy89YsyB+NSg
	 I9BanPNf7y35mrL7+wn6JIM8ONvQiBgw+Y8Hvi8/PzHxXPsXJBw3LiOqqAExjXftE7
	 RYQUE31Z0CmaXpKvYSfFhCc0gEGkMM0nx7dDa0WtMA0ti82bFex8woU0G+DXkwnbS3
	 /kK5ZVWt5U93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9622310AB802
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455129360.32524.11812916958747489656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87cd7799d37c60e8b43a6adaa54dfb6bd9d374539b58592c62a88e722161b12
Date: Thu, 26 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774551293
