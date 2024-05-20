Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A9D13664B
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716213143; cv=none; b=VG4LIFQIbXuc6Z2McY+krgUd3lDzyJaWQcx3jP4SjZ3KBcpjvPSoOE5dQYdpuBOOb7/rnJ+R8xIr95Z0wKr3KCwuCDZynJpt6OEGg5oigivWsATc/8tYblaL98WSOi203HoOUhrX2eUjGzm5gRZn9rgJ9zpY3Zjx5ACIj7a0JLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716213143; c=relaxed/simple;
	bh=Zq9AYN+hVSa0wU6jz0oboaPbnH+z8RyQqVEb+MnhjpY=;
	h=To:Subject:From:Message-Id:Date; b=Lh7LvlV9K7sqm9/lTXRgtIWSx2KZbp/5+hrweNsbV+HKCR2hFlCIOfBiZKKkao4MwELScydEHG8l+hXt3Dzb1QplK3c3eyafKYbrhyqqSpcuamM/uO2O8hTwmqI+x78FTpiN36ejZ8vPVlg8xU0odc5KbUq0pIno2ptSXu2I8UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAam2Ebm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAam2Ebm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0202C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716213142;
	bh=Zq9AYN+hVSa0wU6jz0oboaPbnH+z8RyQqVEb+MnhjpY=;
	h=To:Subject:From:Date:From;
	b=aAam2Ebms95gTVmWNGTcYbDNqgTYapbp6wZPGsw5ptMkwO1UWBsQenwckhDN6vcdH
	 94GSBc44JmsWT3HVT8xNm04i7bBqVkJEleW2GWluDG5VeljylFWevx3z00md/+HqXt
	 LClzDLAHO9bQ1+orNE8asqTTKArOE1YXLFGZCc2/X4MiNRopAg86QYdBJNmwDOrzQZ
	 ninvvsOmRdE+/zjCbHsNPQ5XtWF+YkYqdCYXBGXMp2zcUyqhPlZo2l0C41zTckggsj
	 n3EuRVBywk/yfiLjnbdiglP4k81RNk0imo9rvynRebSnud0wmNy01PnC6x6I4PJXLq
	 cO5JUbThqNiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C059FC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621314275.26944.7349120034643553551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44090c47bf0693e1bf45c6a176b0659ffeaccf7377ca72c35971738023edc370
Date: Mon, 20 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716213142
