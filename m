Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626E72417DE
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787290234; cv=none; b=h/CB7OgvGnI2VPKp1OI2wGwTiVnOtWTHdSYKhSTM58zB7D1keP3ObF1uO17bprMblFgQASJtELbZCrOWIvrcrhtrXsBLp7By9Yo7M8XixEgKuhit2GcjjMONYbHH6whupTGEvwCCAVBsLoHd6naecnQzRe1Xbeokfsz1PYoq4Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787290234; c=relaxed/simple;
	bh=xGnBi93Oe4nM3WvFAyTsq3P51p6h5HYMDX8I7jyjOIM=;
	h=To:Subject:From:Message-Id:Date; b=QZWvGEvWHqXvlQbZVP7iI+NMAFSXt7t8TWOwQcpafSn9pquFC0oXNM+JgrJjSt/LA8DT5rvB/h0XYDXvWIcpOgap0Yfku7quVg0s7xZ6QZEpDL/8zKqST5VAX5/idEZYFaZSGgdiuQQTLNEEelC/yujoLbBlUjbD7ctFkKud+14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqJ/gckm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqJ/gckm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73CBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787290233;
	bh=xGnBi93Oe4nM3WvFAyTsq3P51p6h5HYMDX8I7jyjOIM=;
	h=To:Subject:From:Date:From;
	b=iqJ/gckmxnJLrjsZ3kCfD4TTYOvcS+yN6SSP+hahoFQrbIVn7rLP3ELNyOpyy+CmW
	 RklypxeSurZftNKzP7myPB7lB/gJd2EvgicwljGTfxVFccS8z7jpfNqbhANBM22mG0
	 0GO6Z7QphI6pFFMB4bqDHauGifjyhnEEet3RZUGKKLsXLMJqQu3OIwV3frQpxS6318
	 liv/4CU6np3XFVkRUMmH/c4aeTtWzjOSfE6zpgyjHIZ16/H4Ajg0LnUPjOEyQYYCtF
	 s8AzVfDlxyFXIGqGfOoQU7M6Kmbw8Fh20f60Jtan44uWKZBMddQf/h5iCgeH1kgq05
	 IzSKrgdjf20tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06CBC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729023374.13698.16441774470709588753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709db93f5d59e7bd33f83793dd28c4b266934a4652b4dc9a07471eedbecfd12a
Date: Fri, 21 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787290233
