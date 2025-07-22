Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC0C27A917
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753220394; cv=none; b=Hc2JHvQb+i5qr8nZ+3IosgoTxSqNe061uBFC+GPjDqO1envC5Xo5D6YU49K5cnAJyTjC5OlnBVo0E3NapQJz9mZ+mF/sC0+sLDnuDQSt+dDPtcqvsf32JbF+aDBViNIU29RtZDJFFNgmZjasaYiL35JVJb0F9FpUQnJEbx1qTEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753220394; c=relaxed/simple;
	bh=0p677zwnMcNPjnXFW0AIVRgguKF0P4J0npPqzw+uHfI=;
	h=To:Subject:From:Message-Id:Date; b=Vv/AcLxuKKdgPwnkPfYL341I2ae5GvsaPkwiW5M88Dc128PCK7n3A56/Ndq35FJx+b/hCwTve8y4m9p2IpttMv6unIUTuFKGIG7lwCnpULwmQP9le8iFf9bCHZs49Zo4TJGd9sydAnWSUHDWdl+k51Xsi9TWTkQxmRc2gDbGEhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLbzgvhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLbzgvhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F083C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753220393;
	bh=0p677zwnMcNPjnXFW0AIVRgguKF0P4J0npPqzw+uHfI=;
	h=To:Subject:From:Date:From;
	b=jLbzgvhXnzhpKAftNKwtgHDnvLI/b840irTHKjak/D2yOuJ1aQ+ksRb/ZfSFwJ84/
	 1oTM/f0EBNVbgJSZzeuvncEsp0dwtvETT7PuhVCgIDrJCwr0jWBl55JAkif17HzLRi
	 0A5FdbD0DkCC52naivRDl4Y7zCsNe+nhJOnz7o24JvDfcrSYxh6aWtf2GRVDFtmkPk
	 baw9TrU3jJDlPZK/dof18azCw7QMvtFuRYr8X+wlxBP/pv68M8ePmPgX6kKeY2Y+TK
	 U+M35ab5vY9nGtcGAE5dWQOyif0pWKJWMKD4qAIKyBg+2tCKLsMOfFWg+Js3SQJSbN
	 oXGQ9o5fuud2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE02C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322039358.28179.1686327673311580507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ebc245701785d7af9abeff53d4c2e8ca130515e3cf63a58a973515be7ef5f2
Date: Tue, 22 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753220393
