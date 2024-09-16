Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4601036B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726447554; cv=none; b=rEJvAK7oymTlsTX+uPKnum/RcTarVMNtyzt7UM9q6P3OzNJvJg+x6ICDcUC6YMZUDo4d+hZyq0sI362mF+nLfwK5+06ouCleufZ/IkNKb8YxTese60MDPr8ht6kZiKMin3zttBCcURH4AVl/NCwXgnds/gyZ1EQBEotJepHn8bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726447554; c=relaxed/simple;
	bh=HeGMiAkjBWyKf4TLnlEpo8x8pgsFLfehMR485mcVs+A=;
	h=To:Subject:From:Message-Id:Date; b=ILLcRIw6A0shgbclxi+7hu7IBetLf7R9Vlt2ieivvBxPfOiDRUA7X1qyliIPJUzPnLHBLuMiikNX+jqCBNBYZTJKfs51nwrJmDciAUqcZjJEeOVRCpE7G4gY2mhgQwYoIvRDKKFja75HiJlkodJ8HAL4uZb4LwymdtaDYq2QFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFU5gp7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFU5gp7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CE3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726447553;
	bh=HeGMiAkjBWyKf4TLnlEpo8x8pgsFLfehMR485mcVs+A=;
	h=To:Subject:From:Date:From;
	b=qFU5gp7jptrGUsUGFe3JCrChxsVHomq9MDCR3TgHIe0lpstktwCp9DnYS8E8IdXxK
	 +/Ut+ELahAbSn/KRvHt+KskL5s1i1+BR7oRebA8qv3TuQcalBpTtnXt51DC2b5eAwT
	 BEMTYXu1ibFdNUc9QT3uzefxiJaDPHnnObmpl32odbsylx4dD/vOiCMoipMGrqsLrM
	 cKH4YbXwDi+ZiT0GBX6qi+lma1q7M+vkn3rHQIRb0uwLqTqEsFbQmjxFXFv8a2CcRo
	 Pos3DhXGqQO0+SJF0Qtv/6GDm/eIW4co10stWw0OtEr9mefllQgDFwdyTQhnuDiESi
	 t7S/7BUH7rvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BAC3ABBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644755360.27785.6624499330261163428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d77968984c21fa68a54bd431b0d6d13be948a5ab0b7a62b167f189baab7c96
Date: Mon, 16 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726447553
