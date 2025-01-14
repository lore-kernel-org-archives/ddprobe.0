Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B85A1FBE92
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736883954; cv=none; b=oT6LuVaWwugAVlVxiAXwb8hFXiNd8sOyJQd5t/UTbrIu3GoHjOSWVUUmKJBeiY3ZTxwjHlKiumxUoz6P+Z+P2uj3bzWssZipu6no0zxz0EX8jq7lIXqCBm7E17Cd2bEj9HJdDW3udfFTMPJMkheFQjxOZ1uA7fGGdzusmG94Gmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736883954; c=relaxed/simple;
	bh=Lx55kyJOE8/woB+/FdqaPwyC5Kvm70En3r2Dk5ifzU0=;
	h=To:Subject:From:Message-Id:Date; b=X8BzgKx0P/Tdr3ZUiCBPSoxhOOjv7nijctKL8FhUJG9/oMy5QVFvPSLtOtrPmScs2D9cfF+lYetV4v7f4dEigudHMWWkD5CIbGNSe6IpdMpbw9H8DE5+ce4iZWWHXsLVA6EYfwMY/AH4xKo+XxGO3L0xlc77r9Kks2LgdJ8iOZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPWR50sz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPWR50sz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736883953;
	bh=Lx55kyJOE8/woB+/FdqaPwyC5Kvm70En3r2Dk5ifzU0=;
	h=To:Subject:From:Date:From;
	b=cPWR50szcEKWMFQ+lAiTyupVYTPfqMaVpK5gVYLADZOvUJok/NiUd69lTXszppcAZ
	 xCMgZVoYZqATpFSkmVjRBvWIDyYj77zoLZJqvYtRPNioggI+dhW6JsTqUJbn5X0ItW
	 DS/1RSCasdFDlhfY5XKlPahtEpuDW+yjN08WEZF+2RA4PDUODQ0Tb8D7PiYJ9Y3JEC
	 3LIj7vcsw/hxyEqDC/wHrKH9F0BpO7VzufdNfgPo9HHilmYhf1DyfgyMikAazkHthu
	 O8wWGELKiQldcHGKG9aXzo8lRlXapWwpJjJ5TjhYUcIqQ4dQBm9BIJc6hRD9oz+shS
	 4yMG27n2BR94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220DE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688395358.14923.14952716751530851000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278256af41617e9e97915b117884158f48f4ce6d54fc13b07bb7d02d66d4d5f6
Date: Tue, 14 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736883953
