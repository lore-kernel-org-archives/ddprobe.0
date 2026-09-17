Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347BD2749DA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789615234; cv=none; b=L7wl3SbxJb0LdyE1sznTq1pxjoHvIzw0zqg6Yky00E4wkKGn0w4UZHO6rrqLy6LUiKlhMQNREe+tWA17xMz7n25BMkpo6ForWedAeR+qvcHkby+oPW37JPrC0d0ZY4zWJvckjajQbROPwc06DCtP/f8+cWkr2bOsPp/O0MOVevw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789615234; c=relaxed/simple;
	bh=gyI+HSjQ6vpj/V/m8l5ipdPSxzlGRE8U9UM+fpLOw5s=;
	h=To:Subject:From:Message-Id:Date; b=M4AcLYMxzHK8oHr3odStdsxtnnrR+xjMANQa4NuUOc8DCbPktIB2LuB2erbbpIbuVRXisiV0bbhD7ek/P+Sz8yW+35IjoCPcwNYkQscA25WLUDej8v91/K62lqx8XFM2RtuuKDGt9QKQdYgwq8+PrKw7B/wHbUaQMc7an1FFogA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+6R/Tkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+6R/Tkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA287C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789615233;
	bh=gyI+HSjQ6vpj/V/m8l5ipdPSxzlGRE8U9UM+fpLOw5s=;
	h=To:Subject:From:Date:From;
	b=u+6R/TktLoZR0U3dT+Lee95OR1imDBNROiTECnU3+x6E6D+2TLmDBUieN3CAn0bbX
	 wfZ3+76arTalfc0/ghXrCJI4QLF026fJ8ZipkF/PpMZPp9GRJ0eVmZesgqnQLGRZbs
	 PFCirdvxoCwqjo+k7aJRaMNYcIebgwhAFguPgxID25TuEyWH133rZYHEbX8yzu9eLJ
	 vDF0CCRnTQVei4tUbxfU3ye3OoWOSjr2q4yNdDPoptsteaDLe07Q4TqgbjOkfq6uLt
	 VhNWXsxCNJN6R9whbu7sBQZbQJzoedq43LejPnJ75ktRL7KFP4tyHcBb/pMZZxsaai
	 KeQI74UmKd68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A6DC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961523371.29961.15854151781529144053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed04da2c559a7b59da7f4d3d09fb09f50206bbe6f304f740864a3b5cd995dda6
Date: Thu, 17 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789615233
