Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15856222562
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762768194; cv=none; b=nQXN0i9/ypEgGMDGXzK2febxvuv/KYIhwSvZTvVpO3a+Eu+iSwrZ/G32Pj71jJ0dX86jZCtznaDQ5YPQiSihatn2LhhzZe6HQniIVbD3I3fGywar2TEKt8Akmll4Hv0V6yIBRsg0rtlpiJ1fsr1EGsL9psoHJypF1Mo6wuMz5bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762768194; c=relaxed/simple;
	bh=nV9qJMx/WsHH64Z39yFdHMAM9WRSiKo/1AfnDqBwjTI=;
	h=To:Subject:From:Message-Id:Date; b=T5UDU7CxB/vvanW6doVIwUns7Vl5LagD+2WFhGYfLubnw3oY7yIUc2lJrCZ2AvYW+gQyi5kczez3NlroaXkLsSvMIgCUnxoz0uLIuEnLeLxnWntXaDzv3ruzsSK1KW0h8v7xaeZIQfCD19slkW2KtSDhkZvXIAnHD9mqdAfqRvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbYsaHGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbYsaHGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3CCC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762768193;
	bh=nV9qJMx/WsHH64Z39yFdHMAM9WRSiKo/1AfnDqBwjTI=;
	h=To:Subject:From:Date:From;
	b=gbYsaHGDKtcktvYeYevl87trwxa6sVQt4jQzfNshh99GwTwT/vU/VdV3QwQ3EaKmK
	 2tl47EMEDOAvzA0lAU4nVidt4f+qDBqviCKtsG1Shmjx44u9+x1BxUcnNEcSeIFfkI
	 6UsGy0Db5eqo6TE8PFkxZ2V3mcOKB5C0EtNeNOJh7B8allIU5+XJbUAtk8pSFo27qj
	 avLixTwZ0/SkTyxAA2HRVQdz7RrtBP6dDe5QNbrOpcwDldtCntC19hHni2cXFoAlEF
	 2AzkOe3NQvCSJ0Sxi173Dc+io8Jxjz8bZqfCSxJFxFcRF8qTQXb2Qw7tAnA8FxE/UZ
	 2iLcwWofAdSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68CCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276819358.16209.15288970795636835188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3eac34fae9d703821a75d0e9ff3d4e8404532b84b20d7960a3a2870c3448f3c
Date: Mon, 10 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762768193
