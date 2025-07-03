Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD25248F64
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751559594; cv=none; b=nH7HYrKt5mfwMNp8+W1V6773KipMq8BH+5PmrMfLoaClPAhy9w7Ye+KyxYbVlC14CAx2WRo4IZ5yZ2Fm5ditkI481KDLHczwIzk42TEsfQkBAAHHQor4SFQnKvRV+ZL0mBfbhGt5FjA1BUVJFHg2ZMrid3AVVNAij3h32w+WpX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751559594; c=relaxed/simple;
	bh=yUyBmb5Ri5mg5ZY0vN5af6sDhNVs6OwabOgoMow/HBM=;
	h=To:Subject:From:Message-Id:Date; b=Nhl5qKjVIHtNMqP4TG5PydyyNi7U8G2EVhF24OLkrKuyxXWacuqCQW7EVG1Jd18+VXJC2kG08cnthITXd1ciuIsklQ3SBh5NOnT8KG49WNsxvcCrE+0LnGccoNj++ayvdXyb4WAXMkWBoy99/w07eNp6PiYoOpkHhCiRRX5wFYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlnvxk+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlnvxk+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E4AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751559593;
	bh=yUyBmb5Ri5mg5ZY0vN5af6sDhNVs6OwabOgoMow/HBM=;
	h=To:Subject:From:Date:From;
	b=rlnvxk+3yzvhWRRpeeakpfbAEYhi3b53a1cb2YCvvv3WemAf4yhShgP1Vrv124POp
	 d8VivG/1toeR5Z59KoFZUIA63yUUwYZTDOKU+G+tWiYrfO1ihwaAfY2L6Yj54mXkgP
	 swco+ITEPw7eKM5H1aVoWvHrWmBl3o0OmSlecfpsNzZZ61Ps8Vzjd1xfWw1hidLkoC
	 GpmifKtX/6QSEHtkhckV3EDJtWe5PZP1k0JgthEbCLWTIkOFXd/x7XV3MmBUCPzPRC
	 sRehM7+FBYHAN85G5F8g13YdMjIIGiV+BBZbinL4C+pN4ubTUZecz1A+NO0Pma+0LM
	 1aPds1JmgxVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24AC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155959357.18164.27967759011966660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f11b4c7e036e4ce5d3e65615c8710103b1803be93161a8824a38488eb3d648e
Date: Thu, 03 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751559593
