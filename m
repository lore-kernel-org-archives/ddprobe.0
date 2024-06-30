Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAC522331
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719737663; cv=none; b=P7YjIfB1fvKATRt+9Urpo5h6p6forvXxIAp8jRwGq3UAzVfLFlwfDef5aNx5ZgtdxSfq35hX4AwhnHtnWe+i49So5uA6zgHTKg6zY2HZ2UO21C09PtHcTUbUoEOaaBCb7BBgifQa8D7ulblakSwBGLfp7yHkQkH7PMmSOwmZxmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719737663; c=relaxed/simple;
	bh=e+Ij+e6ieAB+fX3sU97RLKAz1QtlxqwojAr8pvzqxVE=;
	h=To:Subject:From:Message-Id:Date; b=MEll1dHNDal2JZ4P9fwQy6QopH7M/NPxsdrHohLaYRtwCjHj2ljKs7WlZxbq+EcffypXEIT3miJYexPnsPGXZ32g4UP+Rp76E0xCJAjRYH0WxL2sb9h/k7An6Ddfc20twhbmSpYweyS6J0QvS/gZWM7aoi7lTFh1G8JcCWE4UL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWRzJXRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWRzJXRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC892C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719737662;
	bh=e+Ij+e6ieAB+fX3sU97RLKAz1QtlxqwojAr8pvzqxVE=;
	h=To:Subject:From:Date:From;
	b=hWRzJXRD6idy5a70re9cqqpmxS76Qxiuei+B2LZ5s0PDeGo9azqSM9Gp6f5Yve8ui
	 BR67hOWxtDBh1m0vM6r5v3ENwRfcupmzrkmZz9EjQyB0HNw9ugo4PXMdKjXHni5+Lu
	 qFe2aArfgd41iTLy6iw0MjJmaveCIMuG5Imn8C1Oc466uC95J/GsvO0ZPcUXck1GNR
	 TqqmejAR55KsxhX+vIhjHniFaJYkaxdSe6DyQUGmaaZJMSX+1Rt6xRd9FgRtNwuB92
	 R8U5g65Ldjv0jGEJXUX8G76X3+ESUjGRb7wv7NcmYiyQ7X0WWV4eUK5aHhVzcNYXKK
	 cGGfURmLXxm4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E2AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973766278.29085.18224780997914354829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc24fab99d6d18ac37d8d7551808d7b9e5d57b62066a8de92b029893c5c010aa
Date: Sun, 30 Jun 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719737662
