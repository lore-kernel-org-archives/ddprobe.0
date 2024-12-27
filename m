Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2867875809
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735287954; cv=none; b=gHEg80+3lUNXXBVeq0mC9uXoPQ2NbhFLVozjxQ5rM8vCxxRicj4Z+Q+u9/9Vd2CWb6NBA1U+4n/yU2xXJ7KH25nGCSh36AtKYisTYBqQJSJpbQx2YuvM9Nk4DiZIe5s8cOjIV5rHtpSDgiVwqy1oEfCb2CI7TqeV9CFpHJ4HrqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735287954; c=relaxed/simple;
	bh=6nSDpbMptlJIcXxMUhjsNZbNLp0jqWElfw1AfOwdp6o=;
	h=To:Subject:From:Message-Id:Date; b=SFODbeujmWCtSzxCQOgGSsIXgzw3pPEMKX+BDLYxj2fsjxM26l5IRiNF2UlN5egS+7H7JFl/NMyWMID3Ge3alkS8Kg29aF2Lyez2YDpOgfcFltm/KewjHhwFvxP/C45wfrtEd1qUwLmfyV1QXoDXsKa8tGULJKgU2cqrCGfsJZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRBTc7+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRBTc7+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33FFC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735287953;
	bh=6nSDpbMptlJIcXxMUhjsNZbNLp0jqWElfw1AfOwdp6o=;
	h=To:Subject:From:Date:From;
	b=TRBTc7+oO16XKkEndIJSWDn+OrzBr5r3CWoI8mNY2CIaSTzVZWUxbmPl4CO+yaYTM
	 i7wJ81wpLTk8gUW+lXrmrq53J65Mxan/eDNVJCUJlm7hyBC9px3pRiAlxq67kXp3K6
	 pV7Zm53hMOudqpeXi6q5IqM2lbHGAfhxhPj6VZJwPVJD9eVYGxy3WPIxFOYgFnbubp
	 wJvXJVlmLVgpK4jJgelWzV9A44ym7lA6Md4ILPDnUN8MqtTnvTtmzP9bEf+TYmLE/z
	 RQvaD+MWViTYk5y/OmV4TP0zDr1NHiRxC0O266Xi39d2GdKB2gvUiZmQ440mitE4CZ
	 YHZAApAUXgR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7E5E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528795362.9404.3477226330975459372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522358926dd653b10d749a80375b670d29475cadaa9118881da8b4329c86b401
Date: Fri, 27 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735287953
