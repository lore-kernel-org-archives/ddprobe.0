Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9A822A4EA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096594; cv=none; b=ZIXGn9biZIbqbKdGnbfAuyK9g9Y3jhKASSYYnP+rFHJYHGV7DyQzpNrsSXC8xbFjdu8CgGzGs6hxmXzGIhHYbiZvMFV2Re8dcQ+2+nTUAp2ejw68EhM2uARMNjKFyccNJAuLJ0Nx/icya95hnXfGWXuRrxr6aAzMgS1KjQMpFp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096594; c=relaxed/simple;
	bh=li+tmYB8lx7Z5j6C3FUJho+X6nSA4dwDsp5uisSqUcI=;
	h=To:Subject:From:Message-Id:Date; b=c/Bo9FsLXBfX6u8LoZs/jLImQ6+9ZVmpNEY08HHf3ZylGVBoRZ/8fZFIFNUVnikz97kp1eOhZrtg4qpyXvk2L+lJMRxd2Ijc8kXweoVqvaE2qOTJnRHvWcHojo6wC14T+PWqJeQy1mqPvkSfIIgHuHYvEZ93QAuI2kCnYc+49G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc+EyxSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc+EyxSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA39C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758096593;
	bh=li+tmYB8lx7Z5j6C3FUJho+X6nSA4dwDsp5uisSqUcI=;
	h=To:Subject:From:Date:From;
	b=pc+EyxSlgGc6ccF9U5YezeLaGjB9rYku/zEQMLw+qIpfuRL3P+L7iJzxPG7bGmj8y
	 VfiloN9GLfTE9V77w8ZUZFQu9T9eIEcMng+rIILPG+r7VND/hTiRxOucKNTFweakyd
	 6xEeFqETlASGK6IYJiXcvIIBfnVaIkh/Uyj9W5DXgAXjmXpeH0HzjELWfZ7XwuVwfu
	 cL52PZUBAw3TQOA3bTXyniP5P5Y25840+KJw6ttEbebjv77Fo9mGe2/nR/pFIN29Hl
	 VxGda8YhnlkHsY4yNkYGe47BQfTGTwWC5s1RXs59KdRbOqaGZraiARve1aa4MtQbQm
	 UfR2/ypSrWTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD3CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809659358.11693.1369367590001572179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45278a198077e341f184e0402029542f9aa434334e19eb436af76491133842d6
Date: Wed, 17 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758096593
