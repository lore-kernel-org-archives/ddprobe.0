Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5590221A0B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720959023; cv=none; b=QfOdf9O90UoiN/ZYpgU8Uu1MgpGM9KkiSBGEsPeeiL8H7TMASfT7wDAHSoaERaogDuDR9M6Rfpo30a/9yMlGn5xNlvsIJ+CMcRAzyMn7Q1cM+xjysR/DWwCpld6vEdOGhEG4sc4uf8OaA+UdeAhFiO1ajMsue+kH00iT+436C7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720959023; c=relaxed/simple;
	bh=zX+FKaCjwCYci0SpEfR67FEaXMaTDQjXoMZuXg9FwuQ=;
	h=To:Subject:From:Message-Id:Date; b=L29sIVExy5MzH81HdPKy+p50012EFmq9fEIg8sw0J+QAtDhw3NXLHmDew5nuIHDz67r4+SduoNQdCVeb+afGWDS3IBFFgs8KQ85uGn7j8f/VuJsnw0Cns1wt0dmZbjsX8UDstWcaSOCjsScrWndKQl35iHlnyLQDeToqBK1+RmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czVJneLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czVJneLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A10C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720959022;
	bh=zX+FKaCjwCYci0SpEfR67FEaXMaTDQjXoMZuXg9FwuQ=;
	h=To:Subject:From:Date:From;
	b=czVJneLqq/3gtLoSpFuD8Gvc+9fiTgUl0RgzXMUVaI2zoOW1p0uEfmXQ60MYUO9Cu
	 wUsE5iaZdSHghR2GBFhHnezypxCAzMc9Jp66sXYkLLPxy0DlMMdghw0X0PCr1xbCNV
	 UtBVfqc+3h591IGnY504gQprJNYf0RfYSP/xBUWa+6r3Lgpt0M1LfSeKP294uohzG9
	 x/0N6y2wZ3VJdX2CKC+YALKVz61y75Tmojkj3hMVeRgF8loRC42RHqt4B0WxUOB+AS
	 mZHmaFOruG2BxNyUEVqd2A35WIj0HFFGNEYDZiR1A4Q7Zcbl7qLKp8vjvdh06Ki32d
	 IXnrYTCWU5wPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C7BC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095902276.22631.9002209388096030744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28895f203f09c6d0b3403d4874a96e35280c0bdb8b24f3a57af5bcccdf87f58
Date: Sun, 14 Jul 2024 12:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720959022
