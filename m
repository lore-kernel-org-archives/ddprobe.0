Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83D25F7A5
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780244674; cv=none; b=tcNZTcvxQti8Jt5u863GJgTe6ZX0lcJ5tRU6IBhHvy5PGIQZClpiCAyVYkup7nXG/2eQa9fuYFvOf3jvBx++HU7zLONq8VzbQtrey0weC1+iUjvdV6ETZVxhPLcrZwufgpkom33rvhFaRBVqC90GlYWUvWd3OvYv7eDoj+fpXAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780244674; c=relaxed/simple;
	bh=qgCMNQY8R0+FmZuO4+Ud2r8srPBsTzK9ml9FIod2G2M=;
	h=To:Subject:From:Message-Id:Date; b=N9ysIf2DbMnl1fCt4R70HD0qJTxiL9vpiY+vy8xqcOm9W3TGRVyF0OuGSG6miOT0raaImYsDOfNdBjOXl453m6m6ok8rfmoAAGTRmMcaHyT/FftLq5tHkdT3EeRFPsOsYhfiajuV9CKqsLAPxR5O5XCjXHYjKqodZlR6jzecf3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An8CZbea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An8CZbea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AFAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780244673;
	bh=qgCMNQY8R0+FmZuO4+Ud2r8srPBsTzK9ml9FIod2G2M=;
	h=To:Subject:From:Date:From;
	b=An8CZbea+DgXSE0ZkM74sl6YquJaD2idtKceGb+fuYvjxWF8qy3UEPLqnESPl0vxA
	 /GpbiunkvdLYVzL11C48cS7aNYQ3fvvuqFGcgntKGqe+KHHzEl28VqR6rhDk2W8isU
	 Lmax5mr8fgobuLH5p+GZG5amoF6dR3Lo/tWa6vmSGdEQThs2FUeT/VgiZEU9bvUOxV
	 WCQ7UuTRSXkzI68aExFYMS86EtWXsUov/adH+teOlIAQY1Ihe0XjFtHqu2YJNy0SX+
	 TB9qxN8n2cam/bvEEITTGzQs6IZhjyQOOE+IRtf3Oh0xjgiThx7RFbGI7k8UUzgWKc
	 iPrLjVEaH00vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D6CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024467368.28552.16333496817604896550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30947e1fccc30d307d04d259ce321880d92e7e8b6bddb6419f784215aca01c63
Date: Sun, 31 May 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780244673
