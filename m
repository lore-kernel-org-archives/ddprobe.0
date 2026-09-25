Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D7847CA77
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790376634; cv=none; b=bEoM0eYqk3PrqO81FFwjuWM880cM9ik6fCIl5LugMyHM8dx9YarpfQ+6A0EPTVlaOAys7hHlwg3rLVYPKAoCWrKi3XB6uJXY43iFj/LcU7CfQqsX2d7e2lvH/JkT7hyjZCy9qWGPkzcT5RHZHtAZNnur9xNXZMiUZAMkZNjW+v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790376634; c=relaxed/simple;
	bh=7a9mLsAkb41SKfp1xzEE9dBPsPfc7i3bp0glZicaMU4=;
	h=To:Subject:From:Message-Id:Date; b=TGw2nsrC2Cory1KtjIxu6gv+23IIR6Wx4klkAq6zXFH9SWzW4b141Rk6CLbOIV0eDOdZ4NFkhdFAu2ra/9yZS23dUi6sL4Ny/qogfkOfgUMln5pC2Po9tymgOutpY2MvHk86IqpfAXxDheON4AaiB2YLFilck6T8dUjvIw8Az/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxbVce0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxbVce0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D439AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790376633;
	bh=7a9mLsAkb41SKfp1xzEE9dBPsPfc7i3bp0glZicaMU4=;
	h=To:Subject:From:Date:From;
	b=gxbVce0xofb+n/bD7VZoPmeVJMiKDYl52jDaPHHoi7CgEANp6lMHVKUEo27O+o+5T
	 2jD2PUzeZmXSczIyNw1+hT7fomw29jdPHa97d3B1xbN9cR9dh678wTvedYhHiajbZc
	 Z2qODPg3PwKo/+Ig3fnhn2vgR1Ld3rYx5x8SGCVO64o0iPW3cLcF9YFKUtfQe81Ba7
	 aTCt5SXD3TsvL86SzT/GcG5A9NNalKnxScBtHcmXAw+lrMEqPQIDaEuUvTFk9hzD3u
	 /p3XNkGd9pykeAHoKt+uR8VC7uzjW2jQ80sNxuvqw7QKXtKvHujPP3gdgqbY00TpXm
	 dKllyy4fzLHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD876C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037663369.1175.7431290395973895233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f04befbc0ad9ede8e46c1b2ae524af3cbc695df9c7cd878c2561ae0bb1c4182
Date: Fri, 25 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790376633
