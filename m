Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC8351C20
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789458034; cv=none; b=XrlGpz6SykSSGboCx5pfu2KN30ABjW32GbF2YR1gXIaCo8a/gXjYYb2PKYOFxoVAmBF1GHAqGJ8kwkfsVPxkajbYtJ0+r1kODdx5ok+ZDs1xUEM/lez1m1oboI7opTvIgezLPHGf2w+f2Fw6z21V//va8lXldBM2qrbX11UyXH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789458034; c=relaxed/simple;
	bh=EwM6OQr3iPxU87dliPy3djdsLgRVDatwLxSlmVlNz98=;
	h=To:Subject:From:Message-Id:Date; b=ZImSkTufe0uCxJJRjm2fv4GmWpYLfW68hk62LuqNQlpBM9lkafZO6rmuGwxSjnj4Ztee9aCR3924FDtmAl5WRmC4KYawcSbg2OvZkS/oQqFBfCXxoFYpaV0rH3PT8GdWindiPz9j01MykaPAmalIwpamMIr7VyBq+EdsfoKNyq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oil/LPNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oil/LPNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC8FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789458033;
	bh=EwM6OQr3iPxU87dliPy3djdsLgRVDatwLxSlmVlNz98=;
	h=To:Subject:From:Date:From;
	b=Oil/LPNjY6GY04JAZwzdEmkJdKkm0r1So55ZQ6p8ruam/m6Up+3s2Wt9y+nLuP5qj
	 iUbKQINhn+SyAFhabpaKN8ZxUxD8m774L+nnbWaaLIi9XibuBPvRXQ5QyMpAsl1g19
	 S8f817ZVe7wqUWvh1CeZT667HnLhkRhtt8Y+u3ENSrQ8Ktf/kewJ/kWy5CbMMbAMcH
	 HP+iu4e8ZhUxR4iWj6H2zlvgF6UAaMwcnfAll8w9591aMRPQ5Ph27vwxz2X9G/J8Db
	 WtnN72JHKV7B0xhrlLrp+xk9+ku3TWY4dzvwFpz4e+Bgon53vIlObKeWjNIhn7dv6G
	 IMWd5fccEsMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E7C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945803368.9708.7819356962618004775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454e76366ef726fb1c4cbd8e9f4f2365386c04fe2e7867c445270220080aaf5c
Date: Tue, 15 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789458033
