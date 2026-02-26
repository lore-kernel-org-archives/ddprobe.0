Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1747E9463
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772076294; cv=none; b=jclfPPIt7/UBXI8HJ1YJInyjaeRglZPt3YwOOdE+bSmL0z0Q4pNKREllQsEXRUuDPD8NF4q1OkhdikQiUmBqrzCHCWsxBKbJXPnmp3EncMoGMJACUShpmWA/YPSqAfSIWRAn1xm4Attw/di+YH12ff7qX02iLJyyJ52XuGfCZ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772076294; c=relaxed/simple;
	bh=08i0loyK1J/f1CMbLymc7Jcxl3rnbQTRke+Z+pYZAFI=;
	h=To:Subject:From:Message-Id:Date; b=Pz06dHuCSVM5Nzc0zsUMBGlgLw1JCU6iJFQ/CtU6P34P5AIHCqFCcx0OFqbxZ6/X5sRxj8NHtL9tx7xpe7L2mZ8FWueIlYLXBueg9bLPxvbpifD6hyBdu1d60zn8kbnjwIKp32W5ekKXMKK8XyLz7Ym3pI3h9qG+TWCDx1mvwUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7EpRdbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7EpRdbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF07C19421
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772076293;
	bh=08i0loyK1J/f1CMbLymc7Jcxl3rnbQTRke+Z+pYZAFI=;
	h=To:Subject:From:Date:From;
	b=l7EpRdbYnOVu6K8FUt7wF0BD2+/HhZLR40gKHiW1st02Y0A6n9iWrA7DNHDNLHIez
	 wML4bYC7+wL+9yB6iXLNMSEsIvhT9uNcnv8xVbR+wpdVjAZOhvqSw86SKgJis+vUcs
	 2fk0leNcsus9ZG/MRg6h8Ce6nfFvDUXnCy87T/9VT7LskEyJ+jem9hq9hZz5eJhB99
	 A47bcPGfmkQ/8+sXt9FAoFs6aKWBeggA4vVGPoLmbBLfwBKAM643m80dUWqNP4+bDC
	 5XKxf6J0lJ9/xZTYIMFxo08+YIF5e8l4ev+7d+YxwRUWbVJjL9wqfBU2mGJJZ2Z1YB
	 XP+z6+AQL+/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8295FD45F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207629366.21151.17970006701220967732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe20a65ebae9e7fec9d32aaa9d6c472f8995c59e59280c249b68b4371361c874
Date: Thu, 26 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772076293
