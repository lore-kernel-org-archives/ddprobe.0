Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654433EAEC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756490394; cv=none; b=cHh3hJJrZl33oAlimZB9njoViSHrSoB1rl34I2o/iqGG2d1aNlTiNNQOoGJLEdFwAUxMl27tWPDytsxkJpMmzHrO+y5re6Vq6R1IF0rT4T/wnn0o9nFROyEN2kHrb8hC599VLKw1H+4gp1KUJgRcTq6u4LOGAKcJfLn40N+q3vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756490394; c=relaxed/simple;
	bh=9FmabGMrUvxJ+oUaV9b9/6QpJW8sOgqpql/AatWbxRc=;
	h=To:Subject:From:Message-Id:Date; b=I6nYKMw+w/ka5/0tJEQOoFZuFjLHRIcyn3Q+WSHkTuCz5eZ4UmYhUVi27AbI+ZFC+5HmJxPl3FC/XBLI6nXr7wOhbvu4PF894zQUUFLUY81pIdXSkVOFyoZnmX7OGE9haqr+/VIgXUfrBCyRfy9rMrGHB0a0OR2ItIypmSZux70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojmyj5EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojmyj5EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2152C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756490393;
	bh=9FmabGMrUvxJ+oUaV9b9/6QpJW8sOgqpql/AatWbxRc=;
	h=To:Subject:From:Date:From;
	b=Ojmyj5EChUcNo9xnuAro10WeIKtUnTDrIEwvdvuZzvO8MuvhM7EVi/TBTufSncyBu
	 wgcgiD3XgF1ZMGuWpjuS8Zjp+mEY2+1oLRwB+OlphKUdDzJwVeZh5dlbw8d9ACG1LF
	 Y0MnZv6Lk5VseNq+cgoM0ygAGSlr7HsK3uyI2sxJlnhqG3EJinlA6D6GifEuY6RCiU
	 HmYCj3oqLUYMM5EetzmeS53T10tJkmrZlYAQtN7QY7bVtTamT2P5Q7XviOcWkqHnZl
	 i3naSaypSrU2lHYmfLOu6t07uWJD6q+y5IsXk0D7squsAyXn+cTV1vIC5KRNQnvZmW
	 9KBacvmCvib6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFCA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649039357.11060.9631452229527931991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad368ff330e1d143216d01c81d1e3e6fd63129f525b5b2590004c45cd44b9f42
Date: Fri, 29 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756490393
