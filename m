Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A3433E93
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783207114; cv=none; b=KTS+W1ehY87/j0eCO1pr0rEjwYMa6gmWAOONUcf+332UJpqrBTHoqM2ZBTyuuQU2nn3HG5SJgLFEHUIJqDyIIZYKqZsr1QdpM1w8COMlgOJe3PIIJnpclSL5tDUpjyOl2vl9EqBmVW3/DpRSLUV4HoX3hLKUxOB4gJcC1AH8WRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783207114; c=relaxed/simple;
	bh=TJqIok0qAFZ3PL2AyrR/33E6O4NhMIlItuzmgyaUfHA=;
	h=To:Subject:From:Message-Id:Date; b=qIGAWQQsfFM8lOrHXIxRzGcM/etCJRTk+JCqMzKQ0b56/v+1tdSKT9Tuh1kSAXk3TkayCdwWrb744HpJzkj92HAJ5ChJw9IzOhLLZ0v/qaJRj81PRwXlI3dobtMM/ln76aifCaVIXveSNLcjiN+iK259kYM0peqO1qjwvV5unYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwsTaVQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwsTaVQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB61C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783207113;
	bh=TJqIok0qAFZ3PL2AyrR/33E6O4NhMIlItuzmgyaUfHA=;
	h=To:Subject:From:Date:From;
	b=IwsTaVQQDYrfyrMDD1ny8l23lU91GuNw/uz2goAHk4iURWOmTfn2J4OAsmoK5E22H
	 +sZ2FvvPij3FRkx8z7byAZh6Uk8bBnyotQF4WmNo3Cy787PAYq5UJ0aObHRjFDv/qX
	 9jHoufHbQW0JbbeouwpvM9MMF2iCT5Wj/98UK5+u8g4TXRuIp0zvsGDVLt0tuBnZCN
	 DSSLjMAT+7bHcVKYUEu6UGB0haO6r1xlGt/l82jCR5pUsJ+hevwX5luvaX+amUga2B
	 F7ykelhKdF154FhM5M6vQHTpQmmKfUNLdrrtfTINbVh8SPHwSPoa2prfa6QWN/NW+q
	 9NBmDl1F09WUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3BDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320711368.6965.575285361226811845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bb2a57937eea2faf93f305e38f4193cc1f3772023708a847254d755ee6d3a7
Date: Sat, 04 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783207113
