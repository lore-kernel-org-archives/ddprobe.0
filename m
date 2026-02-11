Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29756176FB1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816294; cv=none; b=lAEQb7TPIUA18C1mMDQQkUclQywk2Fl1audgBfYAB/bKn9hpA8ytfUCjlMSDl5OJ7ZK0hGTJnhaj/EMKqR8egipr6qUkZ3NBRC6aXm1hqgft1uMkCCdTEEmE3BYibcHAQhwCgqQvGy0KbwniEjCJmROe1lyB37HKOTOIlT4wnDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816294; c=relaxed/simple;
	bh=ODrFmexENnvkJ8qi7kfDRZXEjn8i515Qa4GaC8uohbs=;
	h=To:Subject:From:Message-Id:Date; b=aG0+ZwG3W0ggdxkk1H0xQYF4PUEoghEgp6hLNM2b7DsxASH4XUyVxcKWpLSkmLwJHArUkPLu/8+fwWaEC3KZHdslz+kihU8heIyAPuNu3zksvbZem9eVHMkzyWBvq0ouqPNVPw+5WeAEzrln4kQC56weJF/qc+vkS+ZhFtVq9QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLu9stAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLu9stAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02D6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770816293;
	bh=ODrFmexENnvkJ8qi7kfDRZXEjn8i515Qa4GaC8uohbs=;
	h=To:Subject:From:Date:From;
	b=uLu9stAPb6A58CvSq/DRI1AKUQKsvrWeBTed8DXcl+UlM2a/ChQS0lMpxmqkyxOKg
	 HE95wRoeznDkEMJcq36f9FmC7YkzIR/8p7nuvXC2UnVh6aEBprXkkh9SVmiPQ7aV0m
	 hJbhMmS/JmqgozcT0dx84alt1F2fjkdgeE1AtTyuquJd9CH4aoG/zXdWUWyR5tMckD
	 yUN9f7dmsKL6jLcBvHN7kInIR0NJ7aXI/62eJ202DXh19/wuQiH+5jdNNjIrSAYHaH
	 xPz3hVOi5xiSGH8SH74+dXHk42QDrnTSoWlEjfJWiXaPthQOgVH4jr3i2muFaSI5PP
	 B3j8BZpUwwVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F4FE9E305
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081629363.14435.17918978838354549073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e81fb94d4459bbb34bc805510c36881d5712954811195f35dd15d8929a2f687
Date: Wed, 11 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770816293
