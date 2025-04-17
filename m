Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9E91F63F9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744874394; cv=none; b=TKagK3diEUi9lrxgAVHa1LrTKqURdBggDmM9qYa945EmTHaKBobCDutSLeZ7pNxOF3XCJhkOU4Woj6gza9gImHQaRroK/UqMgbaRieZb2VtSjVL5AjRyeJzocjYc+uubiCLlaQutlm17I2XNoZrjurwvrI2n+eP0EbwqVCHLcpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744874394; c=relaxed/simple;
	bh=ogKwBi1rwG3bu18exAxo8ClKzI8WiLcFygK3mXZFFjw=;
	h=To:Subject:From:Message-Id:Date; b=UJIS4P060+5ScB8A62plZk+DXjIyIF9ayO8iOUgMi8pRfaO7IIxK0zgFEoyt/MUfuxjR8uQCJdq0zm/uRPwR4sFusAKovdZ6QIDp7fboEhGL89NrfMZV3FjOflUaOcxy9ZVU9kbFCFJVTUulqYXh2xZC2nfmfufcGSTNBWpi/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivILyHo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivILyHo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8778C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744874393;
	bh=ogKwBi1rwG3bu18exAxo8ClKzI8WiLcFygK3mXZFFjw=;
	h=To:Subject:From:Date:From;
	b=ivILyHo8BWVQqd/f0HInx0vn81i0wHqOX0YKnZiGhBPHIggRPoaRKRHFfq7sbEfi1
	 RDMD8qTctVhJupxgBvQ2f9o6dKDp6vKyBGroVtVvn0yoIpl281t93NGmILqJCRWkC4
	 bisaitc2bLZtyt/NZnirmH5JbEIBUvpfHomTIOPdMKa5os83Tq/Dyw0LBeRfgElsqY
	 +qac5R1VWRSmHHoq1M+yB9xAyw+yiqzQsHN/DvxM7RqL4VOxs8WoCyc1ABwPpbpkfK
	 97LKZdZ51JCot5Ngi9zUwHNHJ8gtldfaEUMaTOuQNOUjJ4GJmyLbkZAfhKvrnCucop
	 Js/dhWXLlmMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8EC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487439358.11120.16644404230665713605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88882a59e2e012668c91efc735ba385da839461897f1b468c10c313669f0ef9
Date: Thu, 17 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744874393
