Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC33559D9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765986234; cv=none; b=gOmGkb8qrSEi6YBgqnJONEdIayp20IHY5a1v2d6J+ClJnv8L7IrjLda8NFzjXlkfQW+Jm9oZEopB9PJyjAcQfIqqzfngOGgMX3RaH5EhByN7jlaT+EfbVumKaHB6UIkwiPQDXwn0Qu2nUQ4oUGD0KU44H9Mse70iL3vEXZXMep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765986234; c=relaxed/simple;
	bh=oa3ZcCzsvRWPgG9uBpZK352t3SRofDgXYjiVrJQYUQk=;
	h=To:Subject:From:Message-Id:Date; b=TQNNXRH0GR7KLiq//5CEq1Mo5Zj38YSpjXOrIJBiuKvV8xycxx1aZO8CCUZcZvaX5UhXf0cIVTUZBfwRsPr2jA2e35GU8TRUy/CmDFircvRe1eo9a5zelW68OCFd8ze1OGh4WBf2W5N2RPPHl8bmgITnA2dYyhUL1BpekJnfa7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQjnEnQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQjnEnQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B112FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765986233;
	bh=oa3ZcCzsvRWPgG9uBpZK352t3SRofDgXYjiVrJQYUQk=;
	h=To:Subject:From:Date:From;
	b=sQjnEnQEV5gsC1RSoUiBoglPnqDgWdESo+eTiZ4adXwsclEFIqZZZ1k/IBHyzPinm
	 hmC/ujvlPsFt0QyC8xkimHlUkOIx+JiH27L2vVG/0PEoeSaWs3wtFm6nmKA28IITFY
	 ZaskdBCnkl4NLOe3VEOvLdLr/FaJiLuf0QLeg7Uv16Wmd53Uo9mpuBe4Yb6jI9GwRc
	 ZgnEgIapuUuuJxOvkZnetes+gvNqZd8qEACzHtj0yfRE6LPb6pgNDlFhuO1mZzyUZV
	 qqskL4yAE0ffe3ciufNZW3kNy77NPS6+rP2psGQG6eDFjQnSUtstZMpvMGp9hsPHwS
	 tzgUNR93HggGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E8D65C6C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598623363.8769.1389802022132835475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13306aa3e547e41bc0decfec3e807ce3f68f8d129136b659999aaa451c58727
Date: Wed, 17 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765986233
