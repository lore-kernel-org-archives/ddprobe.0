Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF71D9A70
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752527995; cv=none; b=AJ8pLpkbVbrqhqZ/Dia/MV+UPZrMo3wp2EXj7e6V2yiOeA+zZdHcDShh8x2cfBBL0Tv56ofK82LCBp/FvLoquRJtU7BRg1TMKsyAZoiLMQb3KRJSQEfd15zSFAnBu/keEmH6E4Yr5pe03FbYcCgJoMqtQfhQxwtiF6ZNxMk/DwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752527995; c=relaxed/simple;
	bh=H80UejwzQgL8lPKq5H/520e6KmiuB1avvCWEFOP9OTs=;
	h=To:Subject:From:Message-Id:Date; b=O7hknLi9n1Tb9FFnbJVk2QM4mUNsGS8haFZq6/43TDy4WqMsBZVwCjZK988XFKAhOsE1e1fjxft6cXWjuaIzybrgyef3i1jg8zaNiVJsRldPrh6xEfrdLnRR/Dw4sbGwquL1POJjUl0Va5f7kwDxtDcPHw7lvO46Bt0jz+75TcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6ATX5YL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6ATX5YL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752527993;
	bh=H80UejwzQgL8lPKq5H/520e6KmiuB1avvCWEFOP9OTs=;
	h=To:Subject:From:Date:From;
	b=o6ATX5YLUhDXXW/ZsYrsWuXeMs6Y9RZfx/50KLPkiFqDoWXpdKSLoSEcVBaggpkVF
	 rcW7Duw4VDQ3qZ6/3Coa9WOaQVil2d/AnL1iuNM2nucLYHXg9aiMepeLXrEfHr2F3G
	 WhzeaAk/3G0DaodCfTfJlBP1wm+jZ5SNQ4WP+e++J9U1xfwwPn43rp4ln8rj69M4kr
	 2QhPKmTiUn+Jjh1zGFao0O3bFXtgnzIazaWdUlTe6X+9tPPlOKqYJm4eWAeP0C8llN
	 R8B6NufafA1fDzXBjfNhvF7xxIVqOpU+Z6azSj242ODER5pnbJYR/TJbRXZXDIbUk6
	 /j2oAbcBx8fxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B298C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252799362.29781.15613245923136485412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4013d45305210953ee08859a44251c4fa7ba36b61e60bb8f710a4048a2dffcd7
Date: Mon, 14 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752527993
