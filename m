Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6F93D6F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760161194; cv=none; b=QI9nICNdKKw0qIwqHHbhzI4F1pLIQDB/cSkMyBFx/EVOBsWiQRfs1I5FyWR1E6ixWYtJo6MZ3Q3gubrrNW5cVOcIz6ICDG8yojuDzLire7bSPl//CiFw7bSNxW3OvtjHkLRgNL1jefHBbrJs++aqJ82pb5mBTDQ3PhBk5gbw86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760161194; c=relaxed/simple;
	bh=oxynTZ7mcJE8SDoBmSxUsIOGvwITZ4zQEEnQ1Zndr48=;
	h=To:Subject:From:Message-Id:Date; b=OHjKKE01UJX5faVMJ9D7f0K4VEIhiEU0bqRTWn2MqT+uEJLSIsKE84AV3Ud4nWISo1fmxP6ErIoAUqLcj4mOJzgwbsKxekszqOfDP+hZhMbeR8jl4opnALmxQf+4RqyRKizMiSCU3KVo4jfMHyeJAskYKmClGNn7y4mQ/SFEV4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WclEpz9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WclEpz9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760161193;
	bh=oxynTZ7mcJE8SDoBmSxUsIOGvwITZ4zQEEnQ1Zndr48=;
	h=To:Subject:From:Date:From;
	b=WclEpz9sAlBTtExP8KYk3MVJ0Fr0y7ZQ/+ktxLwG1hH+eXE0xpPTdbvkXU1j42wWR
	 KIukuRI/F0bs7dBWlQm3rRqWVYi1lOBpyLd7mQ1i5hJUFa4lhf3TLxH1boZriKzqAj
	 PM0pbGM8C1t5FSyvpe2gd5os28gJAjohjhDFN+SpBDrOCt8Zcw6cjuVnq+BSnALMV2
	 EfvZ1bpFU+aEObAI8klBd0yp7eMRTOOYplrD4QhdW/5r/9aYL2xJSBy/tsIb4Mx/q/
	 Hzw+OHDWbezyniSYfo0v5v+0kuDWRrBx32xUpDK7zVdETv7NN/RfwGN4deZkBg6MLG
	 SY2UC6hh+WW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C89CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016119357.17929.13374131443405497905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646af2f6f2d02074fb0e53d1475039270fc8f2a7c6d7e3a7a890f1faac85064f
Date: Sat, 11 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760161193
