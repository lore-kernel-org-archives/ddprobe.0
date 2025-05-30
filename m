Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B12DCBE6
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748573395; cv=none; b=h8XnaogjIG8jTLlSaRoy/5TOQCjqVR9TPg5l98GOq7VB8wez6gZcKre5Imp8xYpNLfKOZlSJE6J6IWg/mjhU8IMG9DB+Q5Xq9lNkBMmOEb42yxObcKN9KSjMpbWYzw3YG0htP8Zrr/vZWVLzi8dW/bXyZEnMvBiXlvlw7XcIZ/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748573395; c=relaxed/simple;
	bh=7+7rsVwBKtYLCxLqIMTzTb1CnNPVfr8Jy8qK+X1/ah4=;
	h=To:Subject:From:Message-Id:Date; b=tbH3QCcFu6zl7LeV3rChFgdwg9OHr2caJt3t9GucBeMMoIGPmvzGVNn/avWlHT3uypR0kASN4FDYJzv6hyN68HdOOGsDVQXBeNaPHrWYQLUYRWSfw/f2X1/O82iW1Y7YBSAjZLC/O60PtyNV2s63HZGZ6+AKVEjQPLV00YMMZeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8qncoie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8qncoie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1071C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748573394;
	bh=7+7rsVwBKtYLCxLqIMTzTb1CnNPVfr8Jy8qK+X1/ah4=;
	h=To:Subject:From:Date:From;
	b=Z8qncoie3h95EWMaY+sY+jjRUE2h+cePiW39CPdJ8ZWdr1Df/0U7K956RPw3utego
	 1SpLl0apusSUFftHMnp0YbOSEGSdevgVFfC9LNm7uuK48sOL3xuXnjXT7UPKLg3OcF
	 2WzPE+6n+mncBx0SR3dqUVRs0kd/V0ODAiKAn+wlhXsZoCl+Orek2Y/XZwqxXUCbhl
	 XW5Hf0xhylcilOM4RMj0IuzfB6KsaJVkkCVg9iMEhJPEl18KJyolKeSyzfonPSq8XG
	 bGWOXs96yuFT4Y6pmeLMKZ7rleBB/sFlI7Swtv1+Xz/V1k+Opjkm6K9p7YRbiMePN3
	 b5nxIMQQU1/xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC70C5AE59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857339357.32255.1083959557111087609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9c3fed9bc942939c9ac40efa267929340d2deb3767458b77231e715703ebf2
Date: Fri, 30 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748573393
