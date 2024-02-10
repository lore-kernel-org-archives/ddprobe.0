Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030AD36117
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707560897; cv=none; b=QnqkqezFUP6f47q8UCZVwwKH+7T4cuqHoaMprMePE0kIRalu3lzjI8r7qUBAX6lvpzaT5NMH4ZY3O3nLoE6+TuBMgs0hIknU8K8mYS56jdxAAiPEZdq9DfY7rbkFpmw/KDgSF0NgogRs3HI4894R5R7M156cJcY3m4QqA+Au23Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707560897; c=relaxed/simple;
	bh=Nur9LiDYc5xg7Kgz6ig5tiJC8rPOydS0krdJDZxuGac=;
	h=To:Subject:From:Message-Id:Date; b=V37Ysa9lAOpFpiTfL3HckuhqNxANgc3/USRFgOUC3gKTVB6xUjY2UiquOFhCsTyRcIyZmoo8zqyKBKgmCMjNTw+4QI7KX9Z28v0JtkeNudyskHUHzRI1pSDEish5J2AkUKsIzRiIJC9zynjQteyxK8lEDGfREGsBNTtshPW5gME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0hsLr7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0hsLr7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727D3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707560896;
	bh=Nur9LiDYc5xg7Kgz6ig5tiJC8rPOydS0krdJDZxuGac=;
	h=To:Subject:From:Date:From;
	b=W0hsLr7hdC/hVVGZ+g19VHC0Le+2V0nGX6gIWaIBqWTpBijUkxbO1Vd6z3J0HeRm6
	 67lSOILWwmH4/awQAzzJ/lqtiOe/EfmPrXAsh9/GAtz+Xwv6MH9/kzJCpJAhsb4xUk
	 CPfa0ttGEx4sq6hEhTO5xSkNF74EvAffq/19uK3bJL41icQs4v7wdDUWm0K7aMF1CG
	 bb2f0CMvfCaY5NnueTBruSjFVRc3wwtUH4xHd4rVWPn/voPh2OkH5FES6ctYMrXMII
	 gYdeQzM/VnGA7GOS3npjNaeKSImbbbQ3MlUF6SxCpCXGfa4z0ewY7myihOwjxiZpbK
	 dANDJ6mYl2uxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C50BC48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756089637.7598.319595563289777224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c1179f453b71b82d263b5743baf8590426c70fec012e3a08191d8b5f72d7f0
Date: Sat, 10 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707560896
