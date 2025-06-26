Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401F126528F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750975194; cv=none; b=jdi0antK4gqRh/blo+YN6XwWI5WRjPQ5dJXunko8JvB4G/XfrcqdxkQaHxp3Kn/m/am/YzRZKN5Qrv7PMFjyCldIsEQJR0JeCPhKrdo6WehjZ/V30Jhj9yvtiVLyaJ8jnYOuUTsTXSXi0fN51xjeTYTpbwoMgALd79L0rJ50JN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750975194; c=relaxed/simple;
	bh=JJHsVJH7+Up1hzuhB8m2jTdGA2f6jtoW5i82kkABSOU=;
	h=To:Subject:From:Message-Id:Date; b=AN9xs0SviDyT4W8pfJBwXvoXosiuowDFAr0rCQ7qzLQPDrYe/8ncPuu4LH2Vt0yyPJe1uq9wdzLV97vAHsKhXYw7oVInIHHW/Af6w3HmmNVkwHHOASh9Grtd0HbYrbmgO17W9+4ruo/FWz7HXim66k7k1AKNAncpAi6DALV2mO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWMSzK/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWMSzK/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0DFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750975193;
	bh=JJHsVJH7+Up1hzuhB8m2jTdGA2f6jtoW5i82kkABSOU=;
	h=To:Subject:From:Date:From;
	b=TWMSzK/xA3ShtgIMOrFcMyDK2V7Ef6cjJ4b0gom9F0Ux68gLA+zGpMMAa84BGmOXq
	 XZ+fgZlmg9ZgCd8vjCm6+aPlBd4F0QCLLQXXPQr4Y3x/QWbHmJ9c03KPkkgCg4zcJ6
	 OkF97w3F6NmzmejIc+ml5E+0nMVjmjARRXspyH0JLv10IsHHXnJ0yiAiYWxPfPvb4C
	 ssQDcn9E5WKkb76CojAj90pjLCaLBtVJ7ycaZCCu8/pYBzm5G1MzLyr7f42GUATBmz
	 sq5qXA8ZNicXK22nQMZ2lTUuCiQ/EtR+shwmnJl+fO+YrWkh9eU78eZRRbzJlgjGkb
	 Y7QsPJdtj73gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE51C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097519362.14770.11365077895213261580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8595bf1bf813085e8e05266646291643e727cd9bc39c5432f03c859f6e7c0913
Date: Thu, 26 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750975193
