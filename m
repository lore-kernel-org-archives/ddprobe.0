Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1691940AA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727898354; cv=none; b=TuhHixDxpS6L+hye8UOK3c6Ve8ata4Tfy5LPkNsrbD4d11rZm+qWtmrcqW4Y7Bex39YTvXI/hGZcIZoWx0dstOLGX9vJD2quMTkxJBJpHgtUGm4WqkoRc+jdh5K4Vpcb47psQIcoX0plAE3abFN2Gx1cbYPxNKbVTYwfAMdz0O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727898354; c=relaxed/simple;
	bh=dgYZodKNp2RhG470HXiohP13op2lf+bFgUX7vNHpDjI=;
	h=To:Subject:From:Message-Id:Date; b=hQIds9k9CLBmSjko9FhmuL3cqt4gsZvqq4yDLSbtU9tnDFRHh52mQuZd9CXBJqE8z27BFYi229GwEhfe7waE3n+6oUoJiqNVaBTlqKmP203fWHCkXWKiS/lc9SbQaRrarrgCq59NW8CizTB0JFthEIkcmEhgv7HvaYem583zWqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJkHgrKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJkHgrKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D8C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727898353;
	bh=dgYZodKNp2RhG470HXiohP13op2lf+bFgUX7vNHpDjI=;
	h=To:Subject:From:Date:From;
	b=UJkHgrKROGVDwTMKHHYpyAz2oq43Kwva0pa3np29J7S5b2bbCsjl/8KuZEoNwH4IX
	 QTWxftJ2TLTI+QsQbtyuSQk4j1hsgQIq14nFjW7woIQBYLE0aWakwSe3bbiPRFOT7s
	 YWh1j08PAeRRyJ8kFpSOxlzelBJulSzcEamPoFHEAXTDl4TiXoe1rdrma3LF+CRomf
	 /1fb79KTyJ1yeuycS7UkPRV1XSnHrXJw5w8yZ6gVZgaU1WBJPubBry7Fbfn/B49dVo
	 OtFrMUxsZ5nGKQUk+E7VNJJX52hffV7LuXzLF3nvQbiUInAbhHxlnF24jlfgw1jCkx
	 hvesECv8PCeAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F49CF31B9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789835359.2464.14291512046670766942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c45b62bf4b6b24803870ddf43d4fd224ed02ba297d617c5898ba3d227612b56
Date: Wed, 02 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727898353
