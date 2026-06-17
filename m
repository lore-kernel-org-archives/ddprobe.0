Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ED339D6EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781737594; cv=none; b=Ali6PS/pLKkhkt43Wa0aWcB9jwbD6BVE9AbS4ro87rFmbRSnttft3C+9wjD8YKxt3qKTUf2fXpkzdngnXyVmVA5lxtMLLpphNe7S6B2VBilnszI/6+CXS03mydQm8nQiCz306pU2kXo4ZxkZ71Sp//2Fsf2GsjRxvQyatTb/caw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781737594; c=relaxed/simple;
	bh=iKDelDDHsRAnbHJFGwS5tYGCFSgQLvtTlmV+bC6Ek0E=;
	h=To:Subject:From:Message-Id:Date; b=rEcLMQkb2J7lRxu9IVtmy7ugCh7mgsQD8TyYoL3sM1nOd5HhGMwVHz9+3OcFSem7/JE7dNE/29VcG9IMdlTHwLg1ZceacphMsWunllhmBTu0Q7MfGatIaQMM4I4qCi3rFn2aDhcPN65eZtO5BvJSrnhJuisMy3mONRREfG0uoeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IG1+nTCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IG1+nTCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D240BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781737593;
	bh=iKDelDDHsRAnbHJFGwS5tYGCFSgQLvtTlmV+bC6Ek0E=;
	h=To:Subject:From:Date:From;
	b=IG1+nTCZ271sfxqFfzTu4EqG5HjjbhD4I6ioSxKM4Fas5Pr582IWHQmdUqlkM6/3W
	 cUD4mOq+abg7dHEWNHDUZuKd/lSRy9Acl9Uozn66FzehwCukxjQRNPi0Fe7rFDbOf2
	 EuyiiCaIN3GZfl48Xp8qtyWH3CbxxlyCjg9rlfE3i0PAV5+DsPkE+iBDjMdyOJrGH/
	 J4xBWKldyBrpiXjhOej3eEB5WgZwMEWDXWu6fX9uh+CUaGUTVmnmqOHM4CPmadA2+f
	 jjizfARYHeJivl7/IUb2BTrpWgRyNbUovD6eT+lNMtszItl6Iyxpd1v/szi5xV3ZiV
	 rBh4ZAVQf9aOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0382CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173759370.12348.8578625788628027663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38447125a9a3e3f227a08c60f405f6d61f4072f50d624c5d90670ce2f09d63a
Date: Wed, 17 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781737593
