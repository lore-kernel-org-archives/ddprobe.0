Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A30934388C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780023154; cv=none; b=XDB/j257X7xtJK52nbEGFT70LIojqT8Z3sh7MB8dW8a6bpjTtJdenmLUKrrdLxQ0+7p0j4gWaidP8HKINN+LvDh5zCsrZOQluXkeUJm/9C3BnoaElWYLYBXM8Fmt+t+dpddaR+A+QUncuRtGbQ+vjV+2SVdz8g8Sv48NDDs+fc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780023154; c=relaxed/simple;
	bh=Id706+96TDXEBANB+fEO0mrZPQCLm3gqkkUrOMYJoHY=;
	h=To:Subject:From:Message-Id:Date; b=GnkU8M9HLh3bhEdmEsPSNC763JtjJ/7jNIGn5whkKadQuKVFIjMeLpbOwVp/3+drp5F0bBZzxMdJwHmNuG1p3xDDADvJu9KAv095dtngLg+rkz+kRM+J4Ll1dwiuhdQsWCvRrEeK0gQYBXDL7wkuKh+Hi07+fL+/9eH68yI0CYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duD2drUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duD2drUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D5CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780023153;
	bh=Id706+96TDXEBANB+fEO0mrZPQCLm3gqkkUrOMYJoHY=;
	h=To:Subject:From:Date:From;
	b=duD2drUa/qRKsn9jYfRW/S79zF3cVqk2MZfS6tmuEgIEs3kxUQVjZXfA3RJKf/qYN
	 4Wyup8vv64q0Vf0DaBTK9yTan6+3J3Z0Rxn2tS+RpjVWpecl5jFrP+v6Gxt0qlxWRB
	 GVmvZ2s3jZXV/Vwp3R3Dl15PcLyhPxJBbI12G2CnMrtY6YLjwp0t5jFkMPKgHpR8AO
	 mlMuPp4Uqbh13cxKH9+S+1m72BeDNk6GuEXLC3KWzAEKbpN6enmz8fY32QEAbwNLZu
	 ZESi7LZZYgwp6BR2zIyJJtu2qwmTvUpLyJmxHTPk42mdDuF1+TSMlhwNzGgt45sSuC
	 mtU7YiEP/C2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC2CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002315368.8838.1077074903767710080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f79a81cb6c33e07fdeac067adbfe438694fab1c6f467b3a92f54ed91df91be
Date: Fri, 29 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780023153
