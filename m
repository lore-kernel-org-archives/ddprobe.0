Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0C184047
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720716443; cv=none; b=dvzItO1ZXQW3naLVlh7vmPylQtJRY6jLB84Rp2wp4k8VS5yLXJMMsBFis6qsxe010QtYKCrb9ufJHiEaiEz0GNJyLu31DcoST28Ivdj1FYhEhA7SV3mMHGcG6IZpK5f74UT5oyqQANsbwWSBx6Oma6PtVACPDNIRUsc2iAJ1l8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720716443; c=relaxed/simple;
	bh=mhREhBAeHJgg4Cck9h4n/wPG1vG6ouf4orfRiuEe0Ok=;
	h=To:Subject:From:Message-Id:Date; b=DSS4JONp7BaANIP/ocddM5cuS3Ikl1ijGDAax0OiMVPqca++08o3FL1KlRrG3B9hmrvaKlRY3axcJowNWOKz9vKt6bUT5ooKytzgyzSbkf9ji5d4X0MkfH5sFnRtR3+aGXL6JIqmOi5QmSKlcuzkZAEZn/DtzOndfQYjKamsBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfklkQC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfklkQC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D703AC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720716442;
	bh=mhREhBAeHJgg4Cck9h4n/wPG1vG6ouf4orfRiuEe0Ok=;
	h=To:Subject:From:Date:From;
	b=KfklkQC6GFtCCpHySC+r0fDQVGx4NYsObDli7xQ35gd4V6ngWa1QeszaAbo3qoQ/0
	 Oly/ysP1jEw5ihE4OZwIEWvuv2lYybcOpCf3x8ZZV75tr6NM65Btx5tAm4YHwmJOnh
	 1QnY4YYq+P9oNbQOxKV/kl2U/e048Nr8BCxd0fPdeRN77fZmxGafTKmM/l6zS6YNbr
	 qSZbWNbTLzDLRayxwU2eObF4Xhz0mQajV8YIJnnrNaxwqUseovfJviSUn33QoX8xP0
	 t60n+6YwM6RY9DzmFtyQms134sDWNRdF9AzSbT6A0YW9hMY0yXHL9lXTiFHMehHddQ
	 KPSeOKmHe/YRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FBCC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071644278.585.18425109884841264864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c00c880e9f7ad459c108ee641d28019754739a420edef62615c403341a7ace5
Date: Thu, 11 Jul 2024 16:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720716442
