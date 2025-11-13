Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C53491E1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763040594; cv=none; b=PPoyfauABGIMmfxgq7TVmBEOuTunAwW6etslSBxYmyDZGCPnPojIyWdni2ClLYVvcZuOI1bB5vrCi9IlSyiGQhx4+ItzlZShNnO+EfpM5eP7i6Hi2g1CgRiBMBgzWzUD5/zJlcNi0VnjOGv2qHmk6BICCRqcXNjUhiU/yH0Munk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763040594; c=relaxed/simple;
	bh=BWD4LGdEK25w46AvIKlzbSwQCF/2WHjAohPIVons/Z8=;
	h=To:Subject:From:Message-Id:Date; b=h+mplLYv7xZwPh6RYGeKemH2CwU073A5fwSJ3scF3fERrPpi9cQ4b7cTCc6ivU2Ul/ic4vtqZggEYcBntv+iyii5YHuNjmkBwm0WwGoXs64vB5Duv60QSAqaUT7fCaHwVDwz/mUvuShsSCEgZRFcQfbsbS4h/9B/w0nAIhfFens=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTnWzbAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTnWzbAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36DCC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763040593;
	bh=BWD4LGdEK25w46AvIKlzbSwQCF/2WHjAohPIVons/Z8=;
	h=To:Subject:From:Date:From;
	b=fTnWzbArpTJC4kcPwRU4bIrZt5SsfLyFeJ4+uLGFCsmQ0BZkH2rZDStJGB7TzPGtB
	 lf7YLhUnD1T5iPlgR/8nH/UV5RR6fM2YvCfMlecag/i0zEXoO07fN+v9q0hZaAfnQN
	 4T2ZjQfaXJDkKtzRJUanfLLi8OvjA3ZT1ic7auj7J/cYa1yav4Q0EUR647yssLkug8
	 EjyUASpPSGyeCZpfCjjstn3m4r1zFsex/5ZT+iIw9+cVmnx1O7OPqPu+ajOM7c9Gr/
	 YO3iKAzVdBOjPINO/lzt7oSCAFQViA0IiSGblGLY3okq5Yxpwei+xOpK5sP6ohvaPF
	 17W5tFr3W2pQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A83CD6E5D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304059358.5586.7893009311619708479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3713559b3d2979857465cc05f846c19581f0f0c0496d6c1576ff7914a662367d
Date: Thu, 13 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763040593
