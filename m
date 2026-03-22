Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A526347C6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774147494; cv=none; b=AfaGFvCUOTpaDVe+bZYBfnhr0af0vhu6DDnCjswpTa5DKqInurgVtPv2WHa7Y6t3qoKn49gVvGjC0e11SA8Gcr19h+FLlVwmq3i4ZW3M5eYuQCsa/c6uIqTCKgMUWsKVZUhblfIekgrjr8w3KaFC7sCvnMQRr87r4FL1SCuXj4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774147494; c=relaxed/simple;
	bh=uL+3OtGXRH7nqr5ST6aEKYclLiUxsE2V1TFQyJghZps=;
	h=To:Subject:From:Message-Id:Date; b=gY2wV8t0vCJ8xTWW5xNTxy6PBFWwYya4kHRjjvBBbPvRFo4RNm8ASi91WlTwMZ/6UpgtSwOcXaZDSAdidp7LWPr/fD+Qu+JxZMiPUQ2ywWbLckJIoMLmTkEYPQFZMN7BXWuVrvth92gJeSQNRVLHSr71fghPkMt/KGsX8KQKvnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRAsmWZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRAsmWZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CABC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774147493;
	bh=uL+3OtGXRH7nqr5ST6aEKYclLiUxsE2V1TFQyJghZps=;
	h=To:Subject:From:Date:From;
	b=LRAsmWZyVovpWpSAVxicpHAcLgX2c9OI3ItNkBnQ/HutQb+RiFzIyWNhQrAg6amXi
	 VHadiEv0W90RHYIM9EGKdg2SVezuKYp66lHpVFALQvmlisBtykKuruyhMWlgxZ+73R
	 2E01fYnpKxV5D7TngqWvQsXTLh1eQ7eIY0gH9fP8oHiRE+emEZUj3W2s08VU6gqSTd
	 fb0I6YuDVohtbhqUS7QCvCpwwkNHNy/m3umnMkZqBkqHzqb6VZrO/utcLaYw1TG56j
	 /CPpfh/R+eS+xsQM/dUq16uMgzbC3vo8zh07Y0JoBx8Ah+83vz9NcLqofNr7bXRTea
	 wX5oxkDgi2TmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CD1094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414749357.29019.17163577343614039672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3322425e717c59a2cd2098f9dc1c8d59cfa518f186f864251e0ab95770c0459
Date: Sun, 22 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774147493
