Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EAD4204E
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738493154; cv=none; b=KCSuYNbo+ygPdWCpet+R+2JsxOwYLcJCYrUl0LRbTKsbtycra3Basg1ARnu6Vtjy+npWeEXri+Y7tFFhL/nO9f2k1mg3N32CFYMT93yYw8SQEj+DS0bEiRtDvb/TlQVf7S9GgKsIN4lcLcBvwuiu0tuszX9Tdlkskft35RcQdI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738493154; c=relaxed/simple;
	bh=Ilg4li37G9vB+45P795aJItusGehc4LsY/qHIpj1yMw=;
	h=To:Subject:From:Message-Id:Date; b=A7z/RppublKtW8ZcVy2Dn9DNB+YTweTkzJXSlaVNtR2mar2thaCmAQF3BzZ1vGsmA++JbtjtM4jbbG2WgROh1QXYmfYgagi1fH5mkBH8+o1pZ86JGGt8tRuKU30qBxnGMM3a1yn5i851gzAS5Re/aw8drpP/J5dwrkoV1ECJi9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOxs2k+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOxs2k+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D9C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738493153;
	bh=Ilg4li37G9vB+45P795aJItusGehc4LsY/qHIpj1yMw=;
	h=To:Subject:From:Date:From;
	b=GOxs2k+knegSqqKq9GoNublxPp61sPx9W1bkOQX0ziQmEUfXMMt421ar91gmUvBkE
	 IoGd9fjq6zQXGpAuU+ozteujvz5DnBlNwBcSFdgf+PWe8LPpCHMYtJmHERh2m5Ea1+
	 nTqdLtwgooG/n58Pdso9mWk0KIimg7EbbzofW4E83l5Jl45Zwir0Gl6SlL+YJJG12z
	 HWumHIcl+ozbSMJpgRB5o7/VSli2gJDTG8iWGyLSP7D8c0aZympkwL0CpHXr9Gra5j
	 3O7YTwoSKB4NCFx8WL08xYDZF0sBfJVsDRCzUjSLRH96DFTbecsFKzt5QARfINxbm7
	 v9k9BTYrp1MrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC58C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849315359.26458.12269861551951427854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70a666ad168f9386845ff8d55c0efef5fd8e14fca72eddb40c9d4a49d1bc115
Date: Sun, 02 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738493153
