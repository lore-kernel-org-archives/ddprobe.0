Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4650D378828
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791285034; cv=none; b=aAOfD9YdbxWwhPFW2FFEzRWYYTFVkovSYOLTxaXlU7bsdWhfTqtJGoZREg1q+ZEW2goQEcXlvdqO3bwKGAxCJpnEKrnTlw2abQhdLj3tQi1NF7ICyIBfqUQYBKEJMTRW+fKHkIedlq8uoOeV3mrb+0no9t3WvwstV9REKheMjsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791285034; c=relaxed/simple;
	bh=HZK52s9c/z4vuHbLrW+2mPXPQDgHKg8TPClL8hGbW/8=;
	h=To:Subject:From:Message-Id:Date; b=esxX4ZAjsWtLx7X3/jgSoSYdv2S1QRZPfw8Mkfc5DxOgFIHxt051QaWKOHUdpX9/ZsXr/WtN4dzLBwEkbk79BWwRQ3vpwQsTgxyu1VVFdBe4JRHcdVUvF9jAtCl56L3166E6Lmlv8u3A3g5goSTBGoaqiBkeEXb4oiuyZEXrUDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq6YJFeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq6YJFeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0854C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791285033;
	bh=HZK52s9c/z4vuHbLrW+2mPXPQDgHKg8TPClL8hGbW/8=;
	h=To:Subject:From:Date:From;
	b=Fq6YJFeKScQ8HJZ8Tw1SSHakiWAk+00mrNXm+SH4n6YLu6zH1Cx01rJGqdXsvghQl
	 SVC++aqyj/ZOkVyK+DgafDdrtcEfCH99MN+Zrc7EOvKPhME2shuo8CGqKrxAo3okgs
	 VGFH6AehNIhtF9h3dPVuujmFQja7WmuBAHSjbVZVU3Kt/WvTbvFLXRPT7AdcABYLQ/
	 +AuylTQTBp2k6eua0uizl+ZJVg6OHDYzFLhrfGI0oL8J6K49ozpPYrrmwihsoE6yM0
	 NRGSDn1+QyhxOgS42WJWHXM2so4LqUZ4utwChSD+yJQsqh8zPxgg7tQRan3vIqsK9m
	 WTKoVtS1YSdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67BCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128503369.22794.378431538550278995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fd2c8c8ce6a9cce55a65cd386effd913ab22f63a4a9e4613b42104f3872e7f
Date: Tue, 06 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791285033
