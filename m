Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2F244683A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787924434; cv=none; b=RNK12n111XKA+aBEMY+tqQTXJIjBYsWhTAN/b3v1wEdzN8ras3+zApiuOHxOH+NWF/euoNMaONJ/oOXeEBukIQ99YOsOAuucevzZ/8qSul+l0aNMAHUz6chAZknDwmPk873xd7CSabrDODxI1afY5QR/dzJUk/1FP+lsNoCGE0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787924434; c=relaxed/simple;
	bh=Y/Fj5uKDnpTqTMYqAqXw6ZSmsDa3e7f5psgztkIqmO8=;
	h=To:Subject:From:Message-Id:Date; b=X+sPeRqob/KXt1hsJ6ymVvCVWa4BDyntSkxyLphSLfmPmXXHuQADtrWYJeOW8dD4xFOUMdQB3ktzSIlR8fTrj+D8U6tgid1RiM4/ucpe2mOCoOSia9ayk4kMDKENRMllM6vSjSBzVXvevf4jXx0f+2D7lfLnp8utv4Z9INV5ZT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azRs/mbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azRs/mbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE98EC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787924433;
	bh=Y/Fj5uKDnpTqTMYqAqXw6ZSmsDa3e7f5psgztkIqmO8=;
	h=To:Subject:From:Date:From;
	b=azRs/mbvBHcXjW8yJFciE8r9nb6Um7MZD/QQaKIIbenMiiqDiwsw8eHfp1iL9TmRS
	 uF6esi4FKZNza0Zd8thC7brIpTsctIDlZHEJcWE4EAOgRuzUo1hqNDczYweyT348tF
	 GOoAAxXdTDlhc1OZPTjztMc3tpL5ZSAHtiiUG0e7GXoRLA/jHgTdArXFq/nQ5ltbza
	 CUrdtp4foEFLo363wwCBVVErDYySF9yoGGAOsOXSo9b+2RXpbQ0hMg3Zoo0tzMBBlL
	 2S61oH3rUWiunKX2KvJZeLxvIIP1gsI270jNbbMyi19TXcoOtUFeyySMtljYgg+Vna
	 R2TnFqKdwD9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB259C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792443369.14798.3861454563841636078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebbac4d990bb40c865001ed858e89f58ad9a77b437fd2d839ff270a6a84780a
Date: Fri, 28 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787924433
