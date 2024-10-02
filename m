Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3155D1D1311
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727890554; cv=none; b=YPeeOvEtPi/6mhXQq04WX7/4028wSz62wnbz6Iz1QF4n+UeRxBlLiE5UJq3D3hlp/yhpZCAPExsC7/6Yif/N8PBcSwc8Rw38nI3ksc/a+SjZQEtszn7pRclbJFePWw6Q9tAhQiKeKYLiytHGs0wE/YRwIGjL5GguseQAnLizCio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727890554; c=relaxed/simple;
	bh=I4gO6KpjExeUg/qHoHC1Ly+JbSAEiLvFYdZvzq4zVu0=;
	h=To:Subject:From:Message-Id:Date; b=Br8+qAoz4LO57y09o/HaUdMm1TnljZnGWZc/qxkZEpe1bFz/XPzzpahazwt4UCR23r6B2PV6PwIorIF/fP6OV02EgcZidNBHV4GTFh6F5ttrL0NAvfEfggnSY7Grr5G2NdI8o9Z36cisIWwsVE/eXVzlw+OHdrAAEdhHelwODxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxtTdeM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxtTdeM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD6CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727890553;
	bh=I4gO6KpjExeUg/qHoHC1Ly+JbSAEiLvFYdZvzq4zVu0=;
	h=To:Subject:From:Date:From;
	b=lxtTdeM4dOtxTNGOludB8l9xK2a7mj2WqZGUAat+dN2SDaBrANpAMy0SCQE3qkSM5
	 ZF/opmV1AIrApmES61boUb0eULkX3XU4LpnbdvE87luwuLZUEvdiWwBJ1xVYuaJf3U
	 GHP8UU5xSRK8kqL6kiQyDpgU+SsPMV6wAZ6rXgOQENQSVsbbO4imGZ79LxUf+05TTP
	 +9k0l7fXaJcvNQnkuJPxUcjCbcVsBe8pYFG9QWxBTWtmIJdGfvq/BIl4tfnjM6yDxx
	 5+0shUOEBs4B4qmIYOjKuGVhVwxAI6lSb/e6agaV/wV0oKMlVjl6g4Pnur+3ujVlJ3
	 sjeuGIe34fwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96744CEACF3
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789055360.14673.15379371765231352018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02b3db244faa25b186150a0bf72284e5e6d1a59fcef0ce902406bf3c691ef31
Date: Wed, 02 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727890553
