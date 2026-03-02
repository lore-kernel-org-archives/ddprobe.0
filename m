Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B76227EB9
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772424894; cv=none; b=OmgxqJjsS/bcp0O43QMdRHWPGv/fJleUIdz6wO7k1ogU2iF8mx8val7YyCw0nzdxHNL0UgR6r+f2kN6aHD5I88+AVW3jdFKYFG3Ov1gpudWvUFevHSOcfhX/yxudurOLcmTZ+zTd72ojYjA0xGjW/xVB3MCO5a8bMBCiiFpD/Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772424894; c=relaxed/simple;
	bh=v7+1pb1LipRm3UP/GhZAAmagE8hStpGQulzs0ciIT1o=;
	h=To:Subject:From:Message-Id:Date; b=OoE1VTp9jG5g2tnAuYZ/PTtLyiv3NU2borsT8rfWKNJnUrw1XqUBVm3dMFFA7qmInA04Hflj/SFT6QP9ThI0WCCQeiEaGZRO/R8OAOu18fkX+eYR43vPXkE8xtAPHtFYw+LHcjCZrFrsAlRSXYPeyBkzkBLU1nZ7xivNZfwq3bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQkxOTgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQkxOTgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B222FC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772424893;
	bh=v7+1pb1LipRm3UP/GhZAAmagE8hStpGQulzs0ciIT1o=;
	h=To:Subject:From:Date:From;
	b=NQkxOTgv7BgFRf9ChFXQ7VG8TsF+N87aZngGzsL6enuH0Ir43ZJcVO2c+ecLrOG5+
	 uOGpRbhzwMHc2sy2dQ29OdlgDn1sXu0fDttzUB04ovqEySifOdd+NOXNlaKPh1c+E0
	 UyHvvXllE1ZXKah7YsKk/uHybttwjC3XhWmIneDpmmm/JlNNE9uih0oDkq7521BAOU
	 ERKDtFfIO/nqRijNPlD5+BdyIPNDoyNzHDukoJkguei/oJnN+R7s+iAoZ9lbKTEAqz
	 rC7y1DML7PnGgoq4ZP2kO8v6nNvE1jQsUsuHJ6xxYayDgnSg6ployuuR0JZfpYGinl
	 wTv8nMVoLHeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D54CD58E4F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242489360.27955.1810722519349173573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a060911d434a531367ab65a593ec656d709ed8c3dc1411bbd5adfcdccd0142ce
Date: Mon, 02 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772424893
