Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FB427713
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732378554; cv=none; b=IOuCRkS6exNybkQuhNK/naIKtz1tLj1AELskEx9lfstd+nCc6Eq6B4nQAByJWtAMZ+7gFomsYItdxeDmy6O20cGbEzRke5LwsGB8X8+oiDCSJ1YkaS2PiFD64SQeA4pE2utCvpGuPaeSckZo3JPZfC2cYczSvZssKWdIVqZRvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732378554; c=relaxed/simple;
	bh=n3Cevp+oGCU9WxuZbEnsMu7x3zcv+cCx9bVJd7Bdpd4=;
	h=To:Subject:From:Message-Id:Date; b=evhsYK/qObz3WvnUOPu7Rp/Jm1dIonskByvKgZMYFYnAFVK1r+4t6hQjRINELKkS68s8AQJeZJP9//hy+bIWKjnKU21bdVV4Ecr/KIPT8HQ+vV/tkRqRaPfmUCIG3jRWnrTut0ERcm13UOLG1x8ZhiYG2OsEEM06bNOkoQSCDK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYAylYhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYAylYhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7017C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732378553;
	bh=n3Cevp+oGCU9WxuZbEnsMu7x3zcv+cCx9bVJd7Bdpd4=;
	h=To:Subject:From:Date:From;
	b=dYAylYhAhsXoo/4iZuwnHmZIECYBsE8dFPxLU/Nemf+lDBeJ4KxUu9cEmUoaAYHKj
	 BitWvjpVvfSN4ueJ6lnLzZUXEGvG1J8R18WoC4Uhf7wyVneXfl2vKG8NeeBaqGB5jq
	 3WStFOmtonaybXHSopyxknI6ydSqYyI+dq/kTvLUjNmYBmdMXS8w3IsO+mZCIu00Qf
	 maq+TzIOyy8Aitih+rxkw0s/bOLv1rGZLovdLS9ZSobttYY5C9xqAV5BjJTeCI6+tN
	 GFAEXzTeGwvnTGSmZHOkK+WjJwEqBvtYrArdtYTZ5xRPE72P3Abpp2Uq9+iTZRHJjg
	 jEjD8PJtwG7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B2E6ADE3
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173237855358.21318.4300246217620099448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8f74f23ad265fa6b70dd3e68fee3bb8ca8cdb34b57c32ca4c1a582b6c9ba5f
Date: Sat, 23 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732378553
