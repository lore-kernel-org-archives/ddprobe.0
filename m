Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211874014BF
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777553254; cv=none; b=dVIZ1TU5bxkxJJm/TET5S6t4MdecDik+g70KNwv8UabpnRy5NxemF75cjNlahkQRCcL5QLZoiCUGr9Elj7IWfAYH1ayIYwCQmwR/79unTn30mq5RD7H1jaB1wLrIJ/PUoPpMJ5V3CkPxuBP/mM/nGpeej8wozxtJNV7EiWrI+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777553254; c=relaxed/simple;
	bh=IWAuZzbbiY+KmditPHEtv29CywKR4b3GGH6YWcoHsO4=;
	h=To:Subject:From:Message-Id:Date; b=mKiJWv4/nSDzMX7dGeDzFVA82ZDaRwXP4pisARIc5J3k+Mgkeu0SRC2XPU7b9XUVFvegl6P1uzONW6K1D2UJR/K2J5Tv9BPy7m1O5m86wmtYWMKLy0varC/KCKyMKfsIl9ySbh2hSXuDIpQQA1bXc5bm5tMWuBma5lvXHp1FWmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMKQw9qN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMKQw9qN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD17C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777553253;
	bh=IWAuZzbbiY+KmditPHEtv29CywKR4b3GGH6YWcoHsO4=;
	h=To:Subject:From:Date:From;
	b=FMKQw9qNxCtn7hy01sw0dfPo87wqdTF75oX0y8uJnRfKfxJ5tXWu4SAcekPbQGsE+
	 g4gpsIUqxtM0zvIRqoLymZ8cftbQk82O3IeZZTgGcdyvNLHKgKbPiqDsOxCk9FGUBU
	 95rOzZOFHqlIxqI+E6/d39htwWKvI50gizWiaGqbn9FHaHfJJC+pfzAawLImEZcsNv
	 wfpbZu9bxY2VXlaeOh10P0chMYNd6Ix8UFpg+YL6TJUIBuHqZtAoH+k0LKVSW7t3jx
	 cZ2nSGD1/qNA1sv4kRo1mEFbqCVrq9GFmSOh5SWOxRxe4OmkvQSkzv+7K6axVS6t/H
	 eZh2/179pzv7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE7FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755325369.19577.12117146910562623828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec91f44709c067baaba24b630eb35ab43a3d65f1d0a34c73932e9bb8cdae62d
Date: Thu, 30 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777553253
