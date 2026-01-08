Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFC71E1C02
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767855834; cv=none; b=YUGJIe7iRoz1f2BWj47xmU0P1NdLbHWqouSJmW6FdsHc2Y57CcqdTaE+1ivBC6589U5H4ohlK1KsZLjzw/E+rzVjFhdVxqL3MpLWvXhqpy6pzhnF0u+tLsRLq/UiDDI7HNBV1swe+sok0BG2vPQkA/2GE5qjc9Luo2ykpPHWcO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767855834; c=relaxed/simple;
	bh=fflY7+EnHDSnZeYjGymEKecmFdxCVHBN7MdYfiHwTg0=;
	h=To:Subject:From:Message-Id:Date; b=Br2ZmBE3T0UOvBazsfuwDwN2i1kD9P4v4XMXez1sEGOq7XycTkv9FgHdv3+YIVgoPpMWurRVMI8FHmKTRrCXUby9IAbcsXrstH8CIJ7MB3eDRV73jPw9dy4quac3GamEtfC7b6ErRF/V3RY8X6hMeu/YaoPuc0UNBqmqIk8smDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DueAMWFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DueAMWFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E46C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767855833;
	bh=fflY7+EnHDSnZeYjGymEKecmFdxCVHBN7MdYfiHwTg0=;
	h=To:Subject:From:Date:From;
	b=DueAMWFiCI1owFtFQjtaB1cSTrHsZObm9PGaNE/eMiZ1K4cieMQ3CUCHB4XqsW0Pq
	 Ac2QRoDQvXQP5qLszy5B23IYPungfPhLQijcbdfvobLC683B5c0w3hS2Z5/Na1W4Sc
	 SlLv0A1AKwghyz6sGV2fYTfiMV0pem2pDy5Qb7+CJx9wdEXBqDh3Zu0US3jIp+1Shn
	 CUFfzD0JDL8gr1jJu296lckIdNPH+/DYCWZq5yhkLT4qibxyHs6ltUhRcjNL60NmDn
	 LBX2qGVXH5X1QQV6s0wla5aOGK/OhG93cMwQBdXr+MtDmBrlm2nFy2p9bY7M7I/7im
	 elEsjOOqWxWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95555D148AE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785583357.22719.6170022889105274874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91238c7e98639e43276eff3c2aae75638031376422961e31fbc2bf5c2245faa5
Date: Thu, 08 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767855833
