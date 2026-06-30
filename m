Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1763EC2D1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811714; cv=none; b=k/s8qELzf7f1kfC5+dpKtFVMqnQqGFntOLdMZ6w4H1ssX4IKxyn2bDWJK/f/kbCd/bfRORi47fMfx9Ho2yiDtSffL5VE5Z0LY6y6/6+RIYxJiym1MiWFarna7JyABtCTu3LmhjGR0TyevBLjP1zcSMcDmqzgwgufQb94YXcU7GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811714; c=relaxed/simple;
	bh=R6aUDsbprM0tOp+7OfJwUYoW82Iyrg4I7RpIePH6MzU=;
	h=To:Subject:From:Message-Id:Date; b=qOC0+t6nqhdc2UPV8kR7HZpFbUIZoYasQlTBWr5r00yiLZ5HS09WggGielk61juAN1hyObwafg0wlCPOowsznQTEoQ4E+DH4tQaZF7A5Jti7ydC3rbCQirdcTzKVPLXt7N0tEg11Qsq+NMjrToQLLcsnEv3RSuvF7rgoFpdh+Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBpdHmpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBpdHmpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A2DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782811713;
	bh=R6aUDsbprM0tOp+7OfJwUYoW82Iyrg4I7RpIePH6MzU=;
	h=To:Subject:From:Date:From;
	b=YBpdHmpvmYUUP4soZLveF7cZGNP3uXO90+IMHaw+utNWBx2mPe982ioTr6k0pzLtR
	 RwvnVkUwUe9Cp3ZlxIKNmBG04AT/eEr9sRL7cQdiubdVNtnMmfUKKfj/hC2bCaeSx3
	 8cCV1hfVD2DN/ens8XMGQq/svJqggzxcEbLoifyYas0dK6JQPwy2Ntrvi/Unq95xIa
	 fn5jRXzTP59373ThGcS2mf2aaIcz5VET6GQKx/IlWI3+qM0mO0Gkephj4IYKJcqPys
	 MM8d18l3AJ91j/cFgxpb6rmdGTIq41fsKhkGEfqszmtX/RPeHKJcleYQdpR4CyfYjL
	 GlZ2mD9W7wmIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C4C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281171368.12148.15853645940786938499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e19fa0d1eef19229a90069cc5556d9fc70bd8d840bdf33c3b7103cb30eee31
Date: Tue, 30 Jun 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782811713
