Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505FA3596F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743353994; cv=none; b=n5aSBkA6soxQIbiVk6y2zKgOd9BsYAlDczjxHvAzsV1KXTXZm8lY48N++AJAQMmNu6uVVfVUo8lU/8TuSHDIqEgtocz8Eyr/6xuZ3WKboO///y5Ak9xqfZ14uuPH8qe+rfI5n1Ve8zS8yrfShUQkvgHXGbFWgO6ezYeGPpRxxwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743353994; c=relaxed/simple;
	bh=dC6PAICIiqUMTHCrrifQ49csvF73mWvnxjvImk9K0mQ=;
	h=To:Subject:From:Message-Id:Date; b=KUSgjQTysNYDsDjSF21uRQ3MPiKeHFqroPzoEBZps52QyCSLIiD3VhtXGZKmMIP5OsxhFrzLjibW6nLWPVPprurBTmPHyjeMQZlIDdtHxAuh1spwWRRZMp1Zhc7ln/CntGbnDzRA8+Yqm2SjbBeK1mNqe4pjdu5V2MtXp9ukvCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duUJ9hSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duUJ9hSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12E3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743353993;
	bh=dC6PAICIiqUMTHCrrifQ49csvF73mWvnxjvImk9K0mQ=;
	h=To:Subject:From:Date:From;
	b=duUJ9hSxdQOfHNboUs/mkNF3KbhW7UHHhVAtDFcjhQJMKl5CIRjV4dY0japJ0mq9P
	 CtWLrL/toC3cbdJZoKMEYqwu/a1TF/YoxTASzL6rTxvJUsor7CdHNNONWXbv9/ByOR
	 rR6cUL4BYHl3WZ9IzjVZOOC5BRREUOhZ9P/dvEzDMJMNEXgj9K3CAjrw9bZrxkcAwa
	 A4LjGFgnlrtS91AaBCcH45zUavlilTKwBVrcAPiQs61aDXO5VV1H0Ppawtbdu41vy4
	 1RQCs1RjR+pBBcNT/NC3w1s0hIZQ6Oo+eCCDY34MEMXgQ/wkG+XFk9zNjUR9cacBZf
	 poH+fJIpv7VkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53B2C36010
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335399366.26317.5356579357105249029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339e93ae6e63fbc6bc29b64524d3fb55073e9823e1427a12be698bfa510198f3
Date: Sun, 30 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743353993
