Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196D121767D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784988034; cv=none; b=qkVvzx+xK2dXvZu7aItUgGah7mCaTWCzCzcE3mxDnQNO9z12iA21lJy2Y6VoR6Vp5TJkYRmS0AXjSqJ7SHl2Rd/ufTUn88NMnYnsSYsWsaQWKPP8Iip0WyDTRHUx+rmHUCQWzyIaVYh32toYEoQ4EH20ctciicgRilWUQDmnadY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784988034; c=relaxed/simple;
	bh=TBVXBl5NiPx1uO87LiF1MluoqmbGg+Nq7nS0Z7b9c0Q=;
	h=To:Subject:From:Message-Id:Date; b=oNTljdAGdKBISSxg+7OQ4zI5ZV/7j4ZM2Xp7wlY1Kh9j6/5C65i0v6nl4RYZK5GoHOY9oDaHSk6peNpP2ssDpqp6UIYmU+ZuCdjobcqa5Jvy6XGZJ0rQyu0fwy2NDrjaxEVxvL8dHSO6CZ7+a4H5Z+m9YZzbkjPHh/T7xwe5iTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODHywtXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODHywtXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED21C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784988033;
	bh=TBVXBl5NiPx1uO87LiF1MluoqmbGg+Nq7nS0Z7b9c0Q=;
	h=To:Subject:From:Date:From;
	b=ODHywtXGz7NOKWQIsz9cTh1kd7ATYbjBlbGpte8G34KMcpz+FSRDqx95Gxvda17OE
	 K4/p4YajuULAkH4aS6FJVHoNIAfB9PipMAizAqNWfPdHC3MyAR71BnlJx58Z5YlDUn
	 /B89m5bOFq7kMjOY5PtX0WHq0pSv+Usv5KwAsNqWKlrbdHZISBqbwhgb8BSsFTxZbp
	 yLTQG4o57IZTHkIKrTOxxkxm0jBmhCo/oGPIOFY0GMzk6tTuKZaBisCwcE5Vj6Jhha
	 HgLgzadGbSIPqX7jdM1eizQ7c5syHTdCmHIVgwDA4gGpBC+iM32P1//e1x04GIiTA9
	 uGQKhA6MJglzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB166C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498803368.22924.5247859933443279416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f121ab19e13f2b6e6f9dcac655aa5963239a9f3d33c668127e25a96a51c2da
Date: Sat, 25 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784988033
