Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B3D173
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742606394; cv=none; b=picTs/sUioQK/0/CX9MVSUqODo0vydwbKauTuMh0xzQ0ZOFO2raZh+YH9IeDbaE203mcCkjJ1v6ig6dNi4BCDeWYvXi0RPHGrwC+bZoDIAPZoMHaLvcK3RsfFuPhoqfAUlUHrA2it5vlfxLJ/MkeHuGp+7a3xMfRAgUIuCxP5B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742606394; c=relaxed/simple;
	bh=fHtlI8mqWfBNf7Yk3qrux9EIZTMroP8H78ypWs13TIo=;
	h=To:Subject:From:Message-Id:Date; b=LUL1T1ry6FrFIwXBYluYLBBqQxGseOoUI7ZAoc+vycxmrRvSnaYoaCo130HCLmCfOuSQKlIaD4eHkdWNicgLCoUaFsuY99yREBFQniEsEC5hl6tOMPX3DEgFZ+mWA0c96r/GuVVlVVpns2BFyFSGegJmCNG6gpD5NYxdeP5sgjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHKsuyL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHKsuyL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF79C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742606393;
	bh=fHtlI8mqWfBNf7Yk3qrux9EIZTMroP8H78ypWs13TIo=;
	h=To:Subject:From:Date:From;
	b=AHKsuyL7xINJ/RcCNvsrFtVEuCveIcvlunYRg18+uQShntM4xLzAVerC2AXF7n/fM
	 Sm8oMDs3p7N3ogHeVh16gwzScQ4Zf9sKxHgP2TadcH3OirkE2v8fJPv5PuN3x5Zp0T
	 v72G+41OjKWFd+yHrX6gPoHH3zQNkIK1sUeNBqUn4Efc6hwFSb4Hzuemckrgv+sgH9
	 Ll1vVkTZyZFRPdd5rik3Tq0enNzsNFJ2mjSOJVku8Y2v6X+7HDXF2g8AAu3/sVRoz8
	 t9Fc+v7USNwIMW4Ql2fhvO+0PT5rDyF3CJ4hymYebqmfBODxxUaZy/2+pUk/Dzdq0v
	 5iY05sloFEyxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52BCC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260639363.9709.16140712726505258320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62d861df0339a02419d3873401190b20da02568145717b2b66d1554d87d7366
Date: Sat, 22 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742606393
