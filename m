Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C528618C06
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749145193; cv=none; b=BIY7e4bKXExU4M0XkJtVTc76P08BTIS0VhfhrqYVem8v/RnhBMkgu8iW5nWB7Uo8oHmmwKI5XlwgGxcqAKuHvqIchdgeYcMFuDadjuY2AVQXYgzHr/Dq8nQXPr6MmurBLTKOpxXrDHUQKVpK/0+zuqk97LC3SWWICrmVGdnT3G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749145193; c=relaxed/simple;
	bh=PtDRk6HWNHWIM6XtIijMIGeZRFXr1jPOqFq2kTZNDHU=;
	h=To:Subject:From:Message-Id:Date; b=Q9LJNShlCopUj047z3uKt4iwCukC3ziDKLniRWYtN2ayfNQK7Uyqe3Kc0FylJNmnG56qgCOzgaMQ2dzLPBPD0Re72FK1TnOd4AgA5t8TCKK6X69BnEZVSs34DbDrqRy5JEmDq/jwQ+QZQZ/daAydMa8zB5kmbKDuh9dyQ4JaJSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ac/57mAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ac/57mAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9C9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749145193;
	bh=PtDRk6HWNHWIM6XtIijMIGeZRFXr1jPOqFq2kTZNDHU=;
	h=To:Subject:From:Date:From;
	b=Ac/57mAUay0zeh9BqvxWnwAizzms+J9zwLaaRYugc058IvGD8eXOs7bje9ulI68af
	 ofquAXaihzM5c+uOQ6Dv4vz0q6VBn1oc4noHVLjGJNB2KaAmhoLAStnvm8SGcW/Wg1
	 i65cbP5ssrv9iZEqdWt91NOP9gAvgvB8Ip+PJFm2E4OgL9+Mo1ewPv0PqYse6akekw
	 bXfsTrb0ADV7aE3XJChzqaHVYbM29jghoiPWMFqNDO76o7USzoP8282p1MFqTxV45d
	 zbe//Hf6SPLwV80lkjz4J3vP27g2LaQspv88yta5fusjPBZ4sde9ojQwb4Gw70oX3C
	 IWaYS5DCdEj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC83C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914519358.12270.3876983033776895140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7894fabaf3b60c5b22374ff931bf672142e91f5d7d430d9ec49d99359d69e249
Date: Thu, 05 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749145193
