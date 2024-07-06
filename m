Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5623C23A9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720227323; cv=none; b=qv49f/tDbihS/fbV1ge5ixEVL5nm3YnrF/v6UVKPI+estbM7knVuddKOYqhPzNywgBqRev/9ADCjca9IagardmRwy94CRxE/BM5KUf79OewqlxHwmJ+vO1OzvDVnmxtZMT3O+a0XBiSZ685hn+gStecMLQ2Lmk0NEw5xl8swV7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720227323; c=relaxed/simple;
	bh=VvvR4D1iJ2nF55Wg1S9j5MSwnVsUvfBTauTjsrZCljk=;
	h=To:Subject:From:Message-Id:Date; b=fwI5i6Q8LVOcMf1PlSByp0xpaPK9g+mP1nFUNvPNXCNZ5KJDe7Fd8985pxQBm6QdB5x1CqwH67Df9+8d48AHyjSUxKrzDyUVqi6ioy9bBDr0sNZQckaO9ghGfnotDC6L0h1DKmqhL0GcBVSYPg9DQLODPtVMJtxXh+dZyVL/7Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V12sOI3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V12sOI3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20ABC116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720227322;
	bh=VvvR4D1iJ2nF55Wg1S9j5MSwnVsUvfBTauTjsrZCljk=;
	h=To:Subject:From:Date:From;
	b=V12sOI3N1XfPmlNY5gTfD7iHs4pwyxg4ZEb1DOOaxrfElfoaUpMYqYmXWqILCH6lL
	 LFWZWYEBuQ7lMcjIzJw+w8Qf7AkYWFDwkURd7V1Z/K+UoE5/t0juWNUt747Z0qtWsR
	 WbnkxVGmDLv4AspSN4MMVNKO3vPnhddWBtccb+RZO5tBRqOIaBEdgyLtCBAAsx38Rh
	 gZSw/QLEVy3eoMQnIU8ZfvMXGvyZPKEOam4xSoS1J4oWeGZCy7dZUK2dUmuqOU9G0D
	 F27f1Fz+6q7DU9khR2bW4mcnf29gPrvQiwof098ls1Bk9vqSOUtV6iJzhlATDTomiW
	 rxt1DXlHWHezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8EEC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022732276.4652.9558123135605004027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b482ce0c7fe6ce29ada52e761790cd310c9a17e23d4df57fd6b0f3b6840b3a
Date: Sat, 06 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720227322
