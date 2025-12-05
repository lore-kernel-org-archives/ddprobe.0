Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F3226CFE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764931374; cv=none; b=B9pKTvhWvzNbNP1haEszCB7cGTheeUEa7kFynEshhlG+B3GyhFrEEo6FjSTn/6yNvqOtY4NT5rdVmSmy1/KU+CMdrhFXafiu9a9a10Mo4KekTVqxXCsHYec0uKSR6r/UDrraOTeZcz1NpEVAVCklUKURbdoBhV0rqT97YvYo1TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764931374; c=relaxed/simple;
	bh=lbFM1seGCHPvr3JllXuH0DyDcrlv9Or2GeLqtdKCuPw=;
	h=To:Subject:From:Message-Id:Date; b=ftBFLxgI0Qu5AwRZ2/WHK9V0zSOXdP5qWtiFeTWWeC8QdCRPVR8A0X5/7oMoE9Awtca8hJPLSOP3o6rCe7klK9HPVAk2cHR1hhU6qRwzBAET6hFXSbESNbfaYTvPzM9/0spsyqZhMglS6O2m1IbV60zfLnuw4QaJLSijdDtv3ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmCyA3YW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmCyA3YW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764931373;
	bh=lbFM1seGCHPvr3JllXuH0DyDcrlv9Or2GeLqtdKCuPw=;
	h=To:Subject:From:Date:From;
	b=OmCyA3YWXHsF6GqICgp08y6kBcX3at7Z1uT2To0Ek5oBJB2T+R+zww+wMxSnLWbsw
	 KKpnZfed8KlafbTgBXAndEDanTo/80CjnNjsGHmz+baDb7LD0IoVkx/jJ5rOQsuspp
	 kH4DPARfkYtvbwgRBKy0VoH0e6Z8K/P9mBRv5Lbh2LczZF1/RYdXM3BIkoDp/HXYL2
	 n6X2zfxxqzO3M6qn44rNTbO0Cl0aHeT8Yc2Fi3Hhl5wgoLJizFXuqGeSZp211iqJ8j
	 66KNxLf+o2TLfOH2h1onfHIJYnjxXPEGRasOZQ74vXwCgdbthy/z6Y9bcodIptS+FM
	 DzsYHzS5+8jTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1D2F7D1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493137358.21413.4326267211524335232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62a599918d3f5d9e94f54370d72a7e877ae14471c5fe6757b8851330c0cd41c
Date: Fri, 05 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764931373
