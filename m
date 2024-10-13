Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC983CDA
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728840354; cv=none; b=UroH0AQbXhicWUYey2D47j5gyioUGQmwuy4ZWqAGzOFyqD+Hjy1p5Ca9IPrPFgPfcB95QxPZyGB/CScjTt+MXFk1Z9YF5F44otieKb3uVwCwQam1nDjt5x1jMBhhi9cd06ffWxzpLPQu+S4d2WNfr4nKB6Mk0O4Kh3tQ9lQ3jDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728840354; c=relaxed/simple;
	bh=EpKRhNcgMalEVdwjbrrkxtuxY5e+mQNVL8xVwSmhapY=;
	h=To:Subject:From:Message-Id:Date; b=DQoD3SLnUWsKjS6mTXp7Qu3VAYbfCRO+x1PbSr1AdHej4bZ9f3o+fDwmqkyMiE3FdOkzqN/OC3d3sJFtKgCtg4B03rWnSrUuhIDPdeQ+L5dVIHQPSwq9aZ0Jnxu24PbuMS5HEe2DL64UQn4dktLxRNUt2Gz64Jd7ZZyrz2QROo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3rYRb3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3rYRb3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B603BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728840353;
	bh=EpKRhNcgMalEVdwjbrrkxtuxY5e+mQNVL8xVwSmhapY=;
	h=To:Subject:From:Date:From;
	b=B3rYRb3+Q3jxwjxDldsvMM4gQCNcN52e3PTd81Tv4ETzJAq6dODcdRUXJVYo+mU4u
	 qrkZqMjvTNF+YeouaMAtoOeipqtOhXM9iATY6RjpXoHb6fUn5e0jrHzTeJMMPxe0eB
	 5GnjbhhAEsugbN9LN1AdMGBo261koa583/dkX0g003DcXF6zvvU0EDccFvMIVmDoVw
	 eXAWRnaoT9SI1MK4a23+vmWBgCBpxn5Pg6uok2T/SU1YOif7TtJXaHHP1WtcB003ZL
	 gsxOKH4/eANPyLp0rMvHhCxArGEkrALpeqmJlW5pnHFgCt1NeBtPdrPTeHnR+VMs9i
	 Mt8Umax5JdWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98223CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172884035360.24650.5160287226610179047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d1a8155e4e51471e2c4af48d2c67d8b8abe2df3fbe4b0c9ee4bffb7aacfbd7
Date: Sun, 13 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728840353
