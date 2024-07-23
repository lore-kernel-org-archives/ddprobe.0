Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3433713D609
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721735154; cv=none; b=LZXPrwIEKt542MKFYllFj4lQF+//XJO208q1XWR3BVrqXGguLRrOSZLXP54m51rr99TYktLo/q/fpoiAZrheHD2QuSpqwTOE7IFKiFfUD0TR5IOiOeqDz2LKt8Drx1UNlSvjY9Ch6+6T5aJOwPwwv+F/z17fcSNzz1bWF9HeP5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721735154; c=relaxed/simple;
	bh=wnDche4Vzt/aV/Wax8IGn4Qy13Md9TZ5zm836O8UbY8=;
	h=To:Subject:From:Message-Id:Date; b=ozrRQmHnZDy4vTklPujqf0YajHT/dcWiK2GUxAlE2H0MiuoLo27iU2mJjMYsfz5ypzeYvydOXCLr6iI6gu3rUyCvtu5cGbGrkdWZ1QvPla8Z6wrfb9QhpF1ZEqtxymlKIX3buyQv4ooaSKY4As6MRUwUN1K945jESAgQxhqooKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9CHHF4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9CHHF4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B282CC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721735153;
	bh=wnDche4Vzt/aV/Wax8IGn4Qy13Md9TZ5zm836O8UbY8=;
	h=To:Subject:From:Date:From;
	b=Z9CHHF4Mps9KrvPmNX/OrCxGQQx9w5m0xwr+K3z7Q+x//SMIT0lWHVYRfKjLEvLuY
	 zM0PzfhI8qmOx4JuAvUVM273cmhK8kw6ql60lGAo0tCQapYUn1fYIXs/6fFUKwRV/s
	 +QfW5mve1xQix+/il0fdfnQYi8Ed8BSTd+NXaeUidP0ecGG+50ZL6/tloABNas43Wa
	 m2Yd6matAtgf6hvbntw6AHOHgiPctgDBf57mo2WnIoOkEi8taOAZNGJJQDNnrJh1l7
	 gAChhb2DvOn9H14fCTxvG3puNy77jCduVIDGSto9UZid3yZJDCpbXB2Lej1XYnm+mJ
	 JPr+fxgpFuPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97456C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173515359.28067.9185727520922242286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a789bee2c1b9f3179dbb550366b54808c32fec21ca31879e416335bb2c5d3032
Date: Tue, 23 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721735153
