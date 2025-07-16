Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C44F2EA72F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752654595; cv=none; b=cvv4cpF4cECTL4s4qG03wC8AMnBPkTFS7jQRsGlMFgKUCD3QRn7oCnTHi21/0zhOc+UBBhI/68CbbczwJDcvd2vGuIBXVpypGPCvdnOsKJk9Pju7+kGT9okhY7pwUtyjEJyOBrLs+iGboLJDipIft80B2U6162Jt7uZuHihLpOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752654595; c=relaxed/simple;
	bh=05xYlqiaU3tQpt8adAlq1HHyDqFuXQ/iaZfeWlS+IBY=;
	h=To:Subject:From:Message-Id:Date; b=JR3reuHciPZ/neU2h0ph9VbQv5zQQtsTPYyw5CejeH4kG0GdQT8BCbFBQpxKnw/nEcH43V7PVisWCqM65fWYBBWCfL0qtldIoCLNNFjsFI9F4djl5tv5mRTN0Q1cjwIOUiwGDDSwGv4L8GFVEso9HMyrOxlzFF5mminSH6x1En4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS6KfMnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS6KfMnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B014BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752654593;
	bh=05xYlqiaU3tQpt8adAlq1HHyDqFuXQ/iaZfeWlS+IBY=;
	h=To:Subject:From:Date:From;
	b=nS6KfMnnUHD7VRJaCfxlAAGvFfUMXvYlBii5rnruxPGp/tC1P2ZQ85yrUVlIRMmUx
	 2G7i0SlOO8Kkdtg2BBWvCoznXW5xgP17ILMO8cAti7AN8cVGG3wg3EXuZrq4pct9ai
	 xRLMFOXTvf2EcV9a+OpLfSFnLWNjl/Q9u6jJ9j1feNNBTNNHOmjl0C6XkBxY/NKNaw
	 hroQd45/7moEr3VNUJHasjPcPI3qbr5B8aTZBLyC8KSeuLDqfpy4p6JXxBnhB92B3f
	 syYZcIPome4SN9AHvF35BUbSCCzIUpXOjAHDq53qb+5oG8tbUpjFkQa69g5E7OMhG0
	 OEUFK7SXJ4Dmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D176C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265459363.24274.10549716079489154356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2158e78baff69128ffd24d3b1b1dad430722d6cd989bdb9fac777658ecbbbcb
Date: Wed, 16 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752654593
