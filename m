Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C7F486424
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789405834; cv=none; b=iVl1qwXU9gzcsvGeTeIO71fYQwfRlG6C7wG/q1rDkRsElfhyUCRyx2h0nFcEYuIwI7SPzV9eDNUGjMmiEBKvRS2jOd4YwRsUxWR5XkrUYpGpzQcleAsgsU+dMEuIqf5MKaUEPbT9RON6dlJk5ET2VlGZDeW5k+A4D12ziCXrLsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789405834; c=relaxed/simple;
	bh=jOpq9Isb17+F0klDO76vcOB9/9TM+AbCnI/d8j1rDTw=;
	h=To:Subject:From:Message-Id:Date; b=mW3d3NRugJtMmauGvq1F6xYo0BZzf6EKzlixFr3TgmL/LcFy1sOxJ2FwG+FohoDMrm20XM1t+p8qc3yqbARvOhg2MMfA3GVgcln1MuKWZmfQGV+XGQIRVqJLK4LVTxVnX3NHnG+v16BHRuVyS6M1bHG7XDiKzMRF1eOcLrQN42M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmpIvfkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmpIvfkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15FAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789405833;
	bh=jOpq9Isb17+F0klDO76vcOB9/9TM+AbCnI/d8j1rDTw=;
	h=To:Subject:From:Date:From;
	b=qmpIvfkT+J+b2qmi4vOPM5KUITG5VRme4+jg/DJvPwhiTio0P1LqAv5gz8ZFshUn5
	 /fNMIweSWuIIlzAlGeDcjYd2mcf7p8jLBUhGTsa7Np1cT2C4KErkYPpxd+s5SV7vXg
	 3b0qRA69hq+PinY69Eb2gCLcDlnIWw3U+RsIzGvDiefuk9dnQqB+RY8cQ7L8WN0H3j
	 oKBQzJm0elPafGBaXIFaOjrWfmacB3x5YkhZHuUHak4+dQ9OeVAdT29vzcbA6Pa9Hg
	 wL136OQMajesjM2thNwmLadlPIs7cpiX0JoFj5sz4mbgRqCckCu6OiWbQ9C9LabETq
	 E8F9fI8UcfmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F80C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940583370.17092.12075489129182089562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d394261d8250709ef2601bd9ab55b2072b775995bbc6a70ba47c8b0b8e7409a5
Date: Mon, 14 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789405833
