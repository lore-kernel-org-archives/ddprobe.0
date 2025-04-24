Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8B484D34
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745530194; cv=none; b=PlVoDArCgk5hO0mouYEaEOFp5blmWlfqOpwROi4i32Vkx5+V7AEdpRHpAveENLA17VsVYvlg5rXgQI5k1wBjHijvi/lRtnZ4KBhywzVqswMJYcCtRGQcHa5dRNIjXUeK14+E/5oNX+yGmpi0fv/2RzzgL4QhQmSXSXs3YrppZuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745530194; c=relaxed/simple;
	bh=p9UKNNklxWatyGk//CgF0VUrrO2+oefKn+pdEKKebTM=;
	h=To:Subject:From:Message-Id:Date; b=DMvbLMeo0IFsSt5v+3VHN2pHIzCNlt5bGCqcSSeftSH9XaECvD9Q4FGVmQKZADJmGpFK9SQ1LZyJcZwKdoVg0ZSOBWsf7U++t/H71tOulrb4OEmOyuOD2iJjslWGvKJsxgWsJ1jIvQG6aldkxdiw1LH9fwrSF/PUpj5apZADqKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI1MrAk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI1MrAk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1007C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745530193;
	bh=p9UKNNklxWatyGk//CgF0VUrrO2+oefKn+pdEKKebTM=;
	h=To:Subject:From:Date:From;
	b=AI1MrAk0Ipl6YMYigRSmKrvikSP50MDVNojyudjAN8Pnx4od+PaioHVqOYvPfR3PK
	 EBc+Ch/7xp1UstQ70cFqpCka+BErZI7C/9cWvdEHbu8f8TSxjTrvLP1dRfTfm1H9AN
	 qhK3xvZP0ppPbaBKEPfSlI+rC+0amyRp0B5iEYgcnVQf7nOum/L96Su/B1abJl1/M9
	 wMlKYld0sWkI7/oO8LRvAc7tmOzVDq5i/NiX2yllvvRv+POn6dR6mx9tmvZQWpkEON
	 PGKonH4Nf8tKwe7gFCzfF4+09Eh2lYotd5ErJvBUjr9Q56OiM4S2k9SQ6dCAGU2KJD
	 Ziwfe75pLG+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553019357.5162.3948140171187075768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef50496a1ba3c385cc67de77436081e2a2d3b4d77645208796e4cd24ea02a992
Date: Thu, 24 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745530193
