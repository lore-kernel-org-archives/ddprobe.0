Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1323D3001
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782458854; cv=none; b=aoLTx2v3OcvLCVCAESIPD0ZFSoYiOlWIE2ibQQhU3xlkULHiI5VMLh/iXKhnp2LLwS2pHBTpxXscQhYVag6gs5wwXd+6JassLZRGZUVpdBCrXJ+wErh6Gne1D0XIoqBn5V/IJm9OIf5I+4qxbL1NurW1z8RGLZzSJbq2uFKmWF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782458854; c=relaxed/simple;
	bh=TbqOYppHTmGWszWOPCjFnmLwtzzQke5zaa/eIa7n51c=;
	h=To:Subject:From:Message-Id:Date; b=A4INL6JhO42avDCiq6p6JgeNPE/uZb0TYO39vi0sWVTvvAZuCuxp4JGW/UXwXtPDQGv72gv6ED1ivdVLdcF1opIWtVmfkXWFjznYNJ0nTJnBO40Qr/1cXTTTdNsHKiixPUM2mm+E1lkj+278plxb1PFLJERIWV2YZ96RPxlfbN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkTx5ELc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkTx5ELc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B1C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782458853;
	bh=TbqOYppHTmGWszWOPCjFnmLwtzzQke5zaa/eIa7n51c=;
	h=To:Subject:From:Date:From;
	b=GkTx5ELcWA3RxchmB3/QGXQTBgUHxFvIING3TbYmy9hbT4beOo63xcKcJDYhl/noU
	 gZLfy0ooVD70nxdFC8zAOWZRsQ3r7aMjDuGm7mMP7HI3NnprD0mHBdnGv697QWmI46
	 j6adJJKqFBkEON7FVZU5PP+yF3mmXBEsBSu0BDdtAgREN3jvsXv1YtsGXaAtKDJvXi
	 BOSPqp95ci2RgtiQqHJWU1sl192/xNQlhNruwe+S6ZqTIvVWZzeadseo9Z8mqhImw6
	 nd3egQ8D9qkTOS5IkKvvXT/3edmBsjZjtcGzCja6dlPZfLqK9UayGHE8+yGQIpnr4G
	 Uqdu6JLOwOVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D2CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245885369.11451.12154861116749993133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ab997729e1589e625388a697174ab70070fcf6c4427c18593b19a41acaa7e5
Date: Fri, 26 Jun 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782458853
