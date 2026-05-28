Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CA5345CAF
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779952354; cv=none; b=jqQWfzRTbtbhbbDhQbttb8t163qy9Ae5JEWJ2RBPdheKGrpjfKcjWDlWeWvhDSVn4NsiAhulcxwdjIvgFBhTThfRlv0FVkK4z7jKn5hXKdBj6+v9wkKJlIwisexMhEV112yI4ksfZA8ZXXYsoF5wKui1C+KyV5+igy8N+wvYnxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779952354; c=relaxed/simple;
	bh=9yKsMFt71W9fNsyPSM9UtGyU3myK9VNUwDNqvMU5LkY=;
	h=To:Subject:From:Message-Id:Date; b=th24pHEuA3e3ugsXmM6J6K8UsP9BwFFUSfVgwOEEtYOcuy7+m5vIO57YCGDoLJOGQtpFqofh6wzW4aSq4uUHj/RxlCGsTL+rArwotHdEju2vFpfT6TbpLtAE04O0J6SZVUBNp3cGYVluZyUIqKM/GhKTD6+6gAu2vaVSIcwvpsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8nRqdbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8nRqdbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF59C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779952353;
	bh=9yKsMFt71W9fNsyPSM9UtGyU3myK9VNUwDNqvMU5LkY=;
	h=To:Subject:From:Date:From;
	b=l8nRqdboLLJcUb9awkFcuvHgTUqEtCr28C/xkodtC5zqgNoc1OwISU4Smw9lkpvbI
	 tcESUetHo5mvEcdNu7WVl6vF3moNiocU/Bl+wj6ImBO4XYMxz3eIUd/2hWN5nBrThg
	 vSj3BEwLMKcCjQHiTYmDqUEQYRWlDg+Rv377U6F5XCr+J7Trh0gr5MdVI2pJVIoRvj
	 n/TlLQuMm3s0zyrJT5sECYprgDTpzOEyPY5YXicwv87QJikqNLpZLLDvmdPtDkjylK
	 bGa27VCuHl47sAG38cgJxLNk6A4jYiwNsS4q+HgzCOsb4xdizwrfk6zAu4EvECPg5S
	 prcBi0vPWrAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CE7CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995235368.24598.10067613171620298105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c029b4b05dbd32ca07871ed1e82a7ba1517967ebacffd9ad735dc84323d5db9a
Date: Thu, 28 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779952353
