Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F1D1862
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760400594; cv=none; b=ULVA06MD2nGMon7fvOGYQhCFsFSk7Tjt5c57Z+2yM897Mm0LyPs0VntQKjXXc+ee9pMNitX54+JgNBZRC9+LCG5Y3sYyMqtRKr6GMc+PETUGooPpCJulLZWVaSFzE3QiYi2PlqX4y1z4UMGqAMHN0SqlG+jpx13F7PyE7EVm9EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760400594; c=relaxed/simple;
	bh=/bUyTOyR6jKGXCXVE83Te3KYGej/9NBbwREvTnp2gBU=;
	h=To:Subject:From:Message-Id:Date; b=iQOhjuRAOsBYFOFlOCBTjy4kjy2IdYVnsWw2VjD/Au5cqNJweOO6nIXjAoQUw1RqBO3c8QhBkKFvwWuXRKWN9L76GeBvTCCKQat23qTf1sSE0h2jigePEWsJBMV9GWYe0HAJtclImAiQvLCXRYtpFidbcFDBMJ+o2etpHa/s/FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmCBS6+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmCBS6+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E46C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760400593;
	bh=/bUyTOyR6jKGXCXVE83Te3KYGej/9NBbwREvTnp2gBU=;
	h=To:Subject:From:Date:From;
	b=mmCBS6+UXbFDrMzMFR7qYAzE6ZSEMfKsU60p8TkqKcEmRcERka7lnDiaD5535PZBX
	 KbHLtWXgUp6jcFi2adhjYJUzDnzhJKtVvCihCZ2zxlBCXR5owngFQBvGsoHHwUrxoj
	 8ddC47obd8XumsaRq0BWo9YIBwdDpI8y4TWc/EfQDT4iX50owTetTbsFMHA1vvFVAv
	 zFEjR9+XoqZGvP5F6jhr5Lw1XYh/mus/7ho7T/J8WBKlNbOS1B9uzlu9lyUUsr/Tuy
	 WBnJlG6GUFpis+M/47/er1iwR1H9C0xXGJPxGqj9IKSo0IptW9pxqg22k4xmogn0xb
	 2QKLkUFxkiE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2FCCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040059358.19681.5832788830313998702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767872efbe1b72f1ce74a9d4cb29840ac30dc655d1e77e78384f7dc9d07308bc
Date: Tue, 14 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760400593
