Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C83242CA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780352074; cv=none; b=jx2uc2CQUbPO0GGMTik/vlP4r1fmca4+tV/6d54GLw81MNtrZEG57pz0e38NFG8ozexpX12bn2mR/XW8Bs7O8pwoqq4ApYd8h9XGcka+Qk88D3meSloAOr9/iP5j+WO5E3xPV4r6IFFIxGpMgsxV4wqW8Ce7/zsIBWt2Ppze6ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780352074; c=relaxed/simple;
	bh=iG9dyvkZMfEwUmepk7emkP1robnk8aoOJhld2ba0Wiw=;
	h=To:Subject:From:Message-Id:Date; b=aXw+Feq10uRa4H6K0zNsu8XXFmId7H4/hoYmFS3I4JrWnRFmIN7ak+akZA3hyAPhHhmZHKouAk55bK/60HPmVCmF7PEmSHBrKK/KXfElJtv5YAILRVCbpFm6gWGYRuotwyUV0JO5sklL+Z6PbPKfH9dDdr+XhHZTLsUUlJ8bsKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw4Gy1kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw4Gy1kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B5AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780352073;
	bh=iG9dyvkZMfEwUmepk7emkP1robnk8aoOJhld2ba0Wiw=;
	h=To:Subject:From:Date:From;
	b=Gw4Gy1kjwsKr/2cL/KbtvCDozO6fEc0jHlQmcj0caU2h3tNOpbDxTBkgIZ0xN/rEl
	 41nKtIM3jVjHeG6MvdgD+DNVhIbIgbP4qwrVwHWFMwL32AmUx4oEQZvAx+a+0TW5A2
	 CO5wbZxqCaA+ds5pAH9Wf0qA5I9911YfIwVfGB1GlJfsYzCYVMy4qhLkCPzgFvXn3c
	 e23WLHOl8EYtF0eYWpe0hwseQSjCL84l/VZI4tPJw79d5OnrAKXcvfLGR1B42zJjyH
	 S+lNhhVXaMgCu6USF2sivxcvP102z9/utjFfQmvjkr4zEBWv5WvdYI4w7K862MkjV1
	 EnxNA6gquIo+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B233FCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035207371.9152.7709669227094784123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44ac1c9e63d0d3495adb0fc9035f02f9b47fe4692f9b6bc75555de071d9f82e
Date: Mon, 01 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780352073
