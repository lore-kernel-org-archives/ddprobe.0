Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C7D2BB17
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760851194; cv=none; b=RlAoORjK0A5Beh0ldid9BU3GrqEQazaT9qIxhxmFDUEgGaDdL3iarWVgsOEXD9OAlHpQ5KKdt2F3cfkCZU35GgMA+5nxWqO5/+pLKhw7+ICgj4oUdLVqSr1D8q3IM1HD1QX9ZLz2jbnEjk8EZa4XWhbfAWvF8WizmSLA2g+Qffw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760851194; c=relaxed/simple;
	bh=dsaVlV9vMcw/DafQoJBCliSiNQ6bJ6pxoN54yjUSxwI=;
	h=To:Subject:From:Message-Id:Date; b=QUjYF8QlH4PWwPtFwWT33XJ2HBCnHjJOlmGi3pCRbUqnjAHbXA8RLh3qtnFlgn2LH330jbMHc3LXVVAO2zTVGZmiXx7lDCBnvKdpAvwhpr2ADYlzefy9u5WhnvChsyZFqnUT1rpAP76QRECYs/I0E0T9/zZ6S6xeTod9wKfHlk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6iOWj1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6iOWj1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A21C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760851193;
	bh=dsaVlV9vMcw/DafQoJBCliSiNQ6bJ6pxoN54yjUSxwI=;
	h=To:Subject:From:Date:From;
	b=i6iOWj1eFYyHBWGWTm8mxDUXw9dtvuRarIFVGPBEMAnkH5d1sP5Z8nQALtrzv7wse
	 61fRixu5pNi1nS1XRcGlWh/MQe0OliM4rY7xzsN24JZQNDTNYY/HNz35JOvd0nw4az
	 YUbtHfdv3IrbY4MEGnMbJEvA+cbJvOUEjDRM0wAwphP6q52cfk3UDziojT2w0tkgHd
	 +92mB6KsnOzP4wejshhZsAzDb/JrZdgLPFC6zdlopBvDOtFhWsCrjWAIM6ciDI75/1
	 GWnNJU5RQfGoXtWQj47IhXBpoueDg0mjXmOSHf+eUibEbbFJ32Sell2s3kbKMcYoth
	 EBcLSQtb/BuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8CCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085119359.14642.2431679252953678938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7204f2b74a8c273b03ade6e2b0eba550ea483aed05bddc867771234a0cbb271f
Date: Sun, 19 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760851193
