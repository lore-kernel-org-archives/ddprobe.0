Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A92D7DE2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765228374; cv=none; b=jjN6bv3IE6lTv0ajSpzY4C81C5s3it9ZuKhk3jLuIbR6arxEhmxFnQSYqnqNzXstPyIRKWxSpG95mZRcVTEsvUvLkV+FZqvqqEouOUAvvCTUygipKUr1Gj6C91iVHSSMZxkVuNKr85Haz+xtI72RDvy3TOtjR984PbCQ4k4PMbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765228374; c=relaxed/simple;
	bh=lA3DcG632q+J3/eZwuEnGGi+KEI1uxw9bQyyXmuxkPs=;
	h=To:Subject:From:Message-Id:Date; b=Kw3BKmdgLqzVTXvOcu8MD8g5cy3RB57eHPFiGDQwGf4FLUJcb8jpXVB0G2aBQhjT+HDecWO2Wo2upfw3rIrP4PQL4EbSCiSZsNZveGRvTnFeafWXyTpCeauX1/90ivEUL5Kbaw7bLJxjKpvM2DxmWBXkCisZsv2WrCkaEjn0jOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnGMilx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnGMilx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B84C113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765228373;
	bh=lA3DcG632q+J3/eZwuEnGGi+KEI1uxw9bQyyXmuxkPs=;
	h=To:Subject:From:Date:From;
	b=RnGMilx7N2fvRRNUWq4O/DsLTdAgfT/9l0wqN9P0YBLPTVMPIID0pyDaZaTsBJ3G+
	 YTCgDe3Y/A6bGpEF4v41/qgoE2ROOVqiT6BndF2U3xKCBpPlhjXIP+dYgSdIL4SS59
	 LDRfqCR0QfITBLkOiWk/OyfLvq97Fr0PKGzdHKOUYDACXesK6fTB9A5vwZWnA/7NBq
	 TdSIhXxAH5vIrvLjTtUWsh4PStn6TtqnhiyodIIMKWJO9Tjrw5pdOPemdq0UUaYsbe
	 Zt/xD3vkxkxHoUR/j1fvIRhnnzH9cTO6QVXTP7GravJzT5wTy9SoPYBrI2YiQa3xDs
	 FcvM8oj1L0lQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358DD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522837359.27054.5274198680639140662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21c21c16fec9e24ed2abef15926b0747615515ee6f0f9ca8df4258a49d3c8b8
Date: Mon, 08 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765228373
