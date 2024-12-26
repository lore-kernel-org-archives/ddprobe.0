Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0B217591
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735190754; cv=none; b=crt9zeTE//lhl6ObLoY/i1i4cC/VE5NcZWdsZVZZFCBAeXfyowkAnwQs4oIx5sKJH7Ey5+AISkV6hzO3GNQs+ZLfK0TCJEH+1KTJsx/FWGu4M34seNwmDfZW3IaFfJ2PrOyynJdbXmzIYOtn+ZoqCEOoxbX+F3a3VP3O+woE00U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735190754; c=relaxed/simple;
	bh=WvRgZaP+VcbTW0fx3xZj+TqiBo3crtOyK0MCXpUbywc=;
	h=To:Subject:From:Message-Id:Date; b=MACCC8MvoOKiAFzoJsLKL3+BWw+ZDl0Dr+IqZ5hblQpJLLkcWJovzToIYI4nltzdvuZgCc2Yt1vocE0nGF1NrAzkc01nRsXBzUqa5pG2TKKG586EeP/Teyng0aTzuaRnEyihI64eHxz3A9QTLcxi7yi3lMnBVSTrunwHKhyGNEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZISu4xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZISu4xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35E5C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735190753;
	bh=WvRgZaP+VcbTW0fx3xZj+TqiBo3crtOyK0MCXpUbywc=;
	h=To:Subject:From:Date:From;
	b=BZISu4xIzuA6ompa2RR1WvDofsxdSyQpqXdLvKzL4xYXeNFAEmdVUWa6yb4wSeUqX
	 oLwOYa/sq51kQIye6eGSHzVDnkW4kf1zRRsBk6NIGnjNeVa3h3gmX687Eg9g11/Jtg
	 paflkfNOhJ4K0PdcjKua+fUp1Uckki3BSHn26kH8mYsT35T05loeHYOLBuewjJrDbQ
	 ev+JXqET9M4p13CK4imXRytpb1hRQc6mBhE+aVRrcVtBjdPI2UouNsOxW7rqMDe6CR
	 NYtDrkyHaD9UefVMbNkyohRk8R0l9tfkwjDxOCiTbTEg2oZf+OriU4CLoens3Z6Voc
	 +Rwdf+vFNj0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC0DE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519075364.16976.439500470629664585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed19dc6a4a6545d9c934abbe895c83eabc2633ba00db3ec651986ba37c476d10
Date: Thu, 26 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735190753
