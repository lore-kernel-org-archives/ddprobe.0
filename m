Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52D182D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726033554; cv=none; b=ZZcWeB9WEQgeFQIjE/GQzOOLfaw7JDkPRjzbia7KeqqNKqU7IRPMTcO2RpO7ziOU02IgRwhpbjda3H/7bysZ4H1fMyT6bWatRo0vf8oYTP+lIdeWSR8Uz1xpF/6iDnHumJZlhh/KTkvmUcpBSBYu1k1a6jVotlcln2iwpynpCcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726033554; c=relaxed/simple;
	bh=42+FAyoO6+L/yCYjR3MHdRvAL6duQIWFsk9UeIo+vvM=;
	h=To:Subject:From:Message-Id:Date; b=hDpcyxHgwoHYh877rnq9vAhoNHRxRIowTrW/8mBRN11YfLxpv/WKv6TIs+VCzVonjc6WTSzxRi805Sd2xNYxjL4hcZOqjtR+6iahCu9UuIs84kswZ5asFHG5bS3bNTEJ9b88NUbC/Bv3e/gHiCNx3Mwp88bS+g0/Ly32lpKQr9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQtiq8zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQtiq8zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F3CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726033553;
	bh=42+FAyoO6+L/yCYjR3MHdRvAL6duQIWFsk9UeIo+vvM=;
	h=To:Subject:From:Date:From;
	b=QQtiq8zzcigJ4UVyCNn8QL3vBNE/Rla8AJB2wFErjjJ8duFEP5TrEOBqNO5umaTxu
	 xeAZq6IlBU1Wt6lTAPG6Yk46o6G4N36sFyqfoYpI4b5fgENFszuQg76mRDptVMLsqE
	 Yp/tSlM7o1bsYvo3Lk+BCSrAdo2yKpsmC9p5AZ6Ap3J0ZV0MGS8F94d8FiEgxaonN0
	 Xdp4KRaMiODNHVZ3MMNEUul2Px47Jego7ujRaYAc+h1nEX/FCjeXeAjzm551wbSOJo
	 PSGAaMvQryJB93jTJPzOMBq8uoqFmTbkzCVGSb/Evk8bjyH8j/dxcSM6p7K7NQTl6+
	 DGw9IrtUY2w7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444CEE0209
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603355360.10803.12672507184646703570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255ebed321aaeafc71f2f343b84d4cf7ede897f926a3353749d572abc18e4d13
Date: Wed, 11 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726033553
