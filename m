Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A35344D95
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783489114; cv=none; b=Apbct7Lx0dG708hXLpZC9YdWH8qMqK53/VtXeCdG3URJE7aOf6L0/JmJYTph0cf3VVk5gxUSMKt2+4cULiR0s0sYikmD16RGBHsJSSUtd8NTTo8ejKLJHgSgQUg/syhM+gHoK0qrIMzBGJe4BcqQaGJUiLUf3UILRULijtgz7wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783489114; c=relaxed/simple;
	bh=95Wi+WUeexa/pYfk722Wfabvn483TrzJI3Sa5xd9VCc=;
	h=To:Subject:From:Message-Id:Date; b=rhQYIbwp8v/gSkQm+Uaa8AJmqu+g1TA4Qs2qUSFF/wfY+Osnb00GYU2PdyUUAZgaTq53JHQ7zfBiQXpa3/ZEaUN3+iLo/bUGg5lUNhXurxACOXxIAePY/sIiAr3pL4Qi/gnJkTvG3Pn/gkHjmcS1AtCC8UAZaPnfNiuHmPMqUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTHgkgQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTHgkgQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC351C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783489113;
	bh=95Wi+WUeexa/pYfk722Wfabvn483TrzJI3Sa5xd9VCc=;
	h=To:Subject:From:Date:From;
	b=QTHgkgQeZZ4dkpL/LXwOSPQ6lX+4V6mkvlHe/3srJMAUzzIJfzag9Et/jUeV++U/3
	 1gN2DXSyRXMidaKQ0bGk1Sn+3IpjRK8RXgs80i7Bivasye5wHmcHb9BOAs5KI5Eeww
	 /vKVjPIdVBi10YMjBuEuOo4LYvTCVJs/b+G/LWE06WC2j7m6ulG2wn8AS36prEsn0q
	 bU9qcBgi2Q0MVktavy86G7Hbot13Lz+oCfIcHHixEbyP1Nq9R84W1WFouwlXUniQpD
	 2UWN8eFO58pzMNp4HE7kNOH8ElQmimUjk2nDfbprjFcZaWN+fn3Tv3bKIYdi5UMg85
	 TGz4KzK55V9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FDBC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348911368.10660.12032099004104902042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd50e13891aed5bf3c6952f1ae15299da6f8a97773fb2d909695e4b4229e2a9a
Date: Wed, 08 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783489113
