Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCBC182D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760869794; cv=none; b=kG5YESKqHKzZHXYTvYrRAigWAot/LW9RO1o5tmvSw0Eaey0ySjhb3o/Cteoam7bzjbapJCLiPBSYsgPJR049R7drC9Xji4oIW52yQVV6VWpN/eF963OSOYE30RjBlUj9M05Q96xAtoUJewX3lrtKCvpCcmCrAP0lIMFDagF0ae4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760869794; c=relaxed/simple;
	bh=4i5zXNdFyRryptgnEto+3+TM9lZ1oL6TYrjfkktIluM=;
	h=To:Subject:From:Message-Id:Date; b=BUP3sKy3vDF5oIQPhggvQB/0y5f+YDYdYUmzKkM9fcA6jhEyGDRDEcVo/QPe/JUKX4DWDrzIC7Xz74pIjFYw1hXrJuwtGPUsTDoUghz+Fk4HpEMAjVST23RPgGF2Mj2K5a+e8fzZjx6GyHR5D83oyvH3jlp3SuWIhjJHZ2bo6o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQVEOeXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQVEOeXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB6AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760869793;
	bh=4i5zXNdFyRryptgnEto+3+TM9lZ1oL6TYrjfkktIluM=;
	h=To:Subject:From:Date:From;
	b=BQVEOeXHJwG0TFfb85iwUiqRozkSy25XHr9LiB5U7pXNc0RNqnHwyAGEfEJHsHvPY
	 KrLFxltLqZAstP+R6B0PjYOhXkyoa755Ay1mRUaMOrUG71XLdA1h07WREjGr00m6T5
	 GRTH41NRIgeaNeQtszy4EQnXEohuetoxASKmc0MjhesynhbmYeIe1U9jFt10DqkJQy
	 O60pDDIBLyfoOmo91J29Q7l0j+NP8XU87hrdQB+O5JE8k089tRe6My99ln1xreKNa/
	 c71VQEmUxUhyUbaVN4NjTuXL+5VR5SyHKSOUKyV9NUdc52Jo0/K3NqxJaFd3XDxmre
	 TT1Y6r/JckDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99891CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086979358.12459.2740775393613650837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a508169a0a1010b81b3523f297a0c4035f176f4d60966fcba639656784640d5e
Date: Sun, 19 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760869793
