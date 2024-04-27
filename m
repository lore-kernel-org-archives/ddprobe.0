Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DB28F77
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714251743; cv=none; b=CZ9jmy1FzCbBAvJQ9UBYaL45Wyp68Fxt1PBMFdSc4mIffZSkGDFo+iR+reMVGQaUXPImygUNRI9QGgXuW4hvhRUDIQF2jBBMghTayXSPD7Lnlv4z6+WgPdS1bPNYnfcVxsTNajRxg7qNojNRUnsc7JXY2VWNoZ63cMfKQBQGUIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714251743; c=relaxed/simple;
	bh=jsxBNtW6xF453ovnd6C3IjFLc4FTzm+ymKiYEYomKkE=;
	h=To:Subject:From:Message-Id:Date; b=oFJE1OQAxY4/BS4z6Vx/2XoiDak7bPoXcRMXwuo4YKyYLZ0tYyBwZYOLvbVCu3nBEpPf624xbrnC0H15N8GmXyvcLKScogMh8RDNGaNwZx+SLFS/UBrD5nAgO2Q9BwIGcMYVzKgrWF8h7lSswGEIxzxUpyvE0dJB+5g8p11RDAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4MNUlTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4MNUlTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AE1C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714251742;
	bh=jsxBNtW6xF453ovnd6C3IjFLc4FTzm+ymKiYEYomKkE=;
	h=To:Subject:From:Date:From;
	b=o4MNUlTS+uBcn3ndnQQt11K/KT0L5PkhFPC+nzY89b6W6UNvUgv3lfb/QUB60hfwY
	 YkFMC6UgF7zmlzo+SaLYheycy7RDqNXDugA0uAXtqa/RTWVuZYgtkWJFqV0dWE4Z+a
	 Lj3Q1ASOxoAgfbPTtTfRftprRQyumkZbPiJmJgAShbU8D+6AutOR7mECymuQoH5Tjh
	 dCccz66ov1IrxZoyzQWp0MBjRZtz6bHzBJkjfKrYnBVobXMdyOu1EjKpjeNyJUW8ea
	 XA4hoqgCmoS+9c2GOuz9+DZK1kYQjcMJM1FbzDgInEixwqW6MAuCHwK06+Vy1ku1im
	 RWjfMxx+rUqUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE339C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425174281.2407.6100978303503571135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2882044a17aec2d420347b73c09e689e1ea2ed588115a9ab956ab6d21209621b
Date: Sat, 27 Apr 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714251742
