Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C68E17BED4
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724085354; cv=none; b=VO8ydqL+fVaUQLvYpvU9YQTuLVf9g4nssAyikdo4da1GJ4uFOn+ssU5Ixfa1Pb+M8PK47ESYun1I+YJEKkXnRCmzlgqF+dNyFLgT6tdQlINrIVhp4GEFw5POKG/d0MX5Qgrv0mZPQ7ilo+RZwmCnS4aJyhQYVBmueG+8YUxf6Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724085354; c=relaxed/simple;
	bh=BHccKSsljw+7wb6wxkSC826iKba8oufT+UOhaxgl88I=;
	h=To:Subject:From:Message-Id:Date; b=t7gNEB6jAj9LGf3YX5bxGQueFY0UD/LxplgzQ8fLfEs7Bb7yTPaJSjDDqRfgmX9jkNqpC2JPC3r7YKELVJMxg64vDVqv3cOBbegzUTOkoe6cc59ZaNtruTV+FHcRXAXsyZoiHpHG14YNdRArGnoP2dIfGlg9W6iLZ/3hCk7RyL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrDMlnBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrDMlnBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE6DC4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724085353;
	bh=BHccKSsljw+7wb6wxkSC826iKba8oufT+UOhaxgl88I=;
	h=To:Subject:From:Date:From;
	b=ZrDMlnBbBavWEwxGuTF0CurNPaV8iXy52x0xuxhPzBPSoEshtL8J8fzlMnUux8ux9
	 zDOoalHdbPSu2wBP1IznPj/VHM3CW3LHo6h+s20zWTWiNYIzJiUBQAbetFeJiOSFiU
	 LZGSdmjgbF6NbgTt+fUKCHjbYMvuM6xqcnpDxBUmNjDhFx4mDSGaAOhZtdHL4dnj9B
	 abswSawnMPWxRV3DUGrgt/LtHr8bL8giUGCfp5akIeXdpTcUAwDTsxLXlSZoDeQ5VX
	 3dXRfbU8naPr5njqlIf1bfyr2IOZHgQO4YAcXURr2PeVpdv+9X65nCcR4AAGxadU+k
	 1hn4R3unE84ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98092C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408535360.16787.18440834859966498240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a3dd8b8537ca8f34e98b3e5801316822347f6005da6bc59b5a6c689a85ce42
Date: Mon, 19 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724085353
