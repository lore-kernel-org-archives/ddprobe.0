Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6C07260B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756064394; cv=none; b=AeNVAwm79dhChniEhpwhVrCz2m8jlyc7aWBZ42rVvzxvaXjiyPjouGptBxJipKMtyKxINZ8TJ2qrq8Re7xzC59889PfE8DzoLuhADbGOK/W/fzO1cOiSnU3srkSDOsEntVU+Vq+HPMXR6mhWVeOs7408gsvWngPTLS8F4EhAZPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756064394; c=relaxed/simple;
	bh=qNK+Fd8nQx0eiwsgao7Vd7AmidbmGSOhMBiaehhxDik=;
	h=To:Subject:From:Message-Id:Date; b=QH/JE759Nu/dS+UB0W5gJdE6IzWptEvDU+R9tSPDUSSpdYRTdEWM7mptWu/3BG0rCkbtVVjlWvyY/VtF3LvZar2jnylHuFRzAQJzlVbzPWGrmI8MC/mMGn3gupoSgVTST11ECjKSmhbVrB6oQiv7jyZY3arf92KWo2F2HwhTWKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFpM67hC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFpM67hC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A671DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756064393;
	bh=qNK+Fd8nQx0eiwsgao7Vd7AmidbmGSOhMBiaehhxDik=;
	h=To:Subject:From:Date:From;
	b=JFpM67hC5s/ujAAeF/rPHbK6dn2GiRXZYYuH8Q1BEcsyElsPyHhWyjlbnT0FK50LX
	 v4rR7NAEDEekAc1kC+BdrA+IVFJStfXJ966/FyPpUOgxMq9FvWigEG+JNxWZH698lP
	 yVPDZMuxiKyGEYPzRF5n+tSwBjpk0+UcE+LDEgUCyLwcv0jLn9hRMu7fAwCSsKMj4q
	 X88LR7RRZwcI0Z3siPfA55HfinLKhZTUjfWDzq3bZSpl9bkpDpwgwJXjkIiZR+plms
	 fDqvExiZjqZP9AFcCIa4CPj2FZj5V7XJU/pt8U39XtGo1XRm5FXymmYS4jleJD87VL
	 Cxk4f1BsaK8XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3DCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606439357.14068.15450369935052886827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1878b96903ad9e99f1a30e2e9b2b41b512188242eddebb70bc254a6ce2dbe17f
Date: Sun, 24 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756064393
