Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703E144CF42
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772133294; cv=none; b=O9WQ6AjhB2skbsChfzeBWWoUv69ifmLlZ/aDyK04cEtmZOU8RXHYu3d4uOOoWtnbfj04EFE9YLWUBt3NW7GCZ1iqdH+vaT0r+wswQ+03/4FD8vmv1Wgh8bOfPX0uRDAccFiZOZh7j5OBaqeCrr3O3NgFiDTgf6vh8ocXKfvwon4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772133294; c=relaxed/simple;
	bh=1kIA22cgzFeI1FEo/LWBm6bRXw98cDQCV/V0DcP/toc=;
	h=To:Subject:From:Message-Id:Date; b=Cs+GQG5DIyjSvlIMEpZBL5PinwmqAmhmgLpeobCbc/ohcQtr/uUX+MoTbmBC3vMgd9SXGZWEs9plB7vc68PszS2azPyjwy1XX4rgcszxe9aLiLZoroHFpJgM79p7w8TNN+L5Rl1TitxpnosO0+YvzVS+/tDJ71Zi862gY7pu9Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQNvyWHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQNvyWHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7036C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772133293;
	bh=1kIA22cgzFeI1FEo/LWBm6bRXw98cDQCV/V0DcP/toc=;
	h=To:Subject:From:Date:From;
	b=tQNvyWHYduC/TTnRFJclZ/Wcc+QrKnUg9AfsIKLHUsIlyQzBycbk3Ndv9d+o5+wQz
	 i/XGha1nA712euOv/Qfo/4mc0axf1JsxzsRwiMibr9US9j0oV9yctRBfJm7Xzc5Tkk
	 m/eiG8QqEJf+in6CrtjVwNsglKXCZKmrJWEhzP76Lve0LOa292UDDry3TgBTGRbxnQ
	 LytCIT7ZuAtLRp9CYoN/mNpl4UovESjwOkrJxb4lWciEjPo28PCJPWex0XYJdZo8Dd
	 u6m9T4mKSm0pSpHhM1cnYrlIzxFXtDmzmvWEjs9x9l0ovrq+MntOyCd4SgwKeF29aO
	 t/FCWaxcZwX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9CAFD8FF5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213329364.17656.12998045813132749730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db466a02708675387201d7a26f205647b695d97472af9eeafde9292e9a63b4f0
Date: Thu, 26 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772133293
