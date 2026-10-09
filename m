Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9463112DA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791510034; cv=none; b=BhQvkUXOo40V4kIs1h+b18bwu5lU309fVe/VZH8Ok1g9kppemJYb/5h4jNtSqWiEhXsmVMy3XOOE3Pi6eg93smFL4tSfEiSl83aHxMJSirhwlsHNPPECMTGqWKrwXr5a7BD+TDTQ9WlDX/A4ubv+Mu3qLcts7GHPdChgY+SAQa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791510034; c=relaxed/simple;
	bh=Bexy759ADljr+OVxi8JtuGkW2VDsXDi57C5xdpQGCis=;
	h=To:Subject:From:Message-Id:Date; b=Pl/kO16GkHEYJB9Djx4lS4dje9tWtDUqLFpFewhwJY4aaGYhIDo2cXC0shtbOM2r2PoW4vM2INgGBNJDzQPvp5cWj9imXRy/WfRIvWIR0lvlsMEsfRe2bFiEtsC9QKfW9i5/UenYCyRrzy4wupAukpnVUkXidTvH167xLIhtrdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3yVyxM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3yVyxM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFC1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791510033;
	bh=Bexy759ADljr+OVxi8JtuGkW2VDsXDi57C5xdpQGCis=;
	h=To:Subject:From:Date:From;
	b=s3yVyxM99cpVqnH50zRTSLEuWlBRaudBS0QJSeHb9B5zLfIMar8Z3q85bsCl/aI99
	 rnStvD3DuzST8l8X7qidCzQLxYqWsh+K4ZlIIUf7Bp2pOCRfDraZ/q83M7THJNTIR9
	 lJ3t6e0vV9fanIKncU+jt6LVZOCFchM36yMLXNtLRIyGxicG5xmp0vpY5lAtcPtA4G
	 Zm1X3uu3U0JVXXMZDyZR3fMy4hKLZ6dIuaQi8TENBOynT4ZBPCjGDB00Z0RsZ/7/XA
	 EyNvT6mjbrUdssgrz+AFhwK17fe3YdUmD+O7kd4hULzqSjDYHR177dN/Q0oRaT2Ev/
	 Vv7Ii0IglWu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB715CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151003369.4546.17487668193697998882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfd0e27dfab6e0ab070b76f8d926645c5f79ebf7d68555ae893f34cfa0b3299
Date: Fri, 09 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791510033
