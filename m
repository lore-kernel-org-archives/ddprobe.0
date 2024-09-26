Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429711898EA
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727394954; cv=none; b=K01cOYQEE+okZd4TH/pkbdQJVIRBa6FEOTWKJL4inpFKA7XRGvrpxQcdUkXeFh76UOONh0zHfqOKe1ZN0j7+sXYJ6mciHmeBQ5fYQU9GHTQ8jXEvGJ5WkamRjFMMo+bBpylXELvy5Oc4lEDp/cz9TXoAsh5kmzBWmByiLfdFPyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727394954; c=relaxed/simple;
	bh=v7mc1kQi+LT3ES5JFFhDLZRUXjOHqg0kOD1MkUfolTs=;
	h=To:Subject:From:Message-Id:Date; b=nLfwTMlr17QclgVczZO1YxsgW74m+zs0MsHfQxsEs5CVP34AYTkKLBjBf63nuH3J2GXD6vGw/WZ/8N7XROkvdEsWuPmIz0CTQCTJfgy3T8OenvO1DHYiIhbztSorfJKEHUJPEMEdDbV5FrXqHxq78jzfTZ1X6b15BpS2XJ2M1KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVluIK2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVluIK2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB950C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727394953;
	bh=v7mc1kQi+LT3ES5JFFhDLZRUXjOHqg0kOD1MkUfolTs=;
	h=To:Subject:From:Date:From;
	b=uVluIK2TpRuNsBv+/LUDtCrUr5Zo37IJpw3PZOcgi6kXpq4sJv1dU6RbcHAfACYgp
	 Fu2yUWh8NJtLaD0RtQfy5i/rHMY3XHg9GnTooJDh4Uj+3ZMqoCJZFNiwLOZxRAp/8A
	 C+nLdYl//xMRpfQCLYolxeoK9kODk8k2pnbrapM6FnIEPrkoZ4a4ucEL2pZM3W1ioU
	 knSu2ef+2aPQ2FstLj6XgLxOyUWP6u/89L7J/+GBoj40+YZePLbJ0OHFkr6LTOKeXV
	 RvpQBy7OwdHmvPIrLlAwHLDOycVWo4wNQoBNR7jVkEtClqlaok6wBeX67Kz1IAoRn3
	 E4bi6EJH7O6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC8CEBF60
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739495363.19114.15256562022209048992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bdb3881141f1a3bdb78717747cd395f0f15e8e873e5a54e1de8c42ec7a4526
Date: Thu, 26 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727394953
