Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21815274FDC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775490934; cv=none; b=AJRKMcuRGv2dG9IDPxPpn/19VvX2nDc2TAdHgDd8gkcNwiPghNoRTD0sOr00XjT+0ZugLQPryIrMmo22zW4V2/AhR+g3KEv8yvPi3j22gfC8J3DZuF4Yg8gyUqvLlouxLvZz7qNcB1VXkqUUuxkqSYZUTS6ionnvM7+wzB623w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775490934; c=relaxed/simple;
	bh=05J5tkVoBPm9qgXtL0ijci1WqHRufAeIP8yjp7NnvEA=;
	h=To:Subject:From:Message-Id:Date; b=jevelvDZVCGHJdYjflszonG++BXltaveEgB1uKdTz8C8WFOkOQI3byOEBvRmcywD35RGJ3wzigXZ86ZPt+0eLQa8VPE0O5aW1NdV3jmU7riMHHgqeDa471VqpkBumThE3RpxmTREXILqSSs+QzL06RW3dp6ILOmhoBAj9lnPLbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNZ2UOLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNZ2UOLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775490933;
	bh=05J5tkVoBPm9qgXtL0ijci1WqHRufAeIP8yjp7NnvEA=;
	h=To:Subject:From:Date:From;
	b=CNZ2UOLe7216cKSu/ewcmM4NrulrYMb5XZYRtIydqmZ4qzt1hXgjnqtnL6+eS34FF
	 iZ09kZ5gPrkLGG/x7m9T1Er800m0eXrgSoTZUFG9rNdQ/iY98sy8yxqLDtjhA/EiNG
	 Hl1oG8b4Cz/hQcjntq8MuVEvQ1U0rfsmZ00wWTYCEqQKLMk6NK11ezfE8BTI3PCoWb
	 6cLjYc8KYPYGzqEn59zthelpB8jXgJfzKiwmZLWunm5s87hwqO0CtWsQdxh1r8qz8g
	 6Efh0xW5z1pWfHtsTsXdhlJPVR2dXYR/ZaB0J0HFgKLqeoagR7+eNbmuj1DFmFQWci
	 9mmruc4aEUlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8FEF46C54
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549093376.3057.16444595385620213338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82329c954129732b8ae9e864fff570c132be00f11fc385d18fffe0f348f64be8
Date: Mon, 06 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775490933
