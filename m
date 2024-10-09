Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2441922C4
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728518154; cv=none; b=Kp96Fou+zQ8iugMtKQWZ7gNaXacLxi/xhuBosCgk7pKS9bR96QpiArRAktNn7aUaYd+yLj3F3vh+F7SE3Fe3dHHhum78O/AVYqlmty66uWILRYEXv/FTaCxyHj96hYpnou5Xl/TcD2GAaRft7F3NwCmCP7wgjkEsl4sjU/8a/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728518154; c=relaxed/simple;
	bh=foYvuC5dBa4mZ90k0J6XWWNYxDU5zS6eqKuAQ0sMOZ4=;
	h=To:Subject:From:Message-Id:Date; b=sQXb5H5ES/VhBYFtpD+d0HQGBm/PtbFkaVNkJB5JbLRC6pag0nfvU2U7P1FXII3//u6zS+Bja7ubDCTH7RSBkNu7dRU6XyFTq3c+teFD/zLKwZ58ZUNEbnYUV7eQ2vVMRA6uKBC50M6Uut/NWYkmXkFOxNhO/SaQl1TB52NISEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDoKZZOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDoKZZOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0F2C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728518153;
	bh=foYvuC5dBa4mZ90k0J6XWWNYxDU5zS6eqKuAQ0sMOZ4=;
	h=To:Subject:From:Date:From;
	b=NDoKZZOSsK6LNspC8uLFHQyGTc2pmWXVFrpWH6CAVfdQfZctMGwVT76kbx/jjj94B
	 PXkLWvEcux3ftD18MetleG9m6KD5spDz1pEMwV0E8odxP9Vvj9jS89eKGvR+87lvKU
	 LMKe6L/NNn5GDqyOVISd4bTkYY1JHA9XSMk13Xwa7f78VXPzW2/+DiqOqPxD/+geYS
	 yXd5TA9oH5lf6PBO34leSZQY3HaB1X+yvkCi8lEcoWWZ+i7qiVrtFVmP0jSqEiLru9
	 VXrKEaTJxSYv9yucULuk+sY+UO8QGC/FFYixGVJ0q/VlEmDygmJ2r+lI9pc2IeLuRu
	 Tpc6XgOLEsefg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2F0CED611
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851815361.15629.13427510938626674616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b336ecd970a9f1e6812e20ee7d6818847ee725b3795ca18a3cc12f9a4376d657
Date: Wed, 09 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728518153
