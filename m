Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D2138239A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784362714; cv=none; b=P6MpodVJ14nkc253pTiL3InFrquQC4OqV6eKQsYL+QkAXUvoumsV57vWCx5kEQUdBf2ZDrj5JgGBpWaOC773YpqvGMeqfn6cUdZjO0ky2rPpLhbd1iSy1Qx1HU8oGRGK4sGQuFkAmeuwhxrcpebPOgQcGVfgUmgPywPgDbdsiRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784362714; c=relaxed/simple;
	bh=EK+BzR8d3tnYtNVjhTCkVacZRha/AA3PWLMniWpm+No=;
	h=To:Subject:From:Message-Id:Date; b=e9ip4EO2MUO+SCiyqunKrSMb6mnLyFA63oXmphUQa+OC3eBn/F+Z1ZXF3nSByLUW4W0OMfh6i4Kf1loVPRrdcRA2RyvfPYWXzHAaU0UtB5/rqtWPW2INI9atQDHYt1xL0/bPtevJ9+NnRhxvio2N5ITlLwlwAwsCCT/oly/+BPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTCl/8CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTCl/8CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2432C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784362713;
	bh=EK+BzR8d3tnYtNVjhTCkVacZRha/AA3PWLMniWpm+No=;
	h=To:Subject:From:Date:From;
	b=CTCl/8CIBHPt3XQMJrZV0kB1YZx0bViK6sSBqbRDqRFzHvvpwGvtE5Oy7Dt813FOY
	 sYhxpQ6aqDmPpgV5g19KzIRix/h5YJh4kx/eDMfJ9hMYcPELZ55maZNn1As2NyI9lV
	 RpIESd4H3k7ULQwHyO39j622Rl1OAgsmBd9Csk1JAXGuKDMBYDOWmvYf+rrCeFnnJq
	 9qxO3VIJdwqd9XGJZcslldWmgnf3MLt5KMe+LtYnQDor1p2nGfFXgSWtvP/CIiOE7J
	 Sti3q85Lqw+vvH8f1IAezS5CeiKDlgWqpbtoCyaMOjDSG/KK4TVPCcNXWmNHFrX9AO
	 BHWrUaP3kRMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED00C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436271368.2917.1243798140986157532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b9bbbcc803737665a173d7b5f044ca311a3aeb510005495d37a04da2c985df
Date: Sat, 18 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784362713
