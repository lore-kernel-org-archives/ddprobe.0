Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CB16F90C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720796963; cv=none; b=kdTUCzm7cYqd+jpcyfZglp+9jgUZL++4kvOly1WLhRVxikPSLhby9xzUSX/5k/6viUmOcginSp9bJK0UUTbKnfmaS6OArAHMmMFvqMgRLUrZNw49lDUJTj+ulQZC/nGA85tTDvQL7a+CI5m29vNAo21inwe37QHNgHHlV2up9q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720796963; c=relaxed/simple;
	bh=pTEGwHwDX+6lbB+4SmoTPDGztLv2K/relTBrqSOCHAM=;
	h=To:Subject:From:Message-Id:Date; b=OaEZlSnIzWpNDCNFmAsItowblBPh7JGN0nygtDEObYM4IxAKvi1C7BZOPuH3iwN+MKLXaSvKpiLV7NaJHLb4li60fmqihXyNYobYwPbeMLUY5FLA0X/lemgTV67h+DlC3ELCoz71Be2U33XARcdV1UPhQ3bw8qrhr8nIJ9wGO0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8C+2yQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8C+2yQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CEFC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720796962;
	bh=pTEGwHwDX+6lbB+4SmoTPDGztLv2K/relTBrqSOCHAM=;
	h=To:Subject:From:Date:From;
	b=V8C+2yQlGp9A5huVVoG0uTRY4cv76ZWwse7ymmqijuG/zidMnSmwyFURqPQyO52Xg
	 PcBXKpBGBSbetQ5ljh8rdf93kRyVCWBqYQZvNBF5F8ynehWMP7KMHTaWv2RCd5iwvt
	 f4NmqOoPIQebbQuQJa2oo4excufj7y2ZxLsWSo2rolX13mWXATf/+OmtHlmq5SB8Cn
	 bczzawjVmv1I4Xd8PWY4AcBhGsZtcTlwyZYhOlwVA5ULq+BJWW8NRUV4Tnmsy84MMK
	 yAdCkxTycmn6EB9UXjLU6SbOar+i0S6oJVJog5vzdFgqa1n3ZdwYPGpOhYIK/EC/Yp
	 IfBDJhhYKgBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E2CC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079696280.20121.17682169468466068089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b0813d8907466cecc2e2160510852a9a821aac4ba2f704799406f320e31189
Date: Fri, 12 Jul 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720796962
