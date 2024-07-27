Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244F03C466
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722069954; cv=none; b=BdVdOeKHDIjYK8Yiu1rjPzXS/zWuJPJ2iYJFJIGGiyEA2UGd1/D4p/6Zdt1JVAnNqim8HWjHrkTJvRnpiYlk0D7LGsN6PexRFnvWnSasPSMAYffWxi85dpxiv+2jIYZm4bgtx7m39b+8T2dwvf9rZJBxIA7E+eUne6uVpvqai24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722069954; c=relaxed/simple;
	bh=W1lGwnaibnh3LflCOlQL2ZLH3hHNRqggzrXhKdYefOw=;
	h=To:Subject:From:Message-Id:Date; b=geJBhr2aokzcOgu8TNEx/ombBQnin+dgAXMON85jUErUYGfx4Z/YjFZ33dMTpmWezbvD0euoMySkrrrDx3fLAePkJZdsqH4O7XNTEna8xGGij8EMYqtj3Go0YgohfUfCGb0AoLoxNaBp/r9dzNI4TWpAw3mTe4/dMLELXjJBJzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCpaM+BB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCpaM+BB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE1EC4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722069953;
	bh=W1lGwnaibnh3LflCOlQL2ZLH3hHNRqggzrXhKdYefOw=;
	h=To:Subject:From:Date:From;
	b=uCpaM+BBeAv7OVLoGE2f7LKlzWvXR/udRc5QhcDlsdz1D60IhR+d1uh07Zja1xfHN
	 IsyC3kh+tMbMFn766lZehVC1eeU3JBeaM2RJycY/xb7wvKQvDu9LlkywyeIcPYe4j9
	 oPrS9aGmLLLQ68UmQzdQXelhqrpaeKYJRspRcaswkEbJ2LCJxZYGDZbVJ0IobTYnvH
	 m0lHGXiNhlPgiSq5pkBGZqxF7FoKbaSgZGz2NYQ08HqDyLqIn3NhmmC6nOjEIodD/V
	 bdwBjNAEgcEjgA9yYmDj2SPYdSAa6n91FpjTHzCUfYUY2XvgbPfbUtivjekF2cHBff
	 8m12I+SkR2rPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D100C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206995360.22614.7595753904505479206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1c45d4d1417fc63eb33293dfef303a54b8d5f99ab2ff9f8305c18d00084595
Date: Sat, 27 Jul 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722069953
