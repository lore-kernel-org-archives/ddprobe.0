Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E31632E7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785910234; cv=none; b=omlWDi6i1JiIMlh1Kt9YaVYsxX3bd3SFxnuVgolsTu+KfShyDNTfa6YO2BBodMxsH1kf3y1qd62NIgZ35/NyZUPR8zMqbox5MdchduGtBzWRQfQfF3SUKVyYLz7yEff5RiaXoTaay0o9BWZQrIPhAqeWAqDCrBvwDebivwePzS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785910234; c=relaxed/simple;
	bh=AIz2SxO1FCbmt3NdKB7AlDpXDLTVu+h99cPjdgOuMjI=;
	h=To:Subject:From:Message-Id:Date; b=doqp8AAtpfbwuDyegMIhs3O5+6o9baJ89AZVV54VLqDE8NzRU1rsz5XCbpAdnnIjE94unu572Zii23OHfXLWX/H0cpWRlyXo8cz4Q8t61Kwi4D4d3Zl19YXIDsTdx93lppFqiMwa1I4WSI5WfcxXbAUChCVrJuSsV4wefQWHHBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqSR2Owp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqSR2Owp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6608C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785910233;
	bh=AIz2SxO1FCbmt3NdKB7AlDpXDLTVu+h99cPjdgOuMjI=;
	h=To:Subject:From:Date:From;
	b=uqSR2Owp60DVIiYF9Mv3qt/SIKFzA4hW76GcOEqvjjrHrOyyzaZMt4Xv6i2Oux1de
	 FpL0xgmpjveBcqvLk/MyTjzZC/EIqMOKAJhIwuHIIy8Ha5fLZdCCq1ZoGej2d2mpdY
	 VIYGnqKtcbZzelwND+gfMSM1AefM2DNRUQT/5L/0Iw1rFqg3rzm+VGMTOYWS0s2UtN
	 aRvemdCwyQJjixu37nJzZzR1e41H6xPZvmLyxu3EQuXBtqlu/qpyXLYJHwpAkUSI5/
	 nbMFSXJO3STi6+eiNm/Go2kQb4YtgajUfOXYlAw5W1ZfqR1wU+9kR7YOd/gt74KCg+
	 A1nrWzsWyAwIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E53C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591023372.22041.496036205249705873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e825aa63615d2d6bbc8cb4dd11abf40fd3a1c5236cf48a5ae7c40b53b8b3a351
Date: Wed, 05 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785910233
