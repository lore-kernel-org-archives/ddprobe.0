Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5203810F9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742018935; cv=none; b=M29SACSZo7NNrwKpFsPamCIkCyGZQclDVtrluGY9a7Iagqeud93otJqfUqy0c9wuF9xikqB/lKCYVwRmM++jaTICVzChp8ghz+od6RNcs9hU+zmIuCz+ZebR/JGvUXZq4osQcYfqaZmnm1s96/jWvGbS2RjSVtSmFj0f2x/jzBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742018935; c=relaxed/simple;
	bh=tvhp8Xep1OgbeZSTi3qdOBWLinRDLLj9QLHKwPZyJ1I=;
	h=To:Subject:From:Message-Id:Date; b=YswEmfg5zSzv6RUyv9a0+NHYsjKqBy66CI5lUHsVhLEPTtyH30irGFrV+HpG0OCw9U+y+Dc+KcrguwMtRv/TPwmIIF2qOllmqyYxI7z7WSCuVIpnAEExTfJKDjRDe0qU6YHviEoYg/1UplGVHdg3+0AGPC7hgaizgngTutLFwU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7FMcTN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7FMcTN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC398C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742018933;
	bh=tvhp8Xep1OgbeZSTi3qdOBWLinRDLLj9QLHKwPZyJ1I=;
	h=To:Subject:From:Date:From;
	b=F7FMcTN/r78rd4dmWLTH0KafMQYr6jMKF6D/3UABD1Nn4FhGUehJlgQBiO8WN3qL0
	 6nD9N9xOEJ6+ee2EFZRcCOdr97vBNokjgjwjPKmmzTA7qg+B5wMgBztllnmTTDfd+t
	 1+mr78lSgv9tZ5C65i7m580AFdF73sCrDWjrTuReGVH90cS1s4MgRspQn7WdUaoDMO
	 tbI89TpaC/BLJuBN/iwHP/9ywM8Qm1sznESM+bPgDe9QbLA26aqDhOwZ5G0UoDNR34
	 CLlb6TH2nJ4SR2NLWccae9XKoey3t7+ei2B2VnUUAFOIGi7CyNkZKEqEajlqlQQQ38
	 iJun4Vif5MmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31D4C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201893365.5073.13577037386102044259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a011148f9ad7e01516e726e89d6f6f0a486afbfe14253601c0cfa2745fc14b7c
Date: Sat, 15 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742018933
