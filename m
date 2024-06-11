Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63208101E2
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718140703; cv=none; b=jJ8q8uWS4knC+HlNtwocm0XrrhXV/cAEBmEmyOo9H+/y7EOLzsY9uyumqL1OdoUhH3U4obJc4ujb51ShYgTpSuGWQNWjKnAvUmP9+Z42jby2zQwewF6OzCqO1wsRZVMAscjoOZOFuzGoSvYx5XpDt/6Zw1qVK+0EzUGNxKYw+jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718140703; c=relaxed/simple;
	bh=DEFrOhV7IpScsOXOqYNEdysqJuIeyhQ3WUvwhNxqI/s=;
	h=To:Subject:From:Message-Id:Date; b=c8ta0jeF4LpKc/shn+RpHucZ8v1K/3Mu1PtnDno5pp4BlF7XAMHEfdvhIvMouTrlrZpnq4PayOdMM944kgIBBDUfWSlj9IqvUnBRejz7CMPbSmf9VK7QRDfOdGxxfy5A9ui4ney7AgzHImTcHqgrvXY24+Om/hnJoMlstq2Oawo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlVZxR6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlVZxR6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB572C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718140702;
	bh=DEFrOhV7IpScsOXOqYNEdysqJuIeyhQ3WUvwhNxqI/s=;
	h=To:Subject:From:Date:From;
	b=DlVZxR6AmjzWk7MDxceYJmZESvL0n4Jxnz8N+WJi0IspjYOfKQ/X4R/SdDK5LMNRH
	 fcTrdeqncdF9HZ4nME6inTf3bPsewmbZN+llMVPKZKf2fLlkp5iaiIrzaDtjfvGca+
	 uMPulf5tTVJXExXzyjR6eUjEdpwOUTI/LbQqp6Z749xhnTNHAswaWIubXJdBXCvZc1
	 VE15cyO6O9OAHXkW0md+v82NJ6lCkfn09ZMOwFq1JXO/9YyAnbcsoQIORqnWq320ZB
	 0VHh1XxULJRy3e1ehXodqUDbaYSrpC+aSFUWUHhqMhBo4goZBcnOYKlTCJMywBPYHk
	 Ln9lWj5lyvxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C258CC27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814070276.12450.930689389475494754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba139fa24881b7ee11b90da0180865805934a51e20d2215019fac2299c81419
Date: Tue, 11 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718140702
