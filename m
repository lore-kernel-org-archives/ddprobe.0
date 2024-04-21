Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57920205E26
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713689423; cv=none; b=SV7BV7ypWFDGfCiCfdJtqMR482AHorqIkmV/AmiT+hq6nfyEUKcWhj19JGD1CDOf26hE04I7ahdwf6MVmHqBI7sXvlJOkNOoLPq2Ja8FuDWcd68UDCy9exnRPcJQAVTfGpY4OS7TYwSYRgxOFXzp2rxM9kjmg0W1etaYWYK+zG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713689423; c=relaxed/simple;
	bh=cUERvx2e0YtnS8Gl9f3cLse8DdvwaDaPXvH53vEDrgo=;
	h=To:Subject:From:Message-Id:Date; b=HPhtwEt0MZ5+DJDfesPp1GYU6xjm9Outi4bickBmnzF7iqMKxuP4mdj+b8UJ8kMNq9GvkAvwedhRvQfGgUGaiW8jxymG808v9qF3PpThOYd7KjYngFPvQPIhkuyoqkQI5N5OZ8aXr2+5p8v/CMYUHsmInt/7drXJ32tr65lwKL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqwO0eGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqwO0eGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4280C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713689422;
	bh=cUERvx2e0YtnS8Gl9f3cLse8DdvwaDaPXvH53vEDrgo=;
	h=To:Subject:From:Date:From;
	b=EqwO0eGRz5rPxj8PzrvHoDPmOagwFkp8EolQQZ9wTbZ84x3IC6e0u5n7MG3ptZxj0
	 NEfYXXRlYgFIlBYAQnjIFAxUGXQitFrfXEFS/M/TWgAT/DVy9SXVSgitzbxeKr7uWJ
	 cuV4TfQSmlvDQv6fuThhHBIZeHwc9RBugOFI68lwWpcztutMKdao6+NfdGQnHerH2g
	 hiPlfztXr1pt0U64EzQQGFm6Cfc6Bys4kXe5DeocR1cQjKE7wXRUSbvJ2YDRqYNSiF
	 hF0/vbxCWTRvp9wo0c/jrPJDJmq394Yb7N2a9h3zS2p9dIER6kB3zgxl2YOfNv26lO
	 8tTV5SJeOvXbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEA8C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368942280.18256.4258186093650371107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcb43619b8c30218d4f85ac6b5cd7ea28e543bb286ad39473444584db1f72bb
Date: Sun, 21 Apr 2024 08:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713689422
