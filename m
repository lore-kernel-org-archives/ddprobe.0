Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548FF4502F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755823196; cv=none; b=sFynnbhRdIvt2MhqZImwBRiwuDqa83mCEQVzpLbUmUpaMOw+HCJ3dKED0WtwHeiDON/+puQPNv0toExE+xneVZl3jqofMeXB1VmHCGSKRc+Wo6c7fzz/UDlvGSWu2ZKqQqCY5bSePlJ0tdiK1uGqCaLNqcMiMEf5b3Iw1Sezotg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755823196; c=relaxed/simple;
	bh=xcDxiKS1CNMkFzmFjLp57LSQNdfDIPWi+iZige0M5nE=;
	h=To:Subject:From:Message-Id:Date; b=mJTOxPbzB7NMzk7363arHoFvVcem/7d9xgMY2qUKgTm4o6AzRJJ/Z8K+bNis0cI9ebAM2bpOobx+f8yyViIj1QFWITXttzmBflrTBpoCNaWQf3c0Oo8z6IKs5CTWgKrGqJFd0v09jKlQThNe4ULxk68QmetclbmT/6PFWjtak6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+YpoKn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+YpoKn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D80C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755823193;
	bh=xcDxiKS1CNMkFzmFjLp57LSQNdfDIPWi+iZige0M5nE=;
	h=To:Subject:From:Date:From;
	b=I+YpoKn3mnFEL4FnhhSPPsKxCM67lVixOxaYU0j8yZpWqYC8rw//jBIfSnzva95GR
	 ONqdAqraaNff4WeDQuFne5OaQ2mIrnr0/U+DHPUnaBTNz4KMSwIGlD0Wc5jlV5Tift
	 9z/Q2zpDVtT97sNRxwDXv/NnnMYpQu4incK4SLnSOz0a1XJwoYOu3vHY62dOOkTpfG
	 ShRkFUfel9C2BqBKAG9U9lKQFTiiK/vJipzXu7JAJu5xSnVA93wyDCIIlH1DeA97Fi
	 szFKfI1d/B9bhua/1XJsSkAzt1fdGezFfL63UDR+f40DLCqAL1KjhzbYjGFyX613im
	 ALIqLaP+du1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE9CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582319357.18597.2515704409046793405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a526d787ae17ba225a627edfb88a625f5a7eef55809af595733346f1b817334
Date: Fri, 22 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755823193
