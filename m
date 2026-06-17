Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8433A59BA
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781689594; cv=none; b=qIDOdzVzxbXRzukCZjTCWJR33VNHs2LEgilZuVuQwuKslfoWpWJ6+QEEJDwPltnfDpFSoDXzHxO/dMO93EqpZTk0aEHH9w5ayMSFgX96oywB5sPbVBu2yOBye4j/1jh4d2ZTG2fuhUXfY+FBnEaCRlHI/yMW9QIhXtA9YxWVWcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781689594; c=relaxed/simple;
	bh=lt0nHIww9fCECi/aWXfYQLpkxjbHwoack3XHUX085TQ=;
	h=To:Subject:From:Message-Id:Date; b=DZULfrlMnmLqXQBSq8XGSws0ZusPhnL7aXM6XCBP1V+BtY8rL7004+4RiqFXKLWMHEWyGz0sSPLWmG2mr1sozGzG6Hy3v7A5p0uUhpTE5+DyKvPmSR8ZceI2dhEUtfJ/hSCdcTiAjbLOAqtqTKqFNU4qYKozoLfZotRxVEjAVxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vnz3/buv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vnz3/buv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C778BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781689593;
	bh=lt0nHIww9fCECi/aWXfYQLpkxjbHwoack3XHUX085TQ=;
	h=To:Subject:From:Date:From;
	b=Vnz3/buvM4OIDg9vEvej0IHihDczQzHj6P/qsBeKLEu2Vi2fTlQMeken9F9IBbtxj
	 8PaWoBsEjHdG3Cvr3yHpmc4Cs79xjfry0ZSP8fltEvYMt2hVkq6hABGNmxOWQpL3Ch
	 70SJ/7X0BAIDZ98bPGdSUWUTfQbshHzQBKPTCRZROx/iivTbuFH7rnB+g4frWRYcD6
	 eg55CjLzLup0RBC50YxCrDo3dsZRHVOIh9yEW5USK2NB+Pe/0jyhTJ9btnORz+27Tv
	 LRw9pjTtmoEY9IV1S4qscqQf36Xrji6gC1Yozi8FsrKSW9OY7skEgE9f2u6TPrPCMd
	 L+l4Go+zMhPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86DCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168959369.30742.5430508474581178966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8687960e92f2dba9a97accdf1cb1954bac2c7a5964b070872eb929cc2ad08ab5
Date: Wed, 17 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781689593
