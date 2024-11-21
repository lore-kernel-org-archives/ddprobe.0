Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1BF1537CE
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732227354; cv=none; b=l5yWXjHkUv45UWnIF7B35fSk+zINBcIIQmR05sbCkU2oYV+mkz4DO7IshkgQOGmnhhNGTM5Uj9qTntKbTXFQyTOw6Dl/Mi/osVuMO2SjuPjfvU+DmqdiNG1oYDOfA4wYR/cET8pSoIylCljFqY6TF/JfjQ51744oUKXHLNcGmnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732227354; c=relaxed/simple;
	bh=Zu+6Ygsisf3pSojwv85qkK6XCb71NTMjuj5KfS/P+d4=;
	h=To:Subject:From:Message-Id:Date; b=l9mQ5pumOh28b6uhkuoaRmV3bAw5JeAY4IXftgMy9oC4K+yNf3+C9lOoia9X5spYEu/vBtdyP8Ugm0iAEA78vNPLn2aZ6R2+3CcuFQZrDfHsOhRbMlTChmc6UK7G50Bb3zocZyQr3PfKur+SaP1p42sVI7D7aFUKP25QGCJO/HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTy8Ldrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTy8Ldrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A6DC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732227353;
	bh=Zu+6Ygsisf3pSojwv85qkK6XCb71NTMjuj5KfS/P+d4=;
	h=To:Subject:From:Date:From;
	b=tTy8Ldrk1owh5KC0Ry8SnwmWvC2nrMeLX9YXXSExRfJAUnJLDknbA77G2zo0+4C6Y
	 dn4M4L654EvPKa3kyTRaFQWAX7ahn9HxOegzFuJXFN+MiWKPu/GqSwgJ6BEYjOXp23
	 h2aLV9IvTXmfAe/10z3S9KLsAsiYbXi8VRXm9796/uua48gnqj+UYsu6BauTFM4+3K
	 8QZxId7h3MljaAOavt/8lRU5JXWSIr4C4R50XkHS+PtIi1BnPcw6ayAQX/p42dJRgZ
	 SFZDtM5eb2G3i2FGd2b1TZrIcF55ubn5RuWRoBEbqtrShWbzS7sQXzvUODXtz0526N
	 eOwWaTWKm6qdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CC5E64025
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222735361.15638.1852864833944596095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20bcec8fb3fd0aa9fe087e6040ed57feed9e63010466000235b2f9431e2c9f5
Date: Thu, 21 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732227353
