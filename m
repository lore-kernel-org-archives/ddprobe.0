Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110BA225D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712395697; cv=none; b=Afb5x9fqW0IqudTd3POzXVJpPXvGm93HSE/z2yoAzoSpdcee0FXAbFR4jp/e6HwbLG4VEWfjhjFAKh6NLagsPdvWDD/OesJ6YfMAkiywlwYxEhkWzwyI/TS5R7iTVGuzAZG8twB5X4f7EBxPUu9yzNw6MdwjWB3Ef5pBWUl5MRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712395697; c=relaxed/simple;
	bh=tAQB3PNTCfo30DW7jb56iL7rcfxim1Aj2ljpnbJQ2U0=;
	h=To:Subject:From:Message-Id:Date; b=ZgTVUHwHgptqEuZMqNiYt37uXt+6oFYthc1vqIwyFMrnOpTiE9catLBU0N4yLD6+IP2jQAx+wo4tFSotjHI9v4HN9llfiAQmtnZHglwRiM/6HvszqAOjHQHMSOxpSxMb684IjgBvL94JDcApw9XiKAcx6+F/PIqplGw7V3Uo9uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3zTFynW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3zTFynW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7716AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395696;
	bh=tAQB3PNTCfo30DW7jb56iL7rcfxim1Aj2ljpnbJQ2U0=;
	h=To:Subject:From:Date:From;
	b=B3zTFynW4HgRNe8WlHUV1ruBp7LK6GZK8nJ78wYH4Q9r/DtZaXnifTPpYzpLhn2qm
	 KenQe5rQo7vgg2y8WclaPXWEmKEKdcG/UJDmYSS2nlgXKEhvIG5M+gcP7/iR5Bmcmy
	 eOkhEMDtv+JzdU6uOxtzZui5JJwIn6Y8w+JE95QlQFeMncM9yZxE91qMVh6Re0CFET
	 DdL2tpDUs+2aYCUx36bCIz3PF3keXV5L5bY9hX7hrggcjlEezthh+x7R6ImSuILtMp
	 IJb5oxTBzlTxmaxULMPbkCoqwENKTWT4JLTROVf+M1lFMEgxWeGs0C0cj/VQoaoOqC
	 CCj3Lj6O0lfLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61925C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239569637.1824.17605755865635295709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591104ce2f7b47715d688f1e780042557abf66986b46aa5bcb51d5189a6b2483
Date: Sat, 06 Apr 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712395696
