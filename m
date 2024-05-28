Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DB410A3E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716927263; cv=none; b=WX9Q+r7w4NIyu6PQQEycAsFVn24CghNC4h9OQwMEJ1UKiE0uUBFAZPknxp+PJcm0R0SGJO+8NqyyUFuqr70oL3Po75gg43rSIKtuZP9+zZ7SWw1ewp3iY9bCcv1vrrfcKLj33YJX9kdahPTXCnmGWA2z5lX35TnkNY5jxFt0tJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716927263; c=relaxed/simple;
	bh=gHpfSIMfTKA5M1BU0d0DdrawU4uEqvEWLg84yY8qH4k=;
	h=To:Subject:From:Message-Id:Date; b=L/pU9arHD8zSu+/JVh3qLayzZ40LL9kvnGbLmKeZUyPhycDJiVS00xu2dCs9LBuDFQpTNrZydQNr8uft6E1ESOAHHZh5L5WsqkNGrGvbQjS15NDwAN0FV5/Iw4XYx6eYtZoEje76A5rL9nzu5NBedh0KRnuD01wobt19J9WaYFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sll3o3Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sll3o3Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ABBC32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716927262;
	bh=gHpfSIMfTKA5M1BU0d0DdrawU4uEqvEWLg84yY8qH4k=;
	h=To:Subject:From:Date:From;
	b=sll3o3TqJxSEJqQbaLm3BuN9Jl50pXVxMQKdh7UMmwuFgjz6X4rD5RGoPC/dopGZb
	 WzR9+0rxKoq+jzNF9NoYIwwTnlvneigOIzos0S0b+JVUM3of4hotHviv1oUqR5S/P9
	 VWtLtHMzvBBDWEXxw0Q2MhIpDp7TRz/e7v96Bw2dp+Yq1/yX4Ng5b1ZMjtowaVsbAG
	 bHOAzsnoysPF84iQrAKe/hnJ8BDb+NJ8z12KQbONFBg7VV+8rl8DFfY3mNc4nVkQD5
	 cYNKHusTmdbmzIkBEHBu1cEA9wEgfTa9eCC7p4oV/xHV0pC7gcCdcmFOVrE4rs75nf
	 GI1OLDAlYAulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2663C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692726282.23557.2402814877640227417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c71536c13c96726f97f5eb8db0b402940d3453722daf4ea05c4d184adae6a3
Date: Tue, 28 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716927262
