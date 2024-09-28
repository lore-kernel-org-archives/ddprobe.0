Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB2E47F53
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727543154; cv=none; b=prQYhcNN53/c65FKTJskXsAYfvjELbDvmovIAsvqnTh07Mq0xG4WMn5bsU7ebF6wCEtjyBmiLWo+89cN1baxapjxy0WPCJUpAPwPYPsmBRSDCUKUUKx6J/wwQ5NJ4Pj2X0LwBQk9nfUq7Pb+X/V7Xqu9JdQRD/OQY8qvQywq4lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727543154; c=relaxed/simple;
	bh=/hn0782z1Osidqb2VdEn2VLh3Sw4SOowehYC6vn4+9c=;
	h=To:Subject:From:Message-Id:Date; b=cp0H8ICuJVcGqZforrvJtPDc9uWBWWfWHY8jpdoBH8dYZpj71pLkhEYiTPbauFf6f4aIWjYwDZxs5vjXYetbFcSCZnlW71ag5Eb2a0PsdQBbOmMQ955pDCTe8UkIB+ONeM/2MsWQJGkV6gBE1mwORR5LuFLwcygoywfNbiw5VpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0UEhf/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0UEhf/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9217C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727543153;
	bh=/hn0782z1Osidqb2VdEn2VLh3Sw4SOowehYC6vn4+9c=;
	h=To:Subject:From:Date:From;
	b=g0UEhf/T67zGa+ChtfZHWzhdLu2IPegqN6UsJUafeNvquo5b3Sx6NrCbGxZ48niSx
	 /jvaNCwWYoIEKMO7hIg+KTnM1CkkLFjy9W8IWeuSWlkMmnA9hlC0CtKz51L1WiSQyD
	 afl1Wth6RZHCMXgthzzul/RwppWORJDEZ99OcpkDxWn7Jf0CoRr5kLmjyfyHJREtoj
	 HjL/GYyEM1edfr/BJCKj/nfu7WMYaBv5Nn+tOSlvwJ2tO2FNC/9ui5tw/8coxJqhWi
	 G+c99SVDZYd7X0uTknMaZXtQ04C5By7dOWHB3KFzBjfJLnLApHuH4sc1+HWyQgklCL
	 lqy1XaxnA4nWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA0CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754315358.3717.8655557735478656917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a849877f276d964a0f1379a479fe1b3484dc39aeda96379be77ffd107e5fe6
Date: Sat, 28 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727543153
