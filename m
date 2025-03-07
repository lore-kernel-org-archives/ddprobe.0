Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA1018DB09
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741327134; cv=none; b=AJSixnkZ6v3VwFVR7nQgBrvsSzAKm3Tbmv/B61qrFby2ZIMp5+SaDp7cYWQcM4mTDsXgFibgmesDMXzp2QBMmrtiz8BQZE6zwEEWAkglOBliNNkwi6ViLJq8pTSxTSXiIc5vTXCKB3uv6zajR2R1ctrW9w0HMghYPn4Tf9LrVoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741327134; c=relaxed/simple;
	bh=ycwW4RN3Sp2P2/aS7bAy+umR5wf/J4YrH1DaWWYriD4=;
	h=To:Subject:From:Message-Id:Date; b=k0h9OwJC5tI7NwghGSKxaRADVrfbECYq9vVz3ghjnXIeOZ3svc86NCcYdoIsWMIl95N/L//AAhs6ZglpDrhxvEV6XjtEI1Td9yNbrwuK7xwPM3LDoiYWsvlY7uousoKtMvPscnAijw1d1tMQAlB6zHhrSnTdOdUXClWkYT7RlLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyZR1H83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyZR1H83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6903C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741327133;
	bh=ycwW4RN3Sp2P2/aS7bAy+umR5wf/J4YrH1DaWWYriD4=;
	h=To:Subject:From:Date:From;
	b=eyZR1H83dl37c81sv1uzERWAZoZ30U/aziTUGYGEbyWnAOOIKU0z/69mCp9Z1GePD
	 NF4jqMrvwUDX14H2mCBMkKCec340fDpVFRhN3iRhNVysZHjsQDl7qOAVrRaDWt75TO
	 fZHNKXwNh85y/cGjFh32tpDBIPrjfkaprAWrKfsgXLEX5CavxkM+VATsClpqNmzPUW
	 h8FbLURMTcKnSWMuaXOFrvLOIZk2e+4pawctMMY1pqDq/sl9c5DYUc4GgXVOR6JwEz
	 JDlrapFC0hCU6CaKmS8UoR5nao3HeYpET4o56R4s9qSVARrHgqghR8hELfTWRd5OOx
	 Nh5USqD91AEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12EAC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132713363.5531.2698001582968543579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0ed2be3f73b04ed74befe0926b91aa3edf6a47913a83347f898a5fb605a94c
Date: Fri, 07 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741327133
