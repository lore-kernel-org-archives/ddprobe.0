Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4CF288C81
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775712934; cv=none; b=X15yxZtFYHXioG3nvbE7RjMb7prh/wMjKg86BcMy7wKrPHZiwg9LCmS4xVkPno3mwk45yS4mTnJ/y8bFu8VyB2CMffz3PrV8kwW39MuYFsSRFfF10STZM2+rymDHgni8AH7JTm6Xy5dMxQUgTUmxjdYoxQc+slnTKXaIzP4eG+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775712934; c=relaxed/simple;
	bh=Dks/6TGEEseC0pHY9Wm2sktrjDsyuDnoODdxoY1FmRI=;
	h=To:Subject:From:Message-Id:Date; b=KFp0bW/uMz51AT6PENLKruxKvqC0jxHEPQp5OrLYBF0hGYjiDfYteF6THWWuuUhGIYr88P52raD7q+ii/vQukVnzYWN1kMW9XZZ9JhAMkXC8YHKobVYT3sUpAa5tCb2v0iwyoWtientO9QBTF9FszpBVtkhBQGbOI2J3Y1L0z8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbbLO+bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbbLO+bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C4EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775712933;
	bh=Dks/6TGEEseC0pHY9Wm2sktrjDsyuDnoODdxoY1FmRI=;
	h=To:Subject:From:Date:From;
	b=WbbLO+bMkH3fEO5P0e7pm3GpG3Ky65RjVn5lAmttT7TeNVU9LZaA0s4LW12K0J8GM
	 9frkPemlupwIS3WkETDOJYAx4TCOWroETK6xpC+Qk5zTZlSyIVYMrmtx/tyypCABjt
	 t7bjO5Vpz0rU7SfoUSVuDkLxB4mOkGPJE6FWrneE6wK5Uicrodq7Hp9ZSiZBt7CzAS
	 b0GnLgZGJCVY81hIifs9cbR9COkn15SZrN4A26xP8ZHWlnFuTSj4/MSKcq8Q0sAuQs
	 qt8zhAEFg59d9GePK5XC/x7a9PWGUfCR5Hx85I+gjLZ03xMpTaKKF6mnxE74ZMMxjW
	 mKc//hOhu9U3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1DE98FA8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571293370.26708.13235637967981939976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570b4d25088c175bbff97a1f50aa28ff1b5abcdad4d1ba4c7e5793abd4401393
Date: Thu, 09 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775712933
