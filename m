Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1169319D087
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759268994; cv=none; b=bY6rfl2WrP3kvfrZZ1cPncR0Zx7h7YRyaLW5fw8EO8uPVsniOga4Mp9NYSNUdzd74hJFQ5GSA2e+io/URsDYnjZWVQMFk44DXQ0BsaoZZ6kTZH+qFfwrM08cBHg9ia/SlxcbxNrouFpUBAjgUPBA8LFN59Zt5zKxPy/52XKZEKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759268994; c=relaxed/simple;
	bh=Tkw7XqgrsPlTY/TETKIhiJ6Y/1YZYqaZ6vAeUjGmu2g=;
	h=To:Subject:From:Message-Id:Date; b=Gsnfu1LkXMgeCjM3Nx0h53ja9ymlc+9yiBCo2+qrK6l2toKM+ubV4Bf6nT32X9KZomAdZVh4noOrDkecByBNn8UZtLhVSPLWGZxX8b0Wvcm9+ALq8tPsTEAazQESHu/kOT5HLE44rssbesecnqEMLyiUr2Q73B/h0yVsiXWnWb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF0vqaXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF0vqaXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759268993;
	bh=Tkw7XqgrsPlTY/TETKIhiJ6Y/1YZYqaZ6vAeUjGmu2g=;
	h=To:Subject:From:Date:From;
	b=CF0vqaXvbQCsufkEdtBGVMayJALXUoNOKiaV9YnjhzFHorlKXzgrBBjSTiBvWzLDy
	 m5nl50cGYZxGXDJ8Tc9KWJT5a4gQlsGv5S9JyXm5FxQkchbJq1rJIW49YHzFhOQhkr
	 bfP9tRnko45fUpcemmJxDiFUQeFhZd3FRv/coaMU7CWUVMns4Ss9P5kJLX6iiTaeru
	 h6bwgUQmx1qNG9kiTKB2kx/0r8zDGOW2nAt2Rp7Lcn6dpRYPjlLEJUFkvBAbTfPdeX
	 T1w8p1jbAqEQcDjJU7IFGe8f/CGf7ZbWtna3NlzatZe69/QQw0olO327aX7+vU3t5n
	 CqCGceV5AWvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059ECAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926899358.4815.11305840332149091936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6b9edd03f245413eae2a62fa23706763653cc6879d48bcb25f8b56ac86f679
Date: Tue, 30 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759268993
