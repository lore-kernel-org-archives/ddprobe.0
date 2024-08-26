Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED471E892
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724684755; cv=none; b=JHHISJPVI6FH8g4+aPdxlVRB1uMNzSMd3b0PjZvnfVo6KpN1oNBJ1AzkXjCViq8nx00XsY5ve/QotTiDwKDyaaLCSiEAlwmWJz0asXGW1vMfj7+G5PBny3vJEU73wxVOtew9p1g73GpC0XycCSr29xL+HupKAr+YJLVd6LqcXYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724684755; c=relaxed/simple;
	bh=Dw2X2jSrO+CZZxVKlMWvQNdB84oNFBsTSC8tQ4Y4yTU=;
	h=To:Subject:From:Message-Id:Date; b=d2ax5Bu6ajcOIbeJrRvDZQaXtAMiXJ3bosDbfEOYA+gUcezbUEikLu3CDecPm9ZsgkTOeSrH3ED4TuX58DmongjUGNZkOfK1DEIun38S3tq6/VSpz1Iwc9y3hK8G/3wgkGw4SdiL0J91KUWDF7jQRyQzVbQZgbK0w/OjWp9+Dzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GY+ZXzpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GY+ZXzpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DDBC4FEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724684753;
	bh=Dw2X2jSrO+CZZxVKlMWvQNdB84oNFBsTSC8tQ4Y4yTU=;
	h=To:Subject:From:Date:From;
	b=GY+ZXzpbDuNUcwZkdQ3SNQa1bFXXPdjQte4VTfI7r4nH68H6gt5LkTUNRm5gjRak/
	 fBdS6C/0WF4DFu++I/icsS7VG/w9Tk1J7ALDMyYR5asEdYbtOxuKSd8l0DLE2S7vTP
	 jNazk5b+ldTtogmAnoVqweZCCBaG30RmYEuWQrG4J6f2DacM2o7VH0uobIMC5DQ5RF
	 pMyh0nmax8C81CMI0Cp5VYPImVOlRV2tEzPXZDu70qWSHEf/gtF6sgRHTTgqYMPzp+
	 z/HzyZUgTbgwATBhZ23S3TsYT35nJLDnl+k8Cw94l2HJD4SAqYs1dEe/SPAwTrB6zI
	 fAdlXyiWSI8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95897C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468475360.32312.17914898993756985825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19faa00ee95a0f5dfb459ba7a393514ac75c8fd245890d8723c591484b5b2926
Date: Mon, 26 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724684753
