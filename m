Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A6D182D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743271194; cv=none; b=lk0ya8JMeO+oBmfpAw31K8azFkk+/OgB7gPITTcCm9x3BAL0HHdHDFLu5Xoa8WSm/PlGTXuGKhQDHuK1LRZCkdfBS5Bf2d/9b7lhSBhBz/3izyFjAvOCC8yiphwX3wcGSmL2bdUCidbhQvTOsJQQ6xIPD8KxrdSPB2ZjS+p/mIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743271194; c=relaxed/simple;
	bh=ZT+0+93Hp5YVW3HmZ0oeifw15lyTdrt4MsC2yCCKIfQ=;
	h=To:Subject:From:Message-Id:Date; b=FyeBBpQ3AzcPx+KvVss0+mGXt0NMQttMPLkP65lQSDV8uSVv6BDbwPtM3qEgvCLsegcm9qWgt7NKU4IS3bmQT5FBFSQ7h7hoFLRwVWa0OD2J3hzONzWRWqKOZznxK8XeLMfFaOWNbphs2c575znvZcNrpM1kaTviRMIMsj/QIJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWKZse89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWKZse89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC830C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743271193;
	bh=ZT+0+93Hp5YVW3HmZ0oeifw15lyTdrt4MsC2yCCKIfQ=;
	h=To:Subject:From:Date:From;
	b=KWKZse89JkDt/U8rKZVogPyTVrv7FzHIz9T+A1G9hcAfyH5l/Nl2Bv1WrSViIYmHe
	 QHOVWZLoH5aMrcHMXpgjCvpWh5pzk0HYDxpKNzPptrTdxl7oX9/954GGVho17m2uHM
	 OUPxkwS+I+vB1iVs3kGSkEmWfw4bC82WmprJQUWtbBCnuyvPwNyGZ1dLl7T51HH4++
	 Lij/S7Tcr8Q6B2fTI7zZAfDZ6us7BaPvf/k/HqxDDzDBtgILvEkDP6iovhV+iT+gRv
	 Ggkj9EVlSMPiZpkwFOpcTFp/XXMYrSg0OokK8IUxS3wzd+Uzu8VUmNbEr6scINecfl
	 l5RBT76j6jJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327119357.9309.4406515835343063756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7049e4521d8a7d9aa7aebf786c14d97e21b5ac9ef0bfc44a60ad0a0e8ed992b
Date: Sat, 29 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743271193
