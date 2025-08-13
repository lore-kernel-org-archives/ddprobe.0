Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3412BD5B4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755072594; cv=none; b=oKRKCdlvIBM29kd0bFOJrMpU3O/TeXO6UkCeqtD9nmWe+KOxu5rOvqYrmBD6zmodxrPSU/k/gcuTob+rBAemNY5Vnv9KfuZGI8OBPl4V9/V/iuq84A0KFXXuWkaBl0eSJUlufLa/ng3nkqqzfdpOz/dGF+y0tOjgP0UNKpEU6Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755072594; c=relaxed/simple;
	bh=NOs/3cO3s5KvuRV0xSRunauWQKeMHMu2u3svom5skp0=;
	h=To:Subject:From:Message-Id:Date; b=XEiQkET5hVspYfLVnIoDK1O9Jlwr2BFA1elJaesr0t21ajflqwMdqz0fCBMNIWSge4oF4HsycbqH08HouuouzOhWFNRrnjSrPBsjP1GpN9Z+PBH7axr6Ea1Wvq8EpZZ1N0Bhj3LtxOetmHh4JkJlLjbmxtqI2L0G0PcUpBk4F5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMD6+X9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMD6+X9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F485C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755072593;
	bh=NOs/3cO3s5KvuRV0xSRunauWQKeMHMu2u3svom5skp0=;
	h=To:Subject:From:Date:From;
	b=HMD6+X9YKxe9LJSmAMoqu39LuiJmsBqnKZ88UhcyeOYFUo81J2xeRYnBP1sNG1v4X
	 9ThfD+S4EIWuGuYHMjrTLUstV06seI6XzKlXgbHLtj/WRrUUN0I4wQM6No8k9s8Tw/
	 er6j+O9tfrPoVCHgqNJAm/dHlSgfLZBDoA8RtR0z5cfVOEgjWsLtNkL+Edl+IBCkfh
	 QCZuJXy//gcyEC8dNzTY0cn20ucGxct4BrAWTsH5vW785gHM1Nj8wsHs2f6ZMyFwaO
	 J2Y+CsKZdWQyiq8auWG3mh7xxi91Q2eIOmWeGITG+X6rf5UyetKiPLC2G4Dl2KSofa
	 nvjH94lp6BC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140ECA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507259357.27045.12808120735175670465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c85fb58dcc131c4505badfdd1f90e72f747e098542d7e56ba63ade2c0d7157
Date: Wed, 13 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755072593
