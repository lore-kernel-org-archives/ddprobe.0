Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382D238FAD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735400754; cv=none; b=JVGt+JXR+M1vboDVEaY62ej39Wc3g7Ln2zCI6gFkInMAkxqKIJs6jDGNvVljFlavdQjGfQEk9CFedzYPJj/fnkR2Om60zVwflGhYrFfcRcQMPtyUtu0/k2uWXwd42806dW8IswvFM1yXCucOKInrtG805UyvF0Ys6exF6C3A/mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735400754; c=relaxed/simple;
	bh=80DrC3lTH6AyP3vhDdzsz4eKnzhCbu8U+43JlL3lew4=;
	h=To:Subject:From:Message-Id:Date; b=T5P8nEEoRQvICDroTsNGs8Ws62HJihfio84HPul3NQcv6/b7Batq9A7yNCQIHQlNIH0vlY+nVPzZZfbBXvnXucfUO1AHeT0AoHvZ2mWw+9njeWXJnTkC8Kay/eMn+kwijXtL8Xawsm5a5D9lnWYu5+GjR3bYsSc6gwgKdv+O4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meTmsgQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meTmsgQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2946C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735400753;
	bh=80DrC3lTH6AyP3vhDdzsz4eKnzhCbu8U+43JlL3lew4=;
	h=To:Subject:From:Date:From;
	b=meTmsgQUnyD37944IA4fSu7ge4y8oXW3I3rIgYY4U6tm7WKwG/IGtBUEqvA5c0TeB
	 d5/fWtPjtbfuWRzszX6HwJqNnRxil/HDvnfdrysZ1jupQfHHn6gOfBzPV5n6FeUjEk
	 BnzH2XTW6cr2AIkkJRbu7rSsXdmctFJI3IiEvSFhosrA1pXOZ2k2bmzFbnOSQXap4/
	 Xs3nXYOo4mhCl2zOHftP6kurEWg3Q3xlFakSbVrTmNpQIaLlmGJ/vcyApn2OB0jm6s
	 bHfUBAmROLHK8QT2zjUDNa4vdi4szK5OsktNBKVKJcgorNJRgEsAKiRjpcd0Fmkag8
	 cXT9Dwj+2qCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B5E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540075359.21356.11040772970172128531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4510e217bf81358cbae8cf396d1864b0521b7ca88efa7ae695cb96a8a951e71
Date: Sat, 28 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735400753
