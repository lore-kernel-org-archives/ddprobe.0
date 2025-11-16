Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436722D9ED
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763314914; cv=none; b=nOmwnIx3ikzSoJYBtYjsjeNUhfHnBUb9XfpGC+Y16P58aEQw+zTQmLzhg1QWIkGBZLy32PGZULQDI1vkyXyDbb6Ilvu4h1NS+yQKoHIA5Xn/7vZKTjtWCehqSNNcclwpipoSgxje0SFvGlRuLVy+dXhEz6BDpTEe/YhTK6JLW6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763314914; c=relaxed/simple;
	bh=nbEM7nu4JfVPiPrFadmqVfZvTKZ6kIRXmeZFKxwXZRM=;
	h=To:Subject:From:Message-Id:Date; b=nNRser/7mhe0zhzHjGOWNmQBbcsM1eXPHLl+54CxtARSUb2sGveLG1ScpwYFfLjfR2dfIfA90Oi34iKgFJ1daGdDrp/R56RVsOI9Nzxqy31lgQqPKHTa9PB5gw/3jrUZeWWW9tAQCga7Kw/3HaXzpmqN+sKgKSW0+DvHccd92WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJY1O0WT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJY1O0WT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763314913;
	bh=nbEM7nu4JfVPiPrFadmqVfZvTKZ6kIRXmeZFKxwXZRM=;
	h=To:Subject:From:Date:From;
	b=aJY1O0WT4x7gnOKPYW2QHfkWmZpn3Kwh7DSfSFk1DmDF3xb4/4zzphWYf093uAefL
	 nj8vNX5ycvczX0w1wmmF/gq37s3B0+O0rW+X5KEcxEHoO5LYEPjiWWUKTXJByKqvfK
	 P3rWv+FU4x0j34vm7CG2n9kk87N962TV+cPqsD/rHTyVGYiGs9uf93Er+LCVJtRfKh
	 1hNcFYYo14gVrrqMsyXVhaNOmi4lKnhrwp5LffGTHjdHfC5xRGvzuwKuw3jwcB7WIj
	 qkGF0kTknkuAyExwhIoz5oob6ZBycBVpPxVlp7bGbHmxLLSOQN5AzOOwEGYdr6bwje
	 vpy9VnN2p+IKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93817CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331491357.19287.8771837563061010012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf33cf1e6ab1283b3da882225f35c4eb685c46c0ea6f8b9ac3436cad68813001
Date: Sun, 16 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763314913
