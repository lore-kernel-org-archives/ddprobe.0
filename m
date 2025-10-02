Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF92AF1D
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759387795; cv=none; b=hIs9VVDWOOTgE+hkIaoeT8FWUu+10F00qGoe7nHlg28gEIerWfGw9dYRRdx5Hjqhhvnecyup4aSvh5VmgQKg1UqiTccfvNjOtSiCBic8VJC8t4K3Q/SClcbVHz0WwDNrt6wQsv+jIdw3RZ3+Q2KQ4waP41o7Sna1J7KpN8BjMpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759387795; c=relaxed/simple;
	bh=d2DdRtSOlnM4WK3UmkavZO5QZbxv6id6TBrM3wQPuyU=;
	h=To:Subject:From:Message-Id:Date; b=mSyHbZgsARs/81MoDtmqUeMFyyBix0aFcDOrYXPjSrvltWCZyfTzu0woRJeFEwMneTZrxyYV7rJyrzYpHUoSN2wOtrB0hA0amXLqyRqVEBgoSrBqkR2KglDownGckfJjnqlnxDvl3L+/vmSBDpSTWNQiNUr7o88ex3s+hb4cPJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCkXU4Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCkXU4Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A0C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759387793;
	bh=d2DdRtSOlnM4WK3UmkavZO5QZbxv6id6TBrM3wQPuyU=;
	h=To:Subject:From:Date:From;
	b=nCkXU4Oz81G2bEd1AJsfzivjGtvsR1rRjTuAq/btZhTYYDrHgbvH+Dh09o3F8Kij6
	 /uK8Vfp652cPoNj5gM4sNZ3QqVZdIoVj7BNhj3Q3xdfv6IJw+jJsV20ULUq5BZTCXb
	 leYV3qDBj981l5/MgqWf1ytkX1MitfI0m1fDaucqV8FXbfKLyO5Axm2J+DJjktIKOY
	 HjwIg/0LwXdXHTwPe33hhRN5995SwXMn4MMfFq8yklJ3s5todkGQGhO8qPrNojyI4S
	 E6RNjw7ZorGU5EfpZcF6Tv3euLzByPWk67SnJejAUWh8M9fPZ76uYOi/sQDTBmLo96
	 7MwsdPlTUhTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ECCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938779357.17061.2131073204935851108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b57fc781afb5f45a70f7c1845af6ddcdc922334cc6df2c904903bdcb86b8a56
Date: Thu, 02 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759387793
