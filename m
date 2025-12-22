Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFA43054EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766396034; cv=none; b=pbktP+OCbNBlWiiDTF+xu00Xj5tM3ebaBtsxImCr9XXgThJbHHxVJwKE/jUwZ9ZLo7KvP2axJsiK6wzqDSARg3kmKSpwnxW6otdB2O2I/AhlXwObo7ILsZZMLFB88cPfszCPlnXSySD/oX8ZauBQ4UaLnmEUDts1VfiDsnPSlmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766396034; c=relaxed/simple;
	bh=r3eGRdQl2sATpZQx8av0dXDJIC2qQmmfUuEiMw9Fv5E=;
	h=To:Subject:From:Message-Id:Date; b=u/n7+MYaONEhzPjkhX/orq+E0v6JtBlsrqbEtgAIbK1SfUyAIPZvzqtTuDNakeTk7kJpOSE/Lkp2oHw4f7c6D+76ivnDSXgOQ/QvTEHNhSR4q+9am3RH0cW0t5cy4KTvy3tT9pGeE8oKpJXU6IGONODQe5B48zH5VUpsZ4PWgio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBWnpeZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBWnpeZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3F9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766396033;
	bh=r3eGRdQl2sATpZQx8av0dXDJIC2qQmmfUuEiMw9Fv5E=;
	h=To:Subject:From:Date:From;
	b=VBWnpeZLM8LWiIR0T+mWRB9mGA845VDTDN5Jl2a8uIifTT8q5oQYzwrx33aE8K59m
	 b6PofErFFlrC+PUB78xuuUFpFYiSpDz6z5xfMO6qTyaDQ2WTecqOdUqI1NL3wCMM3S
	 Ty2MFRzDyhE78C2V3q5o253cczI0qPe/fGaxZdAjYw7uNjvmeuVWzGyhhlg8shTcty
	 qTxI98J6PjVujraaIBBEir3TG0kikeQEVoDK9yrumJ+UBxCdMo92YBO0k0HT4N0Y2R
	 hxDKb7Uez8rXtpmzAjYghQQK1jk/JDBbt5XHT/yq4Dpw8Js52rOITMgqCDqpKKgj7r
	 LIPC5pyVOYbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DAE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639603358.2695.12711754997362368295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b995bc2b41f90cabb5c1246bc0381bbef8b053706d725b83021c5a708fd9d6
Date: Mon, 22 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766396033
