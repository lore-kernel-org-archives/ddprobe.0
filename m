Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5714830A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728947754; cv=none; b=dClL0axKQXgVO1bTBRP4flAsoAYhoCVNm4GatjftYSOaLyYzvM5eFQONgP/AomUayVEEYyDOLWzH1G8bm+lYsiRmWBrdUpeyo+QUm4Sw198+7Hl429N3i+Y+iTepzOKt5donFcYr5bfR1JaYrppSjzCt3xZeBVmm7t6R971IQnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728947754; c=relaxed/simple;
	bh=PPtomereRGosgLg8A3u+3qh1EQdHGl+MP1DUXp4pgU0=;
	h=To:Subject:From:Message-Id:Date; b=dDs/Y1o/0uoND7a8d4sIk0Q0f5jg2mw2+K1A9nC5WHN0hH6DOxM5S7PnTRK4DL52rjpQF+Zi+pnt/4QOhk4alMZ8ibcUBkO6GBcyUXHmfa6rPGfMFhSHZ5gJdI3eoKdBgRnPmyIo/EVJqtVIsXoxqsJ0J3AQd/eqkT+yUQwSsnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMakMEMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMakMEMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3DEC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728947753;
	bh=PPtomereRGosgLg8A3u+3qh1EQdHGl+MP1DUXp4pgU0=;
	h=To:Subject:From:Date:From;
	b=KMakMEMWDp5LHqqo/5xWL1XRPLyPL5OpL+GbdhvZHuApkJius3wbv6GP8YC5BZWaj
	 iwmHiiLbKW2hYo2bG/KWyVnhC5lQXKdnbpoW2io8HkaFcOsfCcyf/PhWK7ao7Tzf6+
	 patNp1Vht9+YwoyTG4AEk+k7+xSkp966VrKoqQeVD0kCpblJEO6e4r9SKMMUBQHZWs
	 1+GH+pNK6iITlKpYRHhxIyXiGJV/VMB7WJu4PxcwFWN5gAcb8yRUmKy+lnYvMLBtSi
	 yy7fmS/6nBItWX13gEqwVHBxRaJLNemZIM1GeZ9b9utahxxtOFfsDUKTxqowN9hrzo
	 AMVr9dCaxu+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BF4D18158
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894775361.21631.17089236123704103107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7e88a8c3856fe03e6c9eba16db68acf58532090e16614449ba4ca74310a852
Date: Mon, 14 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728947753
