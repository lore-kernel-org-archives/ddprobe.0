Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABBB1487E9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756688994; cv=none; b=thg1ERaOszgt4+h7rehnTUh28G8Lok9HZigJjOP9jbNFjg7kW7LKVO/918VCZR1+QtIvtPthbwvcEXEVK8nMB0psX1ZE3C2ojN7TS9Wsel0abFy85QedmOSr+65EHGYhSGt3lZ++IrFJl7BvB2LXSX42vMl3PgSszJCr1LoasUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756688994; c=relaxed/simple;
	bh=jPNLnETCvBGuXvzFm5a3BZCda1rXiBNcEz6//kjGuIA=;
	h=To:Subject:From:Message-Id:Date; b=CggGFPJq0VrM5xGubWY+yyyUX30isEPuYAzK+R9KknaK5i2g0UZVtmIkotFMZcccVtePEhhw1jc6nzWBzT+hIx+EDaOSalWEn8ZwXlsLpum62Ne+3yqEXB5gSwtoSKaO66XkRyZrPQD1lWnDq/ub/cdVF+lOF8SzDQF6qH9lrV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1niSZmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1niSZmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A014BC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756688993;
	bh=jPNLnETCvBGuXvzFm5a3BZCda1rXiBNcEz6//kjGuIA=;
	h=To:Subject:From:Date:From;
	b=d1niSZmL4J+McD9wT995nhScc6TzySeF8mYzHn0Cdv+XFPkvm8LMrxnMKV3v2lU8D
	 4mA0sZVueFuFGDerddmmlXhiD8j3MY0SG2CvvaJI2MXNhK7MTnXrTVeN4Xb1ijoHfW
	 N54ycvZ9izUhW8J40PgT43N1TyP+cPL0D7PIlKAagOKJHLtBQt1Yma8XCvSHbo6WE4
	 cPZ3hbjRrIQIEPuGQq5tdCD1ja1o2BGzA+S+vV+BkZP5Mb/d1WtoDay3WKTFNhTJr1
	 99EMrdb2BDGx8kYu5EqmQJFdJUTNlCY4Vqd8tILA92mTM1wDfKbW0mrI+u3qoKDe9P
	 gXnpFrvPHSoKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E070CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668899357.28111.14189350107916857505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499bc446fd3a97a11b5b5603c473129f6c50e8936dc15e09f44ea50e7682aef6
Date: Mon, 01 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756688993
