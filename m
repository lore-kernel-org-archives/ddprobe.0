Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3AC1632D7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737194754; cv=none; b=rHF4otHMVvwVt6HD8y6c/Y2wMseyNh9S81fycOE+MVB83e5tTXqvUi5h/RWIyzr17F4QHoJB3iUMrd1Tn93NGA3l9wzJ1cIEUtWzV/6j/WXH/296z9SnuiBQJUL8W9LC8QWPd+OGTVrtxPFhTeWpQqsvJvXu9LV6oyVF+FL/eck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737194754; c=relaxed/simple;
	bh=K3zad0gQeIISVgJQ5zbW6o4i/ABehZf5iTkNZa+C3L0=;
	h=To:Subject:From:Message-Id:Date; b=kbJdUkeAr48g0EzZaXVqxp/q+Nm6jgEyHUwys3fxZMHvQag1Al14Fo79dkH0DenTKjYsRsSkH0egiBehNYqjXADdBAVZUMun9Rq/rjH91SG6OgbhcXdYh547OsCEJOAxK90om65OHGpypz7xy+XQAvY+PNfmBeVAlhJfctmV+fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3PE5Gr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3PE5Gr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60ABC4CEE6
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737194753;
	bh=K3zad0gQeIISVgJQ5zbW6o4i/ABehZf5iTkNZa+C3L0=;
	h=To:Subject:From:Date:From;
	b=Z3PE5Gr6cGd6a4KlzVDt4QYsfiPilCxpOJ8v0/GsEVUMCHZqdZceekTlTq4Erk5M9
	 kuEM1bAzq5JyYIgCG0fSF9hNgispgffYC3cCBJiCA+SYJyGGW4sChT7uzSpCsikPOr
	 RGDKtbHy1KCYcuv88QwdtFl0UNtRdVLJTc3zvJB+G+AqoePeny10QOBotc6ZwQGW1V
	 VEl+HE8m+2Rw0wxtt1nel0PvE/LwVqp9LakK31FqmWUpwcNUI2KhYbak4GxpLh7oL4
	 xloiUw6ELi44Qr+afHehFtWBDAroIvobKKHlQzy3vXtma+4Ky/Z4c/s1B3RgbxJDFl
	 Ob+TnmAJClCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E1C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719475359.10050.11462902462010763920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066d4fa71317df499ab99f61d879f7ae413213b7cd87c83c7f24235c8371548
Date: Sat, 18 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737194753
