Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344D81990C1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732887354; cv=none; b=c31jqpfaN0UzeXwxw7kgYFsA3wUI51uXCEODFJ3yr52ZsaAyj1/qvMY76D2k7ubGB1+qMGVM/TzpyENa1JZoe4Tyy6r6OA8V88NTLWOFH/TKLN9psC3U1HduyroinNR6NBUYnZnL+hup9tqwD6u5i6oqhanEIPVoDd9Ci/pG+go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732887354; c=relaxed/simple;
	bh=IzWEyCwjFmEGAWeVNAWrmuzDU1W8EGOm/HjdUG6YMJQ=;
	h=To:Subject:From:Message-Id:Date; b=X5q1EmrPQVTxkHv2bDUX0vn4bEMpumJk+/s+wBCFdhW5c6Ue9m9v9/RP0fNNzuXp26LciKzPIXyIXzeBBOMQJQxquWQJiAnPS3p3azvRqiubYj01IgbNq1T0jqEdDVIVqQPMz4ZxW++ebMF777C9iSWtCYnkTBiereqw7N31qBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaXTnYsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaXTnYsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FA5C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732887353;
	bh=IzWEyCwjFmEGAWeVNAWrmuzDU1W8EGOm/HjdUG6YMJQ=;
	h=To:Subject:From:Date:From;
	b=jaXTnYsl8VaFmTtUHQFzKxZzHfUswPgT5NWQTtCQjwIEGsSn/qKHvGGU1KMD17s6f
	 2owvmkR/WX75cK8Wc+qjl+Yrk4a5TmcfZCLwe2p/Z3jxvI7dDTB5TqZXmXN0qbcFk4
	 jj/6Zx0d274aq3m1HHUuUxUftzs3tHyqUlFAVLLyJm534YmspJU5rpFMqiNFQ8x/OH
	 VmaRUvGRisnY7OVw/gOTCS01nGj6JUWdfBGUd+DUkPg0uu3GsZJC3WgBN0sA+9DzgU
	 I23TB6JVPoiAHKxuu1aDqoCNwLsFWzMPz5MjZqNgayteZ/YmxTN6kNtENs90WX7R2m
	 bWbOCqKT5X61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5AFD6EC0A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288735361.17104.9683623375080677039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938c5af5e4c9fbd3ffba2bf5ebb62b278b8060d08b94a6373ebeb8e6b3ef097c
Date: Fri, 29 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732887353
