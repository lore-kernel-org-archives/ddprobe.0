Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EC2154BFC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727999754; cv=none; b=JVJYDU0vfY3ECB5PiiUTHu4Vcv8UHf0I4hOJuVXPtj7LgqyN6vHigv8vkaeKNEgbseeOfMtb8xk1Ns7kVd8OVdraoNt7W0Hvl4AGfVvDFZjnDw7oUxVUogf56lplFWdHQDeLlHdfOHHes29Z6XFxNXEB0l72L9YB+ssCl+3BtAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727999754; c=relaxed/simple;
	bh=jf6LzNza4/BFdcmaOYHdA35D0hyesKaa3AektzU2hHk=;
	h=To:Subject:From:Message-Id:Date; b=sU+i40M5v42xJagzNLy697j8QWAjgZ1cNmN9iW/b44Q30+dPfZ4TGnQczV6AGstapICjrXuRJPW8KGXLE9DI7AqH48A/odzDfYDjg2MKHa4KrZZxtGCqpii9VMqQBjl5sCSWmmrsGD2JygXddz6mmSI0Tev/BvKPb34Y6QA7ULI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjsFSo2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjsFSo2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E29C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727999753;
	bh=jf6LzNza4/BFdcmaOYHdA35D0hyesKaa3AektzU2hHk=;
	h=To:Subject:From:Date:From;
	b=kjsFSo2Qt1zOnTDHG807x9A7VwC8B0qQkZbPnhYuIG6z1fGl3qgzvrCK3frvlQMty
	 ZQc6CkVtJmQL5gJ9dyfLZS+PQ3hRuO8BRD1xUeMIneSsD5l6sVfN0zDvk6bGzqgK86
	 JMmhClwhGMnXIvo6MbR4vuxQxT8yyrdQY6PvXTYbAf6ZwUWbMmcjpoeGguOnPU+Saw
	 e1dtcljBO8sqNn/sSkwFJF30pwVgLRDFBFww7F4JSRdFI8LHimoncn6KYQtLuRUgfd
	 /ejrtV49G6dQ6Kku/D3ipp6RtTOdZfIaxOJI5RfTiUy52VopnVvCW0MQg/Fdwy14AD
	 CsRt2+9Ndj0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC7CF34D5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799975360.6701.7940863705732533117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9737a199d68bc728af2ba6a64b657aa34973055c008778a6b263d0544e4cf0e4
Date: Thu, 03 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727999753
