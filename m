Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F183002DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785806434; cv=none; b=P9nbe2CMWeKrAix/ij1H7rYlAfi0NmY4GSWBT9VsfipPrV78UT2CV6BK+KfMn+jPdSAdwn/cxmiGksGYzSEgk9FJjdNBUSr10u9nPj+aRpg4yxKb5Wa/xv004XpBuE9JKW9pLB46yDg2xT8BuVkopQtHDZ+aPz6gjednWyQUhBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785806434; c=relaxed/simple;
	bh=hOHFoCkVQ/UnMs7Ej8mdlnnxMJk6Y6bEtfNGFwjUlPM=;
	h=To:Subject:From:Message-Id:Date; b=fMVBEZSBZL8FDHViNS6AYhJDE5Pb/1rzQskm1mALgPwWYx0VNFu/eW4a31RPv5WJYluCGeJ5bBT0OoTsryPiPvePWmj9awGN+6hPL1pZlayeiG3pJ2omRZ8+BzpbNdS0TreNhfsu6aWok0NfxoneI/Wp37v3j66Lx5Dt902IRWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiPAiysu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiPAiysu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C0C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785806433;
	bh=hOHFoCkVQ/UnMs7Ej8mdlnnxMJk6Y6bEtfNGFwjUlPM=;
	h=To:Subject:From:Date:From;
	b=kiPAiysulnw4rUSEAxqQhIAbfn54xzJFdh5ZtEBew859H6qoqjEKeMMZSzXOldorV
	 iy7yXTvu5bZmE6fePgrSrfXhzcLSX70ePs30SHGk/kRwCKqyBJd6Zy/mfkbTvqoHRN
	 uozFMqoRcLR+sZPNJ3/wuKtsQquRrY3uJHY+Pdj1lk1PQJVR7Iqr4qDt3RBF6XMty/
	 t2c3QBaIvva12CmZY9tTyD2Hm8NOURnIg6C6kH15U/at0MJs7Fm+nojk1ghU392qQM
	 +hsxpl6HqTQ//jWkgMxXl/eWiH2a4aCSNY7ZxuUf3GEAu6myxHUkHcssrxsn3s/nx1
	 namsxV7JdZmsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB25C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580643368.4666.5060427198537880731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66676beb3c9b844daa8ae404ca4ccfe7d699864c81340d074e33c0b23ceed029
Date: Tue, 04 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785806433
