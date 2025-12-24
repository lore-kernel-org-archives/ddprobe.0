Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6E4327BF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766568834; cv=none; b=IlcVtvyp49s+D9kRz4LJDeMVZzN3ajSAsPhigFpePoCEzgyCHdPIB4g+9PXY4Jg5G/ZqVTuMWpjkvQ+ibhhGiadNLJIjexg5el6g9yVIicWmjyzm2s6WUHKeErQU/GXtMb2MAhJyd86in0AQunzGYOYEqQ2ZQOs0BRoIXG0T1Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766568834; c=relaxed/simple;
	bh=2karebXf0XRxMJUKENCS+uFcYrxoZq5s7A3BZ8TaL4Y=;
	h=To:Subject:From:Message-Id:Date; b=gvkumFpGJTTyVd+S51bq+iBVZy+eFMYw8UhP4re3VIfasV06WHGmV+AD1yQqQEDXYtG1anD+rqgwcUJxPaH4GOzUL/DUS1GTGJhAp1pllWvL3/Y3SVcOwyhCO+8tWOtf9ollU4f35McAdd0u3DTodZm7kWVoRvfojH9JQs8zbg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9CqJvpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9CqJvpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5706C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766568833;
	bh=2karebXf0XRxMJUKENCS+uFcYrxoZq5s7A3BZ8TaL4Y=;
	h=To:Subject:From:Date:From;
	b=k9CqJvpLvuUrshUN6Cvy+Zrfy1MXTlaxFw1CP5RiaGim3SSgtoeZXFvmSjGbjQZ/M
	 R4gULu8hHXhiliZEFeO1hxZEkrfUbkgedP/MMahoFDbH7B9GzfOf6wLngmhxf5VIXg
	 z1pqCMo9CY31v9fiYR/gzkjtI4zczix/KDWtmkPZtmgI30JFOIPaT9hUHkyqooJzn6
	 59mF8rsgXjkDUBK0GuAWZAiW5twZaTT0/DuUF6aK2VlipOHPjWTvEvilwmzAns1uuF
	 DXf6njuwH/Ag7C9NL7TMnO/pfrR02zPBGn4qHoFZ6MN7Z1ZYnoeueZtnMf0YMboyio
	 wK8In2ZFiYq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553EE75445
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656883358.11090.12261064293780725224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5629b6816471d74d82d9020b66068d557a69ef14294e2b5b6733b3e24bacd109
Date: Wed, 24 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766568833
