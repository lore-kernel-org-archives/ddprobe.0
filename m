Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268502F5319
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770968094; cv=none; b=C1vhTeemvCL1kyaM7QfrWOrtaPl3uuZtlf/6U8hgje3J3U+6yMt0xrniFMEyqLl7MWm1B/y1VPwjwjhKR5+xSSO6CkMH6Pbpbu6Brq8d/btlTlIw1L5BvXFuewwqqXYqQRkJUOcHjyy8/lU09LyaPOBzBadtX6zK7A1+EyyeadM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770968094; c=relaxed/simple;
	bh=8xD5VqQaQVS+5Qyk5OwGYKo7FgSs3sbXJPH4+kdN75Y=;
	h=To:Subject:From:Message-Id:Date; b=CWgnHkKutF8dwY5BFd3DwuaIzBTvJ4Ixqqj8KExOjncZEqYcisD4xSgb/h/af569ml01GP+t+VQ8PqeK1Lzr6r55JvxB/F8nAZaze3agFzLWBao1xSDfS6OQYFfFfRW4V1m4owdT712iyMTy5kYGwzSAssZnR92QM0R9dR7iWEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aulZFIGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aulZFIGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2F4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770968093;
	bh=8xD5VqQaQVS+5Qyk5OwGYKo7FgSs3sbXJPH4+kdN75Y=;
	h=To:Subject:From:Date:From;
	b=aulZFIGsvIB1p3uTuiyLH20KV4EgpIoG8ovrHFeSbCCA5Z3eAZkeuOOiPZ7ROxYMZ
	 syQr4+pgA0nKXGPbU/0w7At67SFxe0gFfI2Oq2iJ8y8eHtl6alRbceKW5N/wlT6qM6
	 tGNb9cqe6Nr5mH9eeRgeCF5VMZa/wirZeADGlRkyu2V0Bnv57ROKNfTqvQ3Tl3WyTB
	 /7QQeH4CB4CR/OhZgIonMiDFDKt9nlgwlI1lG+ZN9I6bPLcw3M9h8PHhklPQ9y/kCd
	 gBQj9AJVK3WcKAcEPb0ell0GQFVls8pbTWgPbtBA1/BV3xyoE9h65DwOx/ogTnAu/B
	 WK8Ulj6b7eATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3271EF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096809364.8730.9163581152849669423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877da418f71d6fd882b7f7cbe7656cf1c52a4ad6ef5a819153b435a5c537d844
Date: Fri, 13 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770968093
