Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A511EEE6
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738240554; cv=none; b=pLu1tWtUBIZm+bFmGj4Nm/KVcwxFDJ8AZUBUm40S6xAfZoQoUSM305Il4omkwXTG2Gw2PNg6etLJkz1IlYZ3QeOVBrVx7ehbS5iwUkAAGbCbpOlwovGFCY+jHNZQfvPLI0BCdqptRC5YvpvUA2ndiEtGWK+0Oe0kb7c1FCv8DjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738240554; c=relaxed/simple;
	bh=dzpHKEWrFH5hvoBAqBTmw/cebyNg7B6Y2trYs8Lg/f0=;
	h=To:Subject:From:Message-Id:Date; b=CRJtQjWpP29BQRtmgbfVqGAf7MYdYBohobcQDFPolU5n3BBgRq06KEM7KX+tGXHxMu8qXVzAaaZpFkf/hkN5KK91Bvwa1TFTyKit46vRrL6/HtqzlxerJeBKiMvjNztraU9RawAYp6OEEuhFGglEWpYXwgbAzVYNEExQmgXJPh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc1P9cFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc1P9cFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ECDC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738240553;
	bh=dzpHKEWrFH5hvoBAqBTmw/cebyNg7B6Y2trYs8Lg/f0=;
	h=To:Subject:From:Date:From;
	b=Nc1P9cFrmOCK219T0OQcltvaDO7szG9ygb0Vfz7wbZulWFUk+eEZOPmNKBQZtTF2G
	 A8PAZvF6n9I7YydwRxaHC7XwYEprEOr3Ev6bOXr/Ymbxx+r77gBHZHjvrvepYoK0Ze
	 32STItYSnYJsSXQFYzeP4xd/TPV6YScXDapKiQjIcPRn1R3fYyFQnbiCIOyCbPE6Cj
	 MC9spvlUSPU5sEKM41jKHHFiQVybvf4NAhNy06eQy4AMVQKD6RA1DQ3OXf9ob0u6hr
	 BvRhX/7zsjlRSYWIViCr55sngfZieJbkRB/FpRxFZ9BNu+/OATileQQiulaVwmVGGe
	 z+Vpy7NmBKC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BC5C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824055370.18955.713482756330219431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fda25e366e03a61dbc20f0619adf1f50c608f3002de1943bffbd8fdb0aeef5
Date: Thu, 30 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738240553
