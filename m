Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243CA1DED77
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756611594; cv=none; b=bmxIEnAm2eE1gf/lEhS2QMZW/yVO1sR/wyHs9J2TBrwEXqEn+VtdGbZGjRh3rJyl2xt9ZuJmxic0hlYRKH95x1z8g8uC7F/v4t35p9D4gjx6aFk+9kyOpUR+WjYHT+m6PXkt0utluQA3Z4et32/eZj1smmB/DmeVZxOwmNPrmeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756611594; c=relaxed/simple;
	bh=Si5OM8fh4esfFpK2vIWPnlE7Ecp31JEKhzGHGEiVoG8=;
	h=To:Subject:From:Message-Id:Date; b=NBHs3BZfqOg/UEUxiV20DdltK2cVwvHu4bxOTctTfflOqQtbAbzX64EbFOQ0kX1i4Jfx3ULctaA9b/NyyhbyWvyH/fKq5EeDRTKRtRwDoP5wm8Pkwn/ErcjRRW8t9zp3rWJoYJEZHlxntQ9rZSeWS//y/csOrIY+rpER4pIG/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2PlWIDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2PlWIDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D29C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756611593;
	bh=Si5OM8fh4esfFpK2vIWPnlE7Ecp31JEKhzGHGEiVoG8=;
	h=To:Subject:From:Date:From;
	b=S2PlWIDERkbRdGkqyF+HO63LbUsooQDLmQ9e98O0viRrQ1ucXb0tgHpVN0vI6U0Mz
	 BEnMA8qiqMnv3XadfsEi6+sTcjWTvJL2uoE29gSY5pVXv/3sTkjnGKujQYcUXotBhI
	 ckUPV5T3lqSv+GOiPJXChsfLtIC6ok579jRcKCgV7iYWB7H9oJWkJYdQr/jpCH9oYx
	 B/9jzZEr4kSIatRqZpZZm+wcYTSbU9ie4Kl+tmvxK0buvWrejHS9PlEQO9DfyXCckq
	 ctLtd90wH+5Ox1g7fqa3urMwyeFAdmRNQeoFaOmcWfNOvexj3TKHjdGetV6nfmZJ3y
	 8BPlyUoT4kMzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100ACA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661159357.2351.9699874724030778074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7d89dff66e2aa2471e11d42c4934944770bdcad661b61bea5594a01489cdef
Date: Sun, 31 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756611593
