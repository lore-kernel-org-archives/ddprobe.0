Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4640F152161
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718074703; cv=none; b=aE3uAqZjjK/jMs7gRKysiwRNG1tsq8QVGSWLK3Ug+HdfsZTsW2c7/WNa45rrkoQ0wRkDpjxeSAM3IKK6JbfSQv7KSLvFlMdcesBofL2F5pks/AEs2GKyAI74Q+BzIyJynfC96+euZgRiPN439Vjtv0SousYpk/PEl7Wy6qHrVqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718074703; c=relaxed/simple;
	bh=Wa94Dq5IxxbYrk99vz6cipFdaG1RmJcqabYowZH68lM=;
	h=To:Subject:From:Message-Id:Date; b=aMT+vSBp9011ILksNwF+ORtzE6kLuB3vp5Iby4zKB7pzWZWegH5k+2DTX7D3xRvY4Mhz7NS0y8Sb/iNMIgCM7ghtDfB6W3dC9PQZ48SV5xhm1JtomQjAfayPL0oVwOHrW8KchObVHzfgxk6DdBd0dZ2w1mMT39nkG2yZmfdaQmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlTL7PM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlTL7PM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D449FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718074702;
	bh=Wa94Dq5IxxbYrk99vz6cipFdaG1RmJcqabYowZH68lM=;
	h=To:Subject:From:Date:From;
	b=NlTL7PM7RmpBD4tkVjkfId5OEF6bDHuthhr8kOWffsMV/iPSZhBFuo1THuW4V2KTk
	 CDjw7rmFoxuKmRGDoSo4UTkBVOwxtDtcXdf/Jf6mNb7SR9sffQnyz6QxV3qq5Dt9fV
	 lKEhicvWYTvp+C4x4g73T+aFa0dqnMPZYNVeArE5cRoafoUuGb32GZtUC5BJNJeJoU
	 jw8Qp46oeWBqLLcBb++fMrPujgRLXebUVJI0/98UZZxIRvGo5CBTcxbmm/36vphk2S
	 lYuHonXPEfo7tdqlUzWjpmQPLBxIhCXQj737h2URGZdp6fG2YTSTAKum781JhzV8Ti
	 9ns03cClnKElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35F7C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807470278.367.14655097844473449402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b48613de01f9c5c8cf71261f938fbc01b9df53292e9258507c31daff2ce37a
Date: Tue, 11 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718074702
