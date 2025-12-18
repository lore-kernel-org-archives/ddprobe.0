Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C40522A4DB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766078034; cv=none; b=P8qKNhQb67Is8nEegcRmUNFRLf26jWT3VP0u6lIf7Gkj3t5AF85VbrSllp9WwTeuiy+HqJsQWn7JATcuaEkzDl93M3LXKZ6Xygs8UQ4DZuzW+yTD8iBETajmlONS5e1b1aM++274NcIZzD9KOD9s54CPjTdABeijWCPWg+DWzgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766078034; c=relaxed/simple;
	bh=bpjTd5MwWfB4JS1XB6jEkFFC4+aSbLaQLkpen0OdH+k=;
	h=To:Subject:From:Message-Id:Date; b=EdjWlFThlpT003MrpdxA9HtvamFUZOFstSoeJw4u0pPUocu2JIlHoG3LslavgPgIDLHJGQzYbIcHG9cxucI+/5ADmzOyLYgfnCq2kHfOXqBeAzYvBsaMBzxRHb1dF6iv0+NJ9Fi+dTKkMGXYi6AcFnZDzB92utP/gdtB4Fpa1TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSjaBbfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSjaBbfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766078033;
	bh=bpjTd5MwWfB4JS1XB6jEkFFC4+aSbLaQLkpen0OdH+k=;
	h=To:Subject:From:Date:From;
	b=YSjaBbfsWBxuRdA89OLIOVhQg2T0afgwEpWYAirFdwZq8KyRrm3QAVmx4IkMZfmGU
	 Zo9rUE58grW6J3pMqmNyE6ps1xb5pY1nRm0xtQFs4AiKxk9PISucCXHY/x9Q4/MkjT
	 4HkgOVbnQqWKQehBLQjqMKgd9JyH8ogcTsa3dYJpJ055EnuXYT/9Rcl0Fjs5m9LA8o
	 v0YFvsaWlnTglvWyj9XRkSruUZ9Ww3lPusiWjIk85JMNw45j98PRxyXhNYs5wYsdKe
	 OhlLLzDumx0uedwErOqFf2onco1rhf+clhBLPKSTRisuLW8Ax2fLpA5tZIdMvOgUdo
	 oCGSI/ETHQA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B3D6E2BD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607803358.10758.7884702855403917924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c211e5c0572194455c5da3771c00ecc920f396dbfe44c35d6a852bcd86d36f85
Date: Thu, 18 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766078033
