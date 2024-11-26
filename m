Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E8436C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732625154; cv=none; b=b66EtuubDEMW/agnqyZHOPMGoyiGD+2lPpXXgMUUE8eD8bf2WwgNkuK3qgVZySNWAKIx5m/McQRbCCY/Y6LeGudBa9Om/oon/8COKmQaLhsp0qygUlX9eZsEplVRSmVBTlzmKBcs2EUepL76LCTcJqnujyU+PMYwgjVAG8KkexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732625154; c=relaxed/simple;
	bh=83H8qAo/5j6b4I1RjoZPUM4uwgRxqZrVQ+1PYsKBwQU=;
	h=To:Subject:From:Message-Id:Date; b=rj3zEEKTjqNFy3p39rMnu4qa0uUOy5sMmgfyouCsZMCcwMr3tOdNwcaPR+sARltqQTdV/8Lz8wMRJkoR1NoZNY+ZUAu86JDmoFs3Inu92Vo+0Ig+uOrx5XUCNIC0gJdTHI2wz0VQbwZ5SIf68x/x33U+ydCd83DNi2rpScJOutQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knW+lxoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knW+lxoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7FCC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732625153;
	bh=83H8qAo/5j6b4I1RjoZPUM4uwgRxqZrVQ+1PYsKBwQU=;
	h=To:Subject:From:Date:From;
	b=knW+lxoG1XvUvkfEbaIYcKQiFfp73ggLWeJT3x8qdz2jwEYIB7gAkkVl1TjG2V+nv
	 5BNci7IUW7rdRG0fWAiAoEblRl2u/FPHvvhHwLJ+MkhkX0yYELpXnmuNqRsCxD+B4W
	 XMXtyZ5xwXJqlP3+p0B9drvmXZXGv9EH+p3yUjl6x6Ie0p1nzQUmsVYxrMkoDYA6j/
	 7EcZAMpCRyRk6qTC4phBk7pAbnx8EOTM5dDNeOTp+g1Fd1JgOMgI/khOhyLMhRKUti
	 gfyx3gXmzLsDWnUSDBY5xBDebeOhF2sUC0l5/k14xW1YbJKbJ1P8HmJwRkYS7ZiYBq
	 KHzk1KUuSCwSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBF8D3B98A
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262515362.4975.2570854623898497242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ed6944fa7339afea22e9fed737ab867e91416de7f8d5d929374fbe08bae227
Date: Tue, 26 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732625153
