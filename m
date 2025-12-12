Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2825B299AAB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765572774; cv=none; b=LsLJNr86pJxvqvO7ROHzRznwHWf7+Wav3g6NiGd6s6ai7ZpNIbLPc69H3jc/oUGGd7z+53ytHTtO+vwFKEg2AwuyFYCKrEZOQVKUHuzX2+HhWKk6H53OXya2u/KiJqfUOkxGmlr/4jZCbIKJeoWs6pqVhhjKfRLMKY0HM4tl/HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765572774; c=relaxed/simple;
	bh=cCSjV2UgGI5dr4z0Nz+x00BqrEzDVhbag1NSSM+eqWI=;
	h=To:Subject:From:Message-Id:Date; b=Wv5nqW2ARxRp9QSkosaNGEOj+pChxyAru8QIfh6kNQeq/ScXkNLg7C2kCCdslNInRrYXM8F+NbcLKiVYlzw36WrCOObiva0rxlusfX6V6KiwRnBgVx5og0t1USqubEzAnk6cpzA5g7zv1sm8JagOgnBGAj95siC1K67vROyLVsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s30ONPLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s30ONPLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67EAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765572773;
	bh=cCSjV2UgGI5dr4z0Nz+x00BqrEzDVhbag1NSSM+eqWI=;
	h=To:Subject:From:Date:From;
	b=s30ONPLKMI2V8NhP5gBx+jg4M1taet5HWQty+hkvAAEcUH6LPCOdZ3HbrZGsfvBt1
	 TeOMYiyQxcQwn3aoc6aFtU0p0HtT2Koe5DLfNcJ2uNKJSRuKgZO1YCyxr0Q9v4Ikld
	 N1XnkB4FnZQQ6yRvOGmqMnxft4tBeO7oP+nQNVhkXj0BD1CA/zooaYr8h81YE3PdTn
	 w1WmMqguJqeZky+3BsDcu0FZ4DcYfZca6vhyaQeX5HAIM0IifdgcWjGeJbUrJVsqnm
	 AyR4GR3p9XqjoN33IhSshym+TZ47bPP28QdkY/HtkHFNhxm6q5fx5x8Ifw5dlTaQlv
	 q7mu4pAhO4xRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DFCD59D95
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557277364.3261.1207829505457832823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001bdc3f83f8eb55412862ec368adb9ad963a42cf354658c94d929c6e11ae9f4
Date: Fri, 12 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765572773
