Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E62035C687
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788643834; cv=none; b=F4nv+IeWB9BuDR3t4RQQzjJnBxoBImI2tX1eZZG+7GqaCekYgXdVuwx14aONsoEu/PtS2EJ8nYRJbKnHoKXNduo0ye7usMZTiLNrMJT9LeVsqhGcHFKF0wWrj7njWVKXKK809RbRXlJVWnLxL9TUjgu+SlkpHg5UU5LdMpC6I7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788643834; c=relaxed/simple;
	bh=IQ1TAbzE7FM6LVF1j5fqIScLZ2JE+zATas7ojxno9+8=;
	h=To:Subject:From:Message-Id:Date; b=rFaHijxewqK0Z5JMsnoEcv09Nfg1u2j8tVGf6kAA4SzfeA5GOyGBRHf1ziNxNzJAIIxg2qZ80wQWsjxOwCYBkXe6Dfmya0AnSLBrt0v310MzI9GU0utNPG0jze1TFrMhXRiOv6nil2IPZc2IRYb5GdPYnvY1AZhjlo3YMWyuGF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnHKRx6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnHKRx6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3995C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788643833;
	bh=IQ1TAbzE7FM6LVF1j5fqIScLZ2JE+zATas7ojxno9+8=;
	h=To:Subject:From:Date:From;
	b=UnHKRx6/qJjqifvmTypWzZsHGBAGLUOd48KntDgafYyjciLZH4ZEsLi+Mvji6NwEG
	 A2Laet22rtx754x632UcdwFOSqvO1PDsbhpbwC4m4rEuSbPKXMgaPkhSI9bLPAufk2
	 FfEBLGbRxYEJkL1KpCIH396RvfvYtElcq/dsrdIgHNJliSaXOIRu+Xw6IJ7JzMEJ18
	 pWtcTVe2rf1LZLj1MZMKLs/ZhZRdpRFolgRnes48rTLBMqzEAq+hDEPRo6W2bImcTw
	 xvi6GKw1wLTjBhWbQsa8DwGcNp38EG2TOq6hwiO66sYWpDVUsALw0iwZAK8UD3EXJw
	 bf1GSVpg7dCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17F3C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864383369.7473.8908457638451351652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091d08021665e33b82c0c8c266555d42d4a4fbe38c8f0254a77386fef5184c8d
Date: Sat, 05 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788643833
