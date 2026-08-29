Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9D91EB19B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787999434; cv=none; b=d2rRRH6LSi0Icc257nFtLwpADyuWTYXDsczrKjIe84OqRWx1GW5MvvikjIhmPussiwusrIGjXU6IvBhXhM/StfJ+QL9HFAMRbpmFmtiDG3y83/Xlj/+pIPrO6kARmkzE4Y3Om5gjcfuqzIRwuTl6z4ZlcbWeIewuRJI8BmAuI44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787999434; c=relaxed/simple;
	bh=J8EKolsHpAOX9LKhe3F5HI9QOfeu3rWik7DrzuHGXhI=;
	h=To:Subject:From:Message-Id:Date; b=jR+OJGDHjLln7azbZ0VK91T/3Rnfa7IMBxS/K+XnWrITLEnhiKJQxLYIHgEGy5QKW5ep30Ou2PYnHfxDzE383OPCsZmmJb+O1PHwlqCYo1tQIA/DCPJy4r8Wrtwpg/8TgQFoDpo7BkOi+5IgycnnnoJFcpcWUwYJTTo76TJ9EUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYHs0Vgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYHs0Vgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3243C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787999433;
	bh=J8EKolsHpAOX9LKhe3F5HI9QOfeu3rWik7DrzuHGXhI=;
	h=To:Subject:From:Date:From;
	b=nYHs0Vgb6lHrHN4uCpBCHsky+lkJ/Jn5Xoq6CqiafPJ5bTnq9F2khY2GQ1YchFzd9
	 62naJ55UwGxOmik0sypUyqAZcNCVrigTPDXgfMX5IN8Etqpa5PXeU6oyhKX5OSz1s6
	 1whxKD5DJBqAOM7vFLfBlMt2761s4dRJ5MvYzU0XIq6zu1Lz+lqmujI7IvnuQ8kSX/
	 UbBg8kTeNh8KZ4J1PlKasjPg8HbldSm/sQBKMQNqjHrTBYn4lU71NofIIGhD17HiNg
	 u5hKwtMovB/L3+n+8f/YXfpk2/TdBkGN+ZX3lycvtj6M9pAUFV7pDwqslhgRd3J+ss
	 Nv1QfkUPIyXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD792C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799943368.9903.927920536850479970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0ec41f89fbcc115ce19a3e9f51eff1c849e799604eb3a48cbbb6bc1fca5a18
Date: Sat, 29 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787999433
