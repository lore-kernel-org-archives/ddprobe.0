Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC861581F8
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747795794; cv=none; b=F+tuJvKcYROpe6uBmZyNEYvuVZqEhg+WgEJ6yRYODoL0GU1I6qGwrkoUyjNW0w9ioy0quR+V2WbaAqKiU0WIqDNs8t5360u0xrlSBPmRU57J9a2irI7JXZwMDP9gSb/nTgcIrmw4VXK3pR9FQT161EPkT22hEQAjbjQVfYTCc4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747795794; c=relaxed/simple;
	bh=d556/cdf+5AzEfzPpmeGwkySCsn2htiTf2j1IO4SjlI=;
	h=To:Subject:From:Message-Id:Date; b=TV13DyAGpE9qi1bF19xKLAttndB6yhIYIG+eJ+W2eZWmQJFwF8K8GrVMrgEXMUdyjD5S20fiT7GpqC3nqqYh/6JdXfBps2g/ocd8ByDB7nHfKDhTWHXNENmi3QhNsNR0pzCzTSIf8MCvIUnX80NafZ/xlUonPB2kmQVWsCGaVro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+wMh1vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+wMh1vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747795793;
	bh=d556/cdf+5AzEfzPpmeGwkySCsn2htiTf2j1IO4SjlI=;
	h=To:Subject:From:Date:From;
	b=L+wMh1vRIJH4LPgDqZKB6TTaM7dbagKFc6zUKfUYrVZwHYDdN05aIh0obr4yj18bS
	 vkJ/6hkdCEZcP0Ay+ZVjTtyEJ7xLpOEVLErmWgZtKV96kKFL3l6b6TpSVgkphwx/bn
	 +bt13S2mXy7Pb6Ku5j9M2Klr/OeVu7UVz7308cOB6N+gS78q+WNR36a55vn9U1K+E1
	 zGQtFZnifFjyEmsUKxFurPa3DPrlQI9vzHhiHAEdeRwdQgjdWkDAxsUmpjM5LNsm4m
	 C9Znfq3oZlLsDfJfofpGM6o7WaPaz5/MrUqUm+NoBAIzYajYI/SeHilyXkZyZ8ajWv
	 Kz84tecbHnmmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E449C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779579357.20855.6812072039615319400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3530109b235e5d9ba52d21c2e4445570a0b8913baa5ef036382233e9cb56387e
Date: Wed, 21 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747795793
