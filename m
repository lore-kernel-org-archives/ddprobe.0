Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E472E3E5
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716054743; cv=none; b=S1Xdg80H0abdF3qb7GzJRyHVXJPI2+eZY8Jmytb9xDANfP8xuw4EJcFZuJy4QEmD/Dn7oMWTWTAD3YQ587tHNIO087dnZGst4gpQ8/7GLG6R1nQdGXuGav0d/4V4fDqzP51ul75umNP/qfeQiZV87U6fxvHJAYfifXb3V01eAw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716054743; c=relaxed/simple;
	bh=PqZ4VIgsq8yMdrPS4WcBw9aF4gSo2xY7RZlNWLZFSfQ=;
	h=To:Subject:From:Message-Id:Date; b=sXh0KDqnCXsnxlqOYbJwJ1lHOov9b7mWjRMZWOSKlL7VMsWWGtJrSksB1lHJuuhEmT5L4m6BgzW7FiDw5dOOKSEmuUBPQLIhjxhBMlLZYAle4xM0UXKuisFcoJlXRfLXNhesU59p/DBlHzAusuuHKWz+ylyyHX8O3YLjD/DBads=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgAn6pe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgAn6pe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716054742;
	bh=PqZ4VIgsq8yMdrPS4WcBw9aF4gSo2xY7RZlNWLZFSfQ=;
	h=To:Subject:From:Date:From;
	b=LgAn6pe7dljwU5PmWseB1jDvMIOVAy3o6qvwfrITZXkf1eODoFBePcM9s0V3B6tHj
	 iHhT5GrzkPgE1+aQj2ECXR5jcXnyaH1OAhDMHmMtKOkIbXhKsp/sUnAaj3zCwPt/hG
	 2hhlU8qV0ZoksBER061IuVSwRtHB4uRmp1+LD1k9Y+qU4IrFSAm0BOGYUSQaX0C5u+
	 l0uUtcYRZOk1RtUj9x7GfT+emI8oeizd6JI2N6U9PrTQeIRb9SDwJVa/YD2paqRbmL
	 E1xzH/0ZM5yITGNch3ltkq1vaAzPncoLR16Ds2ZSMZefmo4K5utpniE5g546eNWXwM
	 yLnrQ0mkB8LpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B5C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605474277.22449.10680922763766315676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26731cda8ef9f11f728ff47df84a7f8b89a2cab7b8d8d2af8afc214cd463754b
Date: Sat, 18 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716054742
