Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDED36D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713946223; cv=none; b=NwC3l8JupVgnQ/WiWxLzkrkQZrzJ3ImuzZMu2r9ZeSxPSUC2YfwN6FcHoVFswoPuvqyOEUkN1+sL0tfMSDRuGAwGrEZije4fGH7bZRvTk0xUdFO5/E3a6tI/A92mDM4vMOQkEJyH/XORVL0X38BmtXLlXpI/k2y3q5NEA5Hu/3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713946223; c=relaxed/simple;
	bh=uly5SqkSO26nO77ASEc2pxsmTbnYGxMlk6OnPzvJxR8=;
	h=To:Subject:From:Message-Id:Date; b=swQzO8UuKzVdODcdOfvlECG2RWvxtfhcRiGToqaerxgYnoqe+iDRT7H4HHuStU7Akwo7OHdNqFYMDEDjdjVGmM9FCX1TaGcP3J8c7QycCquz4KsFb0NihQHN8VwCVHFeTUwkQwXsChq/fHoaUnR0/GNwBeO0q4gYniHeqcJ7FeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiLn5AlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiLn5AlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E680CC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713946222;
	bh=uly5SqkSO26nO77ASEc2pxsmTbnYGxMlk6OnPzvJxR8=;
	h=To:Subject:From:Date:From;
	b=RiLn5AlRKX0Cu5C9zj1tDryawhx+k7XvQbhFA+UpzaY4O1jzpMIOs8dnpzoq8UF16
	 L4fus+62ZP7GFcD0g7WvYb2BIYXTbfIPStSOxe7Q8VQYqruQKMZp+5PZ0cn//77Hh3
	 9gfQNUzsj0s/4eZQI7NhQ3c/agleZj/J+gdg3BFt3VbQebs+L5kSlhS18NJbVfzc46
	 DCEWsQg+c957bEFomzdBbmocllbS0Urk8uSIuCL0FqN+MEm5B1nWA3DtO752md8HHV
	 kvry7CvajTTNKy4RnNvjkASbOifKLUU5XhNC+Waf85fW8KylYecyqya7oJQSIzMB/y
	 k0g4ox4DXK3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD152C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394622283.4020.7440680414917805921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454a2b5292f8f556024d3b712fe426c1a2b4f73ca02fae2910fb9bbd4b22f38c
Date: Wed, 24 Apr 2024 08:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713946222
