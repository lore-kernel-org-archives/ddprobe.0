Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9E82C3254
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748906994; cv=none; b=p8w3zw3lUpqBY8K97vdfm57UhzBIecdd9EC67S+yyHNCXmBnKMzHyWwCc8CWZK53wIf7foB7ib9fQg2xL+xqQF83MGID7rDTuScY+yQDQozHmaI4/lugbxrHZWNJ23S9uoWVLedOWPONodRY69OmIidZrwFt30iyr0WwCFNCrhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748906994; c=relaxed/simple;
	bh=vieQ3plP+ayQVvuCLepYf0nBxnOtx6P50VErbAmtyow=;
	h=To:Subject:From:Message-Id:Date; b=O6/I9wRPKJiGMA9j+aVjKE/LOkxafYsdSG8gl+t+Ey9rFjTFIGLmxdByLIw1dKptMJX9EkZYkgoG+/oyJCbxuZMThV/dupwEOqObZGgLkSXwAWwL5B5Fq9Qp2+rCRc6R8+mvOC0xpocf0EuxHoH3xzmgIvlcv2mZU79SM1utz+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIlVxfpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIlVxfpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748906993;
	bh=vieQ3plP+ayQVvuCLepYf0nBxnOtx6P50VErbAmtyow=;
	h=To:Subject:From:Date:From;
	b=bIlVxfpct88L98dFf+YqaIXDmlrmE/sN6DnS7s38u4dUpkSfDsj6SZ2qff4MCetbH
	 V5m6gxevCcZYbEKiNuO8QXKD4/8Z0nyS+CC/s21rc6CdO/4tlRLjX75+lX37zL/U0V
	 XFC8MSxaCAh0X1Q8srqVFeJAQsaiCKRVwOXfH7tyBWg1xLtdYxza56qursZ9e911AN
	 rC4fEPk7P2uY9cQZaerjm0a6paD92ptCQwOzaOzp3+Ye/qXbIZfyLSILiC15bBmb0d
	 n0yCBfAMsgvScNDsq5Xm5mA1vHKuYfaDkKdTGPPmpAeLbN9r/mKEJZ27fURHcZ1UHO
	 EXf22P5Cyz2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F87C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890699357.19463.2212076857397867581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697bfd517d3809c5d8c339f56e99411730f3b8609eef921e000cd4c48488ad4a
Date: Mon, 02 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748906993
