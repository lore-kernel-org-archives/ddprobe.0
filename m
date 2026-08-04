Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE6C47CA7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785873634; cv=none; b=Hm46p1kUUBT5GXbbbZ69aH/KrUp11nJ0bOrbC/e1bJHGMwjmhIITzlRuskb7+c0zXSdYNy+dnoQnjFWjIB3aFSM5HR4+plTdROhbdgQPQqVQ6Xh3cPgJ29N5MncMRPBY0iKJriygIoJVQs0bpIPhNrUEhbzW1ra596WhBQDYQ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785873634; c=relaxed/simple;
	bh=cF9H4gYMZneqHt/EIcXSxJt45VAS6jBoId0+PATiH8w=;
	h=To:Subject:From:Message-Id:Date; b=VaS0R6KYT6F2lngIZY05GonL095+pyscdPwH6Tu8tsgdGaBAD4eGBKmhJQEw8kIbWBARAcdm/tbdkNfrCZwr/gmYLAHce13+dI3nl726neTyzc2bshkNF4fx2lTQrUgqri1DMXFUCQObSPG1TYY2z2g9pl8/KzDaBEz9ebbkDwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIMu3TLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIMu3TLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88D2C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785873633;
	bh=cF9H4gYMZneqHt/EIcXSxJt45VAS6jBoId0+PATiH8w=;
	h=To:Subject:From:Date:From;
	b=TIMu3TLDsaXYFBvKuQkJZnbcKc0arM0nsohIvGvgr+p/sdbntRo3sL9tZEBiMIwqs
	 /aVK4WmMPtxaHPfc/SRAbjk6v1mrOzQXEnkiSAV45uKT67EXfSno+byuTqUb+JXOaG
	 VDGSjU+mIUWApml3eIsKy6F+DvJPkl7nRG4hJifFtPGZzmOOEs3bpTqQgx4P+4VQe+
	 qDdE6FHXlHRFTCcZRk9jPck14pOtcgQ3rN04tKfmN+Fwh1InHWE+sxexYWxuSpXNEF
	 F4Irm/ye7H0LnjqMSF8WvP+YPjdGqTLdUganwy0K3tcKuKNdSMbP57DQcYR827S2rw
	 8cu1bmDcDcxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5195C561E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587363373.9423.5807758671085223476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108ed82bce216fea11c936c1d47f3091501529b52bd8c3ef9491a19fa0d9ee8b
Date: Tue, 04 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785873633
