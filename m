Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2B736405F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769076834; cv=none; b=tIOZdJNlugxv+Blk5R6xkNWezBCi2IMNvbpisz+lchINZxNTxmziTksrquyWoq/uEa5wAYGHkWpFFEVkQ3L/4A87l/VhO1yo3Ry4iEbGFB1Qkwi+oOAl/YO0GC3tHkiS+C3tYrYj8sFvzYp6w/V/xfSABWbTcN6b6o/ERedytmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769076834; c=relaxed/simple;
	bh=8tYMxVCVDSSdqPpAroMMinJnf6U+jFznK476KkJp0p4=;
	h=To:Subject:From:Message-Id:Date; b=Bar7dMI7sxxoJmk0YgC1wG2MKwaDuULqtts40tk9DodlY/9Ur3ofB1kVKa3HqBB4LINc+b5gMX5gC6rhkcT/XO2atCmgdkp+e3j/FONKrh8LfjuU9Nfg8wh6pDRwwTHH8GiIUjWS0Is5/UQxb3/br12UXantuz4ZcUkL925HyH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEDuyYzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEDuyYzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2021C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769076833;
	bh=8tYMxVCVDSSdqPpAroMMinJnf6U+jFznK476KkJp0p4=;
	h=To:Subject:From:Date:From;
	b=IEDuyYzLIQ2YcYOMKKnpWQBx66OiUR8iIEA8akMWUmuPl8IeGNvUvpoo9bhpo9DJK
	 RGYqdc0w5WJ+dRz8vNLSNkqtfTGPx0eUKK1Bpt1NCPF2KiIU3rkrAKTf1JnlcxfBti
	 KahF1yZDJFFMf34s2NTFcd+9KuI5T6vY7z5UmkcVcgdhPMzs1RKqRxGLnkjhnXIz3d
	 L8i9AXkPouCpKL7AIZhwyLr1K/gPXVOi5rfO4UldcW0Bg4ZSCVtO9BQQvnxin1TOSl
	 83vzDZFgegeEMCC3V2iuMrYcevbv5+JJV8qTNchr+VUoQhqeTBlXyjBADdmuewY6nn
	 P760GBIuQLtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C83C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907683358.13586.15462332794100266233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9670f5c1ad6c25fc1bf79c5b09dfc03bf645d92a95ac546f542c1291a1f2a6d9
Date: Thu, 22 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769076833
