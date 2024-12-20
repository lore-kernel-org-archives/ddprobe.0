Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD95156F3F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734676554; cv=none; b=ADiOW+m607ZjrNkVdCPlFHPxywQPUGE7yS9+jOQ6OyVv12DA3ioLPJJG4a1BluhyMJO/3FSeIQA6kO8reC+bBLCa9Avz6CPuOZ5BwzzDFIovECCC26yqH1prEft2V86H5bbt9lZI0NVOcM3KOQXEmd0U+F09cLwcgaSU6WpDR6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734676554; c=relaxed/simple;
	bh=dVz10Pe5kMv7kxXNAIFgE6F80ZAXkLmr3OfrMwA5TcI=;
	h=To:Subject:From:Message-Id:Date; b=sppdHLkk+QDBpn2WUsAM58yxz1wlZKu3vs1GIv9jRtq4cuEQ2dfd5clg1jbOUxWMPpPs5c7OUXaW1Tr/74pyN5tiUnjjhujAogMNfHroU05xTa3VjBF52mbudQBtBSjXitt2bflDWc8rGr9c1klEHcwE5YR91T+0ggqTaS+VQMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksmdu8jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksmdu8jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7D8C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734676553;
	bh=dVz10Pe5kMv7kxXNAIFgE6F80ZAXkLmr3OfrMwA5TcI=;
	h=To:Subject:From:Date:From;
	b=ksmdu8jb0ajUAg2jDa6kMw9Q9tlWdWzqoYozuCJ7ARaSILbivnshGEiF/i/y3Qx8Y
	 yYkUVa5Ax8zcq1whNWkIMGXY2J8glI0n09iee240oDw0pShOQoKJ9q2QxZziNinzVt
	 TJV+VEvu+ve+YHN1K/MgDh2TmxLArZlejbuEnTgrgszjaFZN7H44BrdOApD2ebb+IS
	 2D1DhwOIobjMfdtf9v+yH/OSPBbGKGeOGSriYW7bYYcRVbxG7gjp+lYSG9Anlb+0O5
	 BLTNYKiDYvgTVazSMzwy++K+p+3sAb1Au2nMzcZqtRIlkc771E+beeuiwV60npEy6P
	 65ZEcG58AhUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1D0E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467655360.5556.7242488425288087956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ac3e287d78ce111321dfb82825d5975b7fb172d6ae1ea88a7db0696c9c28f5
Date: Fri, 20 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734676553
