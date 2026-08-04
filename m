Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721D7156F45
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785837634; cv=none; b=uXYoTY1A6OQJjcAuejnkNVwkuBe74jhIVHn7kuSAiq30gIWszPoQexiFNx/Q/aaZxmbpbrpH+gSQmDGG4HRgMcB3LFQy8ffxDD9RCES/sw6KOD7aSkJeugYCR2huMIbQn/gxBR/Zwu1Jin2UcqkxBui3B7OVb7fh33QjymouXBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785837634; c=relaxed/simple;
	bh=dWg+AdUYHX+EZ1Qi4GzE7fOWkAHfu20KdA9qMbo8s/0=;
	h=To:Subject:From:Message-Id:Date; b=Vxr/YlIlmjiHr+QF1SCiuM9FeiVjdNDeEAIXHs882jdOjIDgI8w3v/io1PErcfXlXZV1crAjuhr8gUT4si4CINa9asXOA4p/P7JrD4x25IbMUBlyNGLaExoyk0L7kTLx/CCAJO5J5+ZIu1cA1YE6NWJpAqB8wow9pAhfghTOPSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ0Fnocc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ0Fnocc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F20A5C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785837634;
	bh=dWg+AdUYHX+EZ1Qi4GzE7fOWkAHfu20KdA9qMbo8s/0=;
	h=To:Subject:From:Date:From;
	b=JQ0Fnocc/EgXAufmEh1kte74nFHq9GmwdoN6fMg5SN96g1JgpfKBvC9njYWqXPXn7
	 jZgKzb+83KQyZgWl4xJ6bGPDeIIxfHDVYr6hrDvsOBcji31oth0YHxd8asCd/XsGbD
	 wn37uWvWTCZ0tfY2+G/mGRyhBYmrfG4Exs2zFU62YuvdEwwarnK020cRchp1ln64UU
	 RhT1f5ucW2UmCoUIGEdceRuJ9Dri5t+9b/88m78h/b3xFaim4g+h7npiUlOsOg9sdc
	 27cGpIP1mnmxM9kKO+hzcZ6hfLTHZs+BTuMtcyrAo3dA35mDEJ75xGdEd/bBsr1gV6
	 sajvtBs9LnBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2930C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583763378.15518.9267847837999718374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ced19158f8e5163e730881006b3cd6fbf4afcdb9c1b58a84990d5deb380b74
Date: Tue, 04 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785837633
