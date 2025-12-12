Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480927E1DC
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765516374; cv=none; b=ufvCj/U8Miz3vncitzh1BuvwSnK9WGnLhMHkBKR8Iyu6oWVRaiBwK18jq0cxGj8w5+i13RcorzC3hnpieAX6tWlcLXuNuaFf1xeiTTcuHz8qdLF0Ld15436KNTqpiebx0m8GFqwCkja4e6t2oIdh+prcxCXwJ8hR3s/PSBmzd84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765516374; c=relaxed/simple;
	bh=i2UNlUhOud3TA6eHLJtIxxGLeVyKvOHmBJVkb+nT+8w=;
	h=To:Subject:From:Message-Id:Date; b=ovdYw7qpiCQxQQzNGEAbC3a7IU8NIKvEuBKKhm5byDjsC0c4xcaA+m2x/8I/ARHjPJetI+mvREHejHP2QdknSSii+ldkrPl5qz7F0EnTKh41+owe5xqGIH7xVIVNRorVFNfjr+0G2KE7Zshj+bl54+x/Lm0ANcxxSEAWTb2IJ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqDUtjDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqDUtjDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD3CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765516373;
	bh=i2UNlUhOud3TA6eHLJtIxxGLeVyKvOHmBJVkb+nT+8w=;
	h=To:Subject:From:Date:From;
	b=AqDUtjDyb/S7QntLIClXWvmRBz4tQ0m+7shnEOo2ahg0qswVLKk7Cao/9pU+7+JAG
	 6w/414UOldKQdHzxkBjUItwIRxvSaD5yepEWuwk6yFaJ+57Fgzn9lDscrlC5eEndSi
	 Y/gzUTIfENFlu4Rbj97F7Melq4rIF78kZRL3tEkH+X2uVhxDf3xxlHj4Y8gqWzOiC4
	 uglcAYxtUSUTD4iU0trdKzyR0z/Iot6J3O7XNXEuQCbe9bxHvF67xx9F9bZpOtbPry
	 cyzUw3dzDF17RWokPVxeq3aDrSpmdldh22rZYKQzUNangiOqyqgeMbe/XM42QB4H9I
	 lp90ds5YpBYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B0ED4336E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551637359.25822.14000419518634215584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea1802f97d9b68007475261791457ec482bd39539cd2267df0058787d7ea5d9
Date: Fri, 12 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765516373
