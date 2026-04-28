Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F243859D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777410454; cv=none; b=K8CHxmeU6FC9u0CoUIQVSmKG42g0D6jRfL6W3qOW1yt3hsrhnzmt7UnJ45uxd/igJSol00B8tTNsTHkOqyWbIiKhCRevo1rU2s4Bd3/9KQgxyCvrtKvqfRe6421Wcv3+dzrUxtKbwehjAS5lmNZWbG6NtYEeCgyCzknkvfyXueY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777410454; c=relaxed/simple;
	bh=p3L41YiRGDUuLzvlld7q+X1Imw7ZrAzkYI8Ig3/Y3FM=;
	h=To:Subject:From:Message-Id:Date; b=BrtqMUE68+OYG58SqxbhURqGcaU9oGaimKuUkvkLVpd32nJBJZMgtFAy0pqRJHwzUIBlrLkcZ/VkRQ+xTKtGgbEDG0VeDrNpB4H3VJrv0b68PjBYEXgg34H7LWjjGUYr3Wr8TBxBAx2M9m7IgiNRCZRxEx2RqLLMOFgH/uM9Uo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUp+Df29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUp+Df29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C12C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777410453;
	bh=p3L41YiRGDUuLzvlld7q+X1Imw7ZrAzkYI8Ig3/Y3FM=;
	h=To:Subject:From:Date:From;
	b=XUp+Df29FtyOBJkfFVoGGxcHVjW9NYxyE9A55w5SGU7RY6bcUUXH9JCSwEpx8zZpV
	 QO7uZyUf2p8kKoy1ZhUfAx5jtO6PbcxR6afNBEgTSBEUVMbRjoOf9/xUANgtbFdGuf
	 wWgWAbCbgZQ6CYnN00uh4BozfygMmFnL5kbcf3WQncTOO11jkbqPLRCpUjeAuupOAG
	 W9HayrqqA+Eb+lxpgmBJE8cUENpBgUgcBij4MIXoHxrVKIjRDI9WwnKS2DeU5JmfE6
	 vTryzGHkIinOCSFHHID4s5Wx25svQIrNneyKGYFqxCxrVqDDWtbkyCW40rauqFnazA
	 AKZRoHi/NsSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA010FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741045368.21705.3381214631127589022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99771e38f955d447dfbf3be806ed1de13d3c7d70ca27c973f3a2499cd46caafc
Date: Tue, 28 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777410453
