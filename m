Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1631F26463A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750092594; cv=none; b=r+jkWTsToJ4huYzLzB0nVuwWD7m58zLA7ezwyA2CwZqGCxyDe/tHfkmYz8rF1dTngQM2Ffe6ai+xlu6N11TLlT997C+caZrnqDbx6bfwTfmsRWGGOjGpkQNeFk7Ns+P/paR40j9MnKv7bilvPNKPR3T6v3ufQIXuhH7IZDv9aQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750092594; c=relaxed/simple;
	bh=eVYoNPic/IHbk6/T7GaBmBNCwDGLq+zO3CHBi0fTzG0=;
	h=To:Subject:From:Message-Id:Date; b=Oid09AKuwT3JUc/NnYl9O4o1y9ZHXWqDh/tLTVaBVz92lt6rPWsOmtF2jsIXJqA9GntSfNXKlxXAqMk9xV3z9+XqCyCczggKTxMWiOJJnI7DCxOJocJMjxrfIeSg6eL1D+2LBcKISD165Y+HvgQFXTuWCoUvkXzjxf0ndAnFF9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVXpqgEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVXpqgEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EAEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750092593;
	bh=eVYoNPic/IHbk6/T7GaBmBNCwDGLq+zO3CHBi0fTzG0=;
	h=To:Subject:From:Date:From;
	b=MVXpqgEqzWeH2n/9Ldq9opaosg/DEeyu+VPFUPTGKmjsPjknEOaRyTHp7uv3SAD2M
	 L4rZXE3Ovhfz/Id0r2sf344MAWg5UpgRQxqrBipPVdjgGKKYQo56NFYO01xsHLp03w
	 KNyU9/wIEHZyLUf+pkh12UV36jOUYL0tb4CfW3hsrJuBrPXv4nMgMzt49kUTSKl9YK
	 JWM4jGEM+iwq+3CeYo6UFieL4UFtjbiPvPolLyAQQuncBpUqcrLdg1i/2AKrpdQ6em
	 /wz8f7ubEO5woxfkv5kVLL/aNbV46bGMAi50920svVNpmZbs9rrsI3VtPbWmFdQLgX
	 o7I/K++34WgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE6C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009259358.13169.13189558572638772784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a309767c3c681c90ef50b5b9366af045b102e4e6dd4967fc8273ae9390bd9d87
Date: Mon, 16 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750092593
