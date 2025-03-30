Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512711B4243
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743345594; cv=none; b=GND0NCTB3HlMHfhfJDuqc3ewZctkQNyQVn6NgrGrtV1YfHf4io3P1FyMzIbcpIPBSlWb8RF7FZksuwBMPyJtE/k/rD5mhbrniLOpndAcbDFy9+7P0dlO8fvHcdPiv6VUzBSH5ZUj9NFgAWHgHGX960D8jlAEaUV4Ubxfd8p161I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743345594; c=relaxed/simple;
	bh=wdX15gz+EFd7Kym+LkvP50ZdNLbyU4cB5HcqVJjII4w=;
	h=To:Subject:From:Message-Id:Date; b=LBfcdRxdaGCSDLYVHOoFXni44IztCW16d2estvPfC9wPe4k4ME1msl5mxkFA90CUOTrgsR+8Qh0YumLxyVJo9oGMYuD+eRr0YegZoUOOOqFqQv5Pm9NPu6qmXq2Kuwwa9NWgaFQQHiavYTPArXqzm/QweX/iCrlaScJz6vwMNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjflXnGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjflXnGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF355C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743345593;
	bh=wdX15gz+EFd7Kym+LkvP50ZdNLbyU4cB5HcqVJjII4w=;
	h=To:Subject:From:Date:From;
	b=cjflXnGBZ85jclLoQjVUofQyfPfWqUxUVXtCbgFxHoTuZmJNAzBWJYCKIvYLITk0M
	 WvyJfMnS8zmP6jj1N/J2WLYKTAkRWBN6yO+tnHNp7GaCAh68P7SP0jURd0f4CKG5Vp
	 PekOyqC9rCWpgb5+6jNaJdA7IrlQQOOCTa5S+0IEg5sl+HLEbAUlEHg0LKKG8LzHHr
	 s/s5UMnIz+U9eoTG43m/9VFMN4aV/hd7a3bEeVDBQFTY8T/HspfetYTr5OAYDTwdH6
	 8rRSwApyIl53kkRom+lfwGT1NwB8Z+8Cvb2nSE2zB5EQXBDSzHnG4os+XEZM2Elfpb
	 2/ul0IJzxyuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F72C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334559360.17995.11960209951037228751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff56c3673276130c8ce62267edf5b282ba714f2466aabaa44ffcd47f82f103a5
Date: Sun, 30 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743345593
