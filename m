Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FCD3B2AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773522294; cv=none; b=p0F01SEBhQ4unat1T43CEMY0o0gAGsH3G++aekk5YgvJjstKWCJ5qCKbau4DyxkzBDx366OxcLIXTZDYeGl2qgaV52HlrvWYXiId2hsq8l382ORZ616KWi3ZzY9iw+cRcgSNsPeXtERc1FslMviFMqHR/aOwNL/zacZh4oIlItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773522294; c=relaxed/simple;
	bh=WN+ySxIa7jr+B1fqpuxFty+P7Yepmm+nlS45xdVZGVA=;
	h=To:Subject:From:Message-Id:Date; b=XV0MdJuHdWzA6KZljKSk4K+8LnlTyjdTEKto/fku2U/kuOXl2yZjUw2K/pnfwmHVJygGKbrKrIAj7sexDC7ky7Rva8YxDed3xJpsWUxD0hCHrs3y9O0HMlUz3Z0WGzb7CGzErJm/hM4QJLjwgAddy5aTosihR01YBd4bX+xNZ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpDU0dVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpDU0dVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D48C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773522293;
	bh=WN+ySxIa7jr+B1fqpuxFty+P7Yepmm+nlS45xdVZGVA=;
	h=To:Subject:From:Date:From;
	b=VpDU0dVgQvS6wMhB+BbwvO1f+hB/cWUp5hzWCRkKc7jEO6K3ZLbwx6AeMppmsoYCx
	 tVvxYDg0y8u0vqZ866Xbz3VvPkI0o7HZri7LnCGj2/4CUPYY+JcHmYj4IHaw4OtHuS
	 WMwlU7xtqowEbj7wm+FKB8Xkg8Z3zN7S9W4FYFaJRfm1O8gxm0IxzINzXxGe4zCPl3
	 JJa/T0JvAMlK1OWFQ07gZf2KdpcxWyF1eiKMHPNaAOodr0Y8UOfljKU/YxIGvtYDea
	 PGihNAOi2NbPJ2jsEYFQvCIvkTzl4f1jSCiLEuqNTnNihRyYOx2l/lDLngtKnp1g+v
	 sGgW1oK/mMo6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBA10854A6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352229363.13840.18050408339049603700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d993e125fdb8e2c1cdfe7ca82cef0c46bef0c1f111957c9c20caa76b75616bf2
Date: Sat, 14 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773522293
