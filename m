Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76132B13F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786803034; cv=none; b=FDplBFDHhM6jtQ4U5XVrWwdiO8CWpa/RHmx/Z2CQ+jOI6SYgyX1EZiKxO/BGLxuzJifFqUsZUyDKYrP411FVf4lY1pK+6ihy8fTaZx4wtB/wKxirAMs4N0R0jpR2gIdOqI6qDqu1ESGSYxx6qbLtos79RrjXG73K4P7QbO1IGNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786803034; c=relaxed/simple;
	bh=H7JMdUtCOlicft+WlVTVE0EUi3BQ+Rx8gAR3UkDt/Qg=;
	h=To:Subject:From:Message-Id:Date; b=JNXjLHdjWe8BjGbFRj54aPRXyXc8y2m575/ipCOK08qB1HK97h4sV4Dm2ZvG/X20GNoAsXd3ko1awG2AVssJLxoBOxbifU+aA4niFmVQwWZZcVk/zp7FOX4R7K03ObiU6T13uiHf5IYHWTJvlGV4CBVaKuH3xKXy86tKkHv6SEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYCP9fkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYCP9fkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBEAC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786803033;
	bh=H7JMdUtCOlicft+WlVTVE0EUi3BQ+Rx8gAR3UkDt/Qg=;
	h=To:Subject:From:Date:From;
	b=NYCP9fkn0prbIOH//vEjMMiygR4v8wKuux1rsFguSSUz9yS0O9ZOmLU2+VTebuWqd
	 FdPsjZg66OmOmRMHDp9ERc9hSl+MsGeRPXUz7Wb7wdNNuLwDW9xFnl9fSRD93efbtO
	 2qrFVcDDtJyIlyEQK/ceSRQkzTXq4vcQNOk4D1qVC+Ix3XQ1geQ/8M/Q5iuPh+GAdh
	 kIPizh96tSavzgzrBrwum+G5xoBk+jkDhH6WGgk2RC8/cxdBLCSPHozcmaNXUD0tLn
	 /3pYcuSMHpJYh/8FfTtBzJ6EDjffhgMUiWo2MP6YAhsW+VuwGkT5ekVIpS3TIQqfy1
	 m0L307ynS0E4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B867CC5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680303374.5257.7138955093172284356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1266bf27abb3308ec78cd69c32d85cee5db81f348c1cc455c3b6d016531dd6a
Date: Sat, 15 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786803033
