Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C057137E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724546755; cv=none; b=NWl2Sh4mmEqGISXtsbaxVOJIGqh2fOERFH+BKFMZN8cP8JxZ9+HLWa7eHms8JwuU82MPg5SYPw/qcOit09BSjw0IydDB7yoZoQgJNchLpBC4ewWqAFEPhYoQdaIbG5r9kgfwIYrKzb0ipljxYfrV9VPCSi6Wpr3mKlecUZOBkCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724546755; c=relaxed/simple;
	bh=42Ci7YJo8QFoKyminyoWqwmiRfYfkLPTiFSnHcTl0Fs=;
	h=To:Subject:From:Message-Id:Date; b=MqbS8jsL4mVkRCcn5JZ9kayhv6z2gUkhfoXilk+WsA1gkAFq+RJaN3yKrb9A9pHj4hYfcgs5Bbi5GGNbI0+mvSlL8vRAcyOV2sCoANnKlQh1BTtEu9pqykcw97tUpwtiIySZvxMRviAQvR7KZjNe31pW5VucYzPgTL+K2NdQPSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4uhRLE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4uhRLE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38C7C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724546754;
	bh=42Ci7YJo8QFoKyminyoWqwmiRfYfkLPTiFSnHcTl0Fs=;
	h=To:Subject:From:Date:From;
	b=k4uhRLE2SjhpoR9uXT3/IHZIEzA/VEbELpDHqULLPYMaml1wEohAWN3gZolhQ6g73
	 ZWYl5sr8UO9OUJRHACgKH8G33TsW7G5X7z2/vM2knjSdJEYu6/nxzPUvhDFDrhZ85W
	 bF6QSHOjQkAGi9u3ukNkzKBldLroOSzaNSm/I4znr0OsLurd3IfSvP/ojT80XuBkJM
	 gGDl2TvlpYnyzib9j++Q5H5y+ydzqy1ASGr2WCeyofJHr0+cXRZTj2yOk7ouxsy09B
	 Z8zb8cqRNA8zNrKrkndFhiCPZHKACmBzLYjHQs/fKTNrOZkR8aONoIaRod64zQZ6x5
	 2r6rmeU7c90OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CEC52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454675363.31045.11199702700078596128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9790bf4bc56ac3c1fd8d3dbb24b946dd57a32d92210020f12e522ca9785425
Date: Sun, 25 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724546753
