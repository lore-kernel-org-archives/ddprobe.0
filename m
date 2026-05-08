Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE12F8EAB
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778230054; cv=none; b=bfMGrD9HgeCoX5uWHFjBwXZdXjurlOG2vFuCauKoJwHBN+UQx4LK5d0EDG2GWbVcH2LVabRA5kCX21Ge9/De2ivGEb82ZiKK0fY3quMRcHeuXQO/AQsiDpXzUcCZhTxdVFeTKrz+MS1VKv6K2lGdUKQYeL9PFHrASWISU+N5feE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778230054; c=relaxed/simple;
	bh=VD7LcBMUP9tb7WFj1Q3+wpG92WJF7Pzvb9VmYpwpGhM=;
	h=To:Subject:From:Message-Id:Date; b=ZurIhVs+oun5C8ptienfXqq8tqZMwGnogLvbF9ugdkHIn7KwFCcW+ior+lRTft5gx8kHGa3J0Z3sH7KiL4+94De6ZbGXXTUgT5a6ALLAalKd0OPj5kETS8edcFHKTBgqpQatVEVtru8hs61HqOua87p7Ixp6E/rgUcVkhY/F7KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd1XRPM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd1XRPM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BC9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778230053;
	bh=VD7LcBMUP9tb7WFj1Q3+wpG92WJF7Pzvb9VmYpwpGhM=;
	h=To:Subject:From:Date:From;
	b=rd1XRPM5YZ3sVETVWz+1pJIqRyIwp2FsTsnIiI4mjDMvgP2BjOec+rJJ8mUDJeFCQ
	 htEWpMPIYbgvDvpM4061UQKdn2EhI0FBpAqosqcL1XtePdaklChng7BOjm6MYuzUBU
	 DPXIuMe/KwjM8YW9S95XLAr5Um/x3jT+/q/CCea0apMectKs/wo/SRAr6MxnmWPfh/
	 fkiCwc3c4IHpIZRvj8qINBzO1k7gDXUlr2lhvXzkmPNMTFSq1pezjUoMVggtbZn1WM
	 F6ZEc9utXj/iRNyEItKbAlJ5gduSd7E4KVFguMfqkEL4wmZSqbBz+6pxSytLyCSH9n
	 6yQuQui4vR3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C6CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823005368.25314.8190180277059375657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60232afd98d84938dd9c92c5f3481539623425f7ac147ef8adb6a65e74547789
Date: Fri, 08 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778230053
