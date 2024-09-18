Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E1B10A1C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726652754; cv=none; b=APIa2J3Nb/DZ+qo6xeDqidhEA3niE8lSSvswVvpCtxmjY6gS+1qN2DFgecwhBhmUPnpoBVgiOukGYzxBDJ+5hGvyx/Ph/qyx/eVNzfD3P/ArW3zQrlnTCZdEcnpMvVQ0kH7mQjTaCVmZvutLLNm8+vhjl6zOhZQih0dAfr6FDpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726652754; c=relaxed/simple;
	bh=nDdCVRpyqGLhYjKJXgCvp9Qcha2AUS5Wne3Kg7pMbQg=;
	h=To:Subject:From:Message-Id:Date; b=N01AOAehQIDHCvKymiP/64muKE0GjyRXDujilLtI9BGCgSXs/b3h+aooeUNqTajUHU+yrcBF9ffnSL8JlbMmEFpHZGRICF1nv4jfMRn8RY6WB+bR+TBP+KcilOjpI3qqPEYOjwVOuFrxp+Xkx836GXFNvOj0w3IpPsZA1MRyTbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKfTrBB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKfTrBB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7360C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726652753;
	bh=nDdCVRpyqGLhYjKJXgCvp9Qcha2AUS5Wne3Kg7pMbQg=;
	h=To:Subject:From:Date:From;
	b=JKfTrBB9H826p3mrcoe7XLDBCtdDrczr7kUUh3M5uKhalS+mdkgPyBySylvm83dTO
	 ngmfp32JeMR94ktMYBW9dW7kOpR6S+tsJeEHXNkxN0QTGd9KjtARSc5wdeJo+tSqrM
	 Eu9P+JXYA4241JjWOnZvcIwV6e7HuyfYDdkYwTMJfh1a2MIWxk69lMQvPiwpxGlq/w
	 s4JyijyRwHKJC0Otl/YCEoiTbMwsCawugqvXHx0b9ijvz+qQmhgSegDsW09dEX5OUx
	 y6iMrOVoY3MKcDtVpZxkKRlKtJIOnWncoq90m4kC2PvlfpahehoZqyFNXuintAv3tF
	 /Qz5Aj1nETlBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9897FCCD192
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665275359.16195.2240999584612183205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82689527f50be147b6af3157d2bfffa3130449259a7cf9b4be1939e5bb013643
Date: Wed, 18 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726652753
