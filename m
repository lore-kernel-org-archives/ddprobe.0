Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D88A3DE43F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787004034; cv=none; b=FA29eJV9QwNO9vwPG1RoL/gseZ0SSx3wIj6yCCJ2fvQLd9iUnOrYylv60++PIMu4uekFa3yhDrhvRej0DumNreNwqVnRl3cAzTjP0RP7tQAMYAPnXptjTbl3dHyLMe3ukTfqSdIjSV0dlVgVoH8O3kYMQvrnUDMWZPyl+QQSCrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787004034; c=relaxed/simple;
	bh=QQqG2dRX5Ios20rhdTTZEUAqELoMoXKWs/uuLBp6kAE=;
	h=To:Subject:From:Message-Id:Date; b=nIWRgDoglJSs0Ku9fBkvw25+aoY7+oeZ5LJpeqqiCQ5ZpkE3InRP0ye76ZAq383wDIFwsiXULRIEQVGosR9g2IWHLr2EorUivQLy/+d76fuLkI0KwpLqcnbcWzNWPchNJ1B5speiac/yp644lRTjn8AHjz76ZsInfVcEfx8+o3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBtbvwCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBtbvwCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3559C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787004033;
	bh=QQqG2dRX5Ios20rhdTTZEUAqELoMoXKWs/uuLBp6kAE=;
	h=To:Subject:From:Date:From;
	b=MBtbvwCZfuWquMGq92QvC/qc3JuqWwuZSnoGwUEoflsLcZ7aDjOQ4insRPnO8ojl/
	 VzfQ5NK8bU/h8ZmST9fZKIqHoskTH2XLkS7jSQ5vCdWWvma3NKi7y2YrodkOu0Mqsy
	 nJc7D4Wih0zAo+ZNk3fcOWzYnSNdh78Dxl/BlhARW9PKNZKYwlVKV1ajVGZhT1NIyN
	 0IXIVVIK9dr8f8Ca5jzViz2rauNsvN3ta2zFSE0+Eqi85exxumqORwl3QCHJ6wkOJK
	 SJYFwKB2ZVImWMIKSKTa9b+Ma88xt6o0OCzRxJDxapseSihvdaVuVC4kePQou1E7rf
	 5yvmLRE25Z74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE7C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700403369.7809.1696917615713665977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220b8a4424b6e9a80f9ae2bf791bf99103f80eb13eb371bb6f6842c04376409e
Date: Mon, 17 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787004033
