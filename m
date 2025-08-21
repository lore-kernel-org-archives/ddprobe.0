Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5FA7262F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755816594; cv=none; b=IKf8nVjOXgM5Do7Pq62sLMU17bi4qr8KIVy8xoWmkhf4AtuRDlK2Ood+sfUTck3wwtUEOeICCZ24Rfk0d6814GXUgn6mYCFpX6iEptcfmLTRxs5RginNGdbVdyq3X7TESaf8R2B3wq7IwVoltP/OITMgBl5wMcwh3lnOhiyGsUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755816594; c=relaxed/simple;
	bh=1ZPwsAw1T072C21IrTSBMuctiIYd+8slax+eGIIjhXc=;
	h=To:Subject:From:Message-Id:Date; b=ev54Pn2J28ZNIC7xYoXYsd4nZ18P/Oet6nJdzSuEKHKbuMfYMtLuYc+SogW+SWgUw6KawVjG9fkShz5R+13SmGB/AKUDf1eY5wlgphJRLvnt+BcsD9RlumorqejRTM8Dna/884V0vAk4v+dVAINr1Hs0nJWV2GQBUZpblxSs/oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auijnUVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auijnUVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F55CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755816593;
	bh=1ZPwsAw1T072C21IrTSBMuctiIYd+8slax+eGIIjhXc=;
	h=To:Subject:From:Date:From;
	b=auijnUVYpHZReVoud3gLmwDq7e4lQXtyTCbxrK9/Btx77pqFrbBsfiXYHCVKaPaFv
	 Le9DF1jayVEkuHnxhqE9LNzio/21FGnQC0uZLrkvOlQkLv0tDLuLm8fOJukJ9P2Uin
	 a+Wy7LUbur3KchsBXgIlblUURbq5wdWm3r0NVoVr8evAWlw8ZH5vgW5Hao8+4S891z
	 uBeg3I6/ZsdGxjkO+v5cyBP3ESuP73XBNDTE3p6Xr62VK8wE0xgsUOLnLzit6CD7jj
	 OgsjAp+4R8gZSBHvLBLOcoIz8akBJojfIBuQPOQW3bL+NzmOdR9+nPt1pb8yhSoiFA
	 A0+wOu7tp50lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F7CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581659358.23138.14182064182380166209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f145aef6b16410868ffb0cf004e666e882f8f97c5ac971cfdf117a606db4c88
Date: Thu, 21 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755816593
