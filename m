Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449BB47A62
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725721554; cv=none; b=uyMYE7sKnuglxIvex+xq+HqaPwhGt9dQtTpJhjdvFzn6R383BNj08eEZssIkfOTGnRgozA2vtdjIrTnH0Jp5zF1VepTKqM0qRjIDC9Ljr3Vj2cS9iStvP41x7K4LVk1YtfX9DH8zRRMyxaNaA1uNOkHPXKgtSRH34PWPrqIRKhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725721554; c=relaxed/simple;
	bh=ncwM1FqQxgaFZh0GEVsxDrvp6nlRo4slbE58y/DFjWE=;
	h=To:Subject:From:Message-Id:Date; b=R7C5scDkBl51vziIyDUoErpT1Jwc98A6wX86Nyiqk3LB6ols7JjLT7qe1971rCrnYaNWZK86LupH79LN6jspsbp4Kc5BrITiKMNRso1mvoijq4J6OmAjKbsbBc71zkazkGMgNDG1Y4p3PiObhCFWrncT5BCLJi/q4vV4gdlIPsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2PF8sJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2PF8sJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6951C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725721553;
	bh=ncwM1FqQxgaFZh0GEVsxDrvp6nlRo4slbE58y/DFjWE=;
	h=To:Subject:From:Date:From;
	b=d2PF8sJQ5uIWDsGowrCY+okExvbHfZKBOLLrx+NkdXb/OjiQvM0eUqyknr6Rb21Gy
	 udvJ8RBC0q/n9AVYmAS243I0VwPOZPafRLU3OBpeGUUdQGgwTrcJVwrGa8a+hiFvDk
	 jPySMUNUDtdJALEWdm412vlmJu8vAFWe60I8sotkwp8VyhR1Wmtu7wBKSD224DZK9f
	 hcRRvPsM5iH8a4VOh7WTLA7AHGAxHsL5j9/RRaZpZ+QIu4DEzU+adS7ez/W1v4xIiD
	 ZiZlRVbXLjxNLh4blhrZH1+Q3LbeIeLCCOFDVwCDSdyFBkrK55h4B85Sjdjpe3qjL9
	 1vzX2LNVJwbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF40E6FE54
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572155368.17359.8361625524021159591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484c4d1180c2c82b73451c2e3728abebfe25a3f48961a0d7e59f6a3f243c4cb3
Date: Sat, 07 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725721553
