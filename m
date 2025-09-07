Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EE82773DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757263195; cv=none; b=cEsy4Ushq+o7pnj0ZQjDACFrW+ck7iyWxS6DDdmmUoXHB4kZA2ZFsalgKRW8UuMBauH6USbh0eUL/9G9jw5sYObCPzhka8H4ppm1iYXd3D550x6/oOa2ySPwXqr1eX69TcMaBrfrAYoy52TM1b2Nsk2I1nMRJl4R6iOOoU5eoZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757263195; c=relaxed/simple;
	bh=CxxkU+rP8KkG+UbcA+5EoCoY1wkpr8vNQhUxvXEvCaY=;
	h=To:Subject:From:Message-Id:Date; b=Z+aJF5Oqh4XJHFHrUPalhCGzxR7Ayc+cHwI2TDWK7CJ69H5y+0EJvKbRXr9QKGFO0QRbBnrKSfESJF+ueEovERy07Vhz/TBRaMqVdJEo41bcMLcWOW6o0t4oSrAfDBQeL7EktuidvUzjODIsQ2zCljkTKsih0grAsmZdArfC8C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se3fvMq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se3fvMq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A882AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757263193;
	bh=CxxkU+rP8KkG+UbcA+5EoCoY1wkpr8vNQhUxvXEvCaY=;
	h=To:Subject:From:Date:From;
	b=Se3fvMq3tMQxTT9AGIOIrtOvoxsHKcBXUMF3DEeF9EUfMeJpJnIUX553jxNl9YYsP
	 jTxpJPgZmnZK400fKcca6HpAu1OUwNNLe9Kh6U4yNONFSsLErr4IH++kDKyTSyiLEs
	 O2cBf6ZLZ4iupUc6077yhWQf6oZasoRaXjqHHFE/eqR1QwJK2sJyM8Yg4aKvAFfIjJ
	 tcwhJfCSwI2bPHctULr+42yHFUm/4Tt1TBueDd44mcn1123zsiEdExG2ZXUHrV+VYW
	 lKK2ZxklkfHUtqt0FHwnG1zB0CC7sk2ZkDfLSOH5NSiTxatGQoNCYn+kCpE9uQbVpm
	 lZ6VXUOyTG1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC7CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726319357.16626.18241471669869489815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13da2a79dff15188b9fad85df336a982fd4ef4938a6a5b2e4c2ca0e8a6c21439
Date: Sun, 07 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757263193
