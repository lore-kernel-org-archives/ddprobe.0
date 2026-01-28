Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2B61A9F9B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769582034; cv=none; b=clVS6pwvjzY04z68q4S5BT1j5LAMOmPl2UBRIJPdrghlwCAfHH34fmXS+my0iREy7MchWLao7um52A5D+LdxTCA8RCf9rxHZiEMxwvvP4zT24jkZMhjtbha5behTgXPa7QKSZpfmxXGUlYrxarllBy6584ncAgy4LFAfkn0soIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769582034; c=relaxed/simple;
	bh=vYVzMoUmWbuk28sTBr98SwiQd7iiqR/dfl7MZdOUVlo=;
	h=To:Subject:From:Message-Id:Date; b=b4U/516LpQ4C9Fzyn/Q83/06LgLVE7P7kBQr5SFGNCt6kWb94fiND5jenJYxOePRyBofT3l9MiUkhW40ecY8vN+82YuKjtHciywgNIEdsRGhb7LArgVjO/o4gdKMnSz/NXhB21SYgbpEKiRlQ9guAMrwabPtCd+fJqIxNFp1pMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQRD8Iv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQRD8Iv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9E2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769582033;
	bh=vYVzMoUmWbuk28sTBr98SwiQd7iiqR/dfl7MZdOUVlo=;
	h=To:Subject:From:Date:From;
	b=mQRD8Iv2uH3LhrYtpgh5uIqPkzeEy4UdDRZCv2rJhAqYyRm0KslvIZehvz1ssCPAm
	 UvynQ9G3kizdNn4nD8FCK5SsQYDGiamK3jHFhDs9q6M5aTolTWt97w5AhfbEaWKo6g
	 Iv79qT+W9U1B/FTFhgLU4RvCXok9YUIDsL2JzdanUX87mHhvTS93rGTtK9J/xBJ8vt
	 nHSKIToc5x57PuvtiaVTUtb/Gx9tVoNYNxjqOeyIuQAlxne3jU3Qw7MJVcOeMgAJ6Y
	 KWCeFVLjSnJoxpaeHz8Rfw2vn3o72vAt5hUN9beJSaBemZba7rjGyW2NxqeCvncrGE
	 l51Jy2cds6Jvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414AD35681
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958203359.26391.16608588326380456067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2667bb38fd27d45e52587fdd9a17f739893de1b309a83b1d4e0f7183d7b48e
Date: Wed, 28 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769582033
