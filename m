Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284A2561A2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781120794; cv=none; b=R8J+QkFvNlqzBgm1vH2WoKXimrGYY4qIacN9RBvwFT173r09c6SI+eofZmUB+9jvuDeSrgTV9fukdj9FoHjm28ZUOLGIf5ueLO9OOa0Ww23PjYRWi1IQW9jna1FqQBmzjnIJM99aegnNQeqoFYAu01rd2xFI2ODRps4q/wXErVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781120794; c=relaxed/simple;
	bh=GNCnz3ieuJ9HtHNZ9AvS5BRctXdtSNZB31Z0Q6L8TTQ=;
	h=To:Subject:From:Message-Id:Date; b=k5t4oITZ/9zKxxPR5pjJLO0UUDzaGQzDMEzwuQwk8ljpX2zaqbKj2K/OzBDyWEHLlqOVcd7ExVnst1Hurghm3QFlGsC9BGVGC6B/hNFHZmgbkL5a65SVj/BOLCbCdlvr8229jBbXVSW+/qinsaiH9aoOi/7Rwk1wZHV3mj+VVr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuLhfOmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuLhfOmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA25C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781120793;
	bh=GNCnz3ieuJ9HtHNZ9AvS5BRctXdtSNZB31Z0Q6L8TTQ=;
	h=To:Subject:From:Date:From;
	b=QuLhfOmdl2hJt0+iLRirwjZ7BJLFaHxl9bAAxVWSyafEiSFrxjF1ty2BodR6470HP
	 /SeiwYhCgMgJkhhmlZ3YDuJcVXd3q6ZnPXInFGbiQQM3I/CYn/L1cHNlfuI0w9jrOw
	 M+8YsygJCsI3iJpXggJHtLvaFuS0fAgjjBz9a0FeMY7mTA6ujDcqlsb3+wDUFGF8vx
	 V7FTrIXHJF6WW/Dgbcou/K/uX2ZPtGXmauGup1skpcxafRBx9A/aMeiI80mxxbeQk7
	 BAD6va75vc9M9aCqKsywSsR7sFHmMNYxR1RP9PTy9rob8udfMmuZB3G9ajx9PDJ0Jj
	 fVnjX5C3JljaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE79CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112079369.11566.1293943557101276012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8d34111c247242e6a7e0d31a23623a05bfa2e074d76d1c75265fd6de37ad23
Date: Wed, 10 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781120793
