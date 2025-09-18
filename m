Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2E63B9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758157194; cv=none; b=knVjdLgrUEjvMPmWwOgWEBy7BnUr+ufrOtNzG3vM79Q2GAvi63sf38WvypCyWxRaqfLsJAi8u8RN6h8bgy9FtPrcxaMgdenxxTJqz1R92VbkVxPV+WASR+tOS8N4imvEU06nnBo44u2BGQ+aR9yVu6/fuSYvLXjct23TaA2hA08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758157194; c=relaxed/simple;
	bh=jyplSu8kz176JJ94r2YTpQxnEDRX2iT9oQsxbDYohZs=;
	h=To:Subject:From:Message-Id:Date; b=fCBOqqjnXa7RNbVOS6DusM4Wm5VDgLxx752acyEAGrdOCJET/5RRalgvCilYx98tp05BNjIJ8cWtP+DpD4n6GLsAij8gYHIAQE70xAtbW+p4WI/mJ26RCN9gJUvAvAi7VKIrFac1GG1rLwzLckCmCY/RAv3CJu10yvEaGUy7IUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcFTVt8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcFTVt8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F9EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758157193;
	bh=jyplSu8kz176JJ94r2YTpQxnEDRX2iT9oQsxbDYohZs=;
	h=To:Subject:From:Date:From;
	b=kcFTVt8tmd2KD56uU/UXZlLCtSwhRXCBC9HBRyZ/zCqYaeKbjvAIP7I4MRcgPf/6G
	 SwQ8mruwCadeARSe97EZozY38bLsMk3IQIWI1XstoDP47wIw4CalKPTVGtkhYxICRZ
	 vEbbpwbV8ICZxfjUEZ9EJIfBsypQP/kRqpdMjzhvHlRpFsi/KGy39EY5+5xWLuwVaE
	 zLfSFVFPwdldt+9uEzhKM+HJxBy4nY0/Abd07eCmhN2zZ9CwWz9Nv8PS8esld+qY+/
	 JH66nW5gPRdQ08gCEihEfFMbuyci+VJbwERMBVDgZY/OP0y7MpZ1HEg9A8zBxeQvir
	 KbPpxaRwyx3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95135CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815719357.7138.11083702278021711663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58db975cd7d05fa5c54a2bf4ec936af804194e108f199346084c341638ab67b
Date: Thu, 18 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758157193
