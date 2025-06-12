Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B83C1EE7DD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749708594; cv=none; b=UrV9w5mxgSRG1UA35yDjrIu3cve8hk//5BZrKsykqhVpAzksPHYOWIK+OfWZrekuYm0ipoJxTKrs8KfYzgsw5K09fQH5Fh0dAseoqUui6clIcVvxC9KLFrn2AntH6acBu907Qt6SovDM3b6/6UQnotALrlzLuIyDRCCDpJIup14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749708594; c=relaxed/simple;
	bh=F5iyax4jN9nowDEN4V+oEZUeuOPKOD2D6kFZQc4hDl0=;
	h=To:Subject:From:Message-Id:Date; b=mbYuJifykK34pqdGjhKZFTgYBqbMSqFn12I+lSzkX/8oMdOkz4CDgDSgUpqpTcrJvRCWJAilmWBE15pCfqvHgSSzIYSVWV7of1OpiYCsOycm6fR++9fDu6QDjqvh83zyK3IYlgLLo5NgOOQ2kHPQTVaRDNAY6xJT1jf89M0aAYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gif5/40r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gif5/40r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749708593;
	bh=F5iyax4jN9nowDEN4V+oEZUeuOPKOD2D6kFZQc4hDl0=;
	h=To:Subject:From:Date:From;
	b=gif5/40r16jhiR4TPHyEmNn3V2QLrwt4q5jvV4B6UbV20CD2ME0Q8lNVq+S3Js99S
	 +LnwX/AaNjMBg+NbP7Ttm6u9CbtfRGjr6fX4nLsfXxFxnJMz261FBMZDLrkL+rnqQr
	 o5znRS6girXE8b72/z3xS3piWzHSMItQC7HEVqmgzFFzzLuoCd/G2HtMgfHazb/mh+
	 eqbk3k6SOmF9cuAzJqAF+4fOxnxnGlRRTLCh4UaxCEgQ4M6o+2s3Si6genjRWgq9qo
	 XR5MvX0vZ68rj8yEEMeGZE5aaO+O5hiRi//5aZRxyJvb+r7rV47Ijq+/Esama/nGkb
	 M43zWkmSHBwHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BDC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970859358.3208.133115809983097493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b82a98708b4645466986e712b4c634086e19a512e64513082d9a51492c440d
Date: Thu, 12 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749708593
