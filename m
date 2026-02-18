Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A83E22156B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771411494; cv=none; b=R5mSzYeHBcV8MZOGAR/V5a2V/v24e60paRhRoWZ6mKCX0YusejkA3Ul1qoRW7u8f3fPEMS/4/ChYHGtgir+7VG57pBIS6EDuw+tquXe7ltKCEQ6jbmfsNxI8qYwEAGmicvjFrIp67WH/ehdz7u1DKElR0H45wb5xOc0kB05ETak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771411494; c=relaxed/simple;
	bh=ekWtRdHDPwcYBO2tFEo13GU1sLYnVvtbBecoVKhf7WI=;
	h=To:Subject:From:Message-Id:Date; b=OAdPHFwNsJlM9sclw6QfgOWOWphe2iqlXfSeTdo7kn1FNdpqkpkNRsGiqi+dkgaacCqv3fyiPuWA9QEPNQ8lgZ0HQWr/cQV8ertQsKLBR4FtsfFTrLZhbJTU+qoNYubCrTiB6Z+YcGaxunKNhIAqhaDT/IMRUeo0dM06kQvzARk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R05u+E7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R05u+E7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD626C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771411493;
	bh=ekWtRdHDPwcYBO2tFEo13GU1sLYnVvtbBecoVKhf7WI=;
	h=To:Subject:From:Date:From;
	b=R05u+E7ECKpG7YWbp02MFvfwxq12b2dxl647vQDAc43DnXCaNMmwRtfixRJaCB3OV
	 709/nX0mir/rXt4WAc8rQl04B5Sn0trNpm3rsOgrACP1SEzaTP37tElfNyvJfNmdr7
	 p9p3AcpSDD8dVIOfPdqRmqaaI9ALsUOrDEhWRtV8q8gLeyk7VI9N7C7X6CqHlEl7yq
	 oljk9cg7O3ze20yqnqXr00Ysy0K/pGwWIaTC9SNgx78oxZMEAzAFzR9CzMs4FUoTd4
	 /A52gyEdD6a0XzyM1o0Eo4vI12HTgPnVEhyx/fsE3qcsF4TLers9jw7mIKYNAiY6Ii
	 +mahJfIOGo2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CED0E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141149360.21991.13367481487166279720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09689b1ca968c4adc870f8a3faedcebd152aa93843fb60aa4026b6c9718926b7
Date: Wed, 18 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771411493
