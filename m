Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4231C1BD9F2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737461154; cv=none; b=BLFI0ssxyRMN/Nm+llueIFjgX6JH33i8IY0WNb5VX9B73Pz8GdMoj5aukHck6aQIO2ElKv0PjLgx9wwKWfSqzwFU1tbFojfvAiiFqoqlVmHJk3FUMX7H7+d3oP+y7xSXVSbjGfgedDxThiFa2d8ocWzmC71lUrW6Ev0tqHoMlSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737461154; c=relaxed/simple;
	bh=G0YDOSyxnUWl8znhLTcOYLk+ngdyWFmuHoaOjhsBTcE=;
	h=To:Subject:From:Message-Id:Date; b=KDiQfnOQDkhW5MggL1gOu4QudfGoE5F5btBhkFAq7oRgjmljkBYsnHTIP0DpMz9Qb/kdVDxaCj5iVW30pTo5k0ng3+OfIO5UbBXlo2kUQsHoBbks7EEVHpT56Oz9x19e941h6w8oPa8KNQRpRZS7zwwpQ1PAZjj/mNQ3/4nVydg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icO5NoR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icO5NoR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD12C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737461153;
	bh=G0YDOSyxnUWl8znhLTcOYLk+ngdyWFmuHoaOjhsBTcE=;
	h=To:Subject:From:Date:From;
	b=icO5NoR6O+jQxS8Lvmm3T3JsJwn3Wc1Y9H/LrxYdN5vBfOv63tXcIKSxbrlGXcfZo
	 eUrctrBLQwQfY3gvIbXSSO3AXc7zGXgE31iWKu7UYKQp6QG0Y0KdlcL8pkt05/ZGda
	 7ZRfYqx5vuCNkHpgG6SLBc3r81Ug5kvX6kruGNGO5mMGx+3yEshwi5LmPvfiANC3hz
	 QKzOSfDrV43FisvaKZuOEokKNLP1NpMHDGwB+Rgw9LCVJJCQidg0YNN/KyiStJ0pnM
	 NOB6MxgyDs1SZcLgsRWD71jkvpyMvsL0m/rzioA93g3G65lvWglkBCoNbn8jAfKqvT
	 q+5BgbY4IQg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A4C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746115358.6187.6370327056633938409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3861e34173009e6665dbd85b3f6ff9842ccabb9ee58aedf7d215d183477deac8
Date: Tue, 21 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737461153
