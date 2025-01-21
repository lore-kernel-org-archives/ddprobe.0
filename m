Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4949E23A9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737473154; cv=none; b=BQ9QI1rCXGbhvgkATmdAtbpoQK7JYO0ELBx4kroHvmIlKsw4kS7eMCyjSxrwzxuegb3GmgzX2sHvB/quRexvmif4c+F4drxTjJ4zsWRCW67SK2HX1KdRf1WlQT6sduElE0UTkU1oFQc2RjN3wTMC+h4J+YA/Ttt5iE8uUbxoY1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737473154; c=relaxed/simple;
	bh=JKJhAsuJBRwfkewBWuimbc+ogrN4mzt9C/v2y6BmCA8=;
	h=To:Subject:From:Message-Id:Date; b=l3hSdRXzUFRS+SPyRPUYbyhgc785Eu1cTA5ptqQtncIIWS2Bo0EyshwC6j73OKfrEDE6kUGEbzHXNehuqrxNDAfGCFBQEG4Fgo+6UFUhrl8AhXw9t2LAddnMLCR5rG1U//wqS7yC4QVLVGlmQ6gIWjDvAEc9txu8sd6XnexZkB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhoGroDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhoGroDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF805C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737473153;
	bh=JKJhAsuJBRwfkewBWuimbc+ogrN4mzt9C/v2y6BmCA8=;
	h=To:Subject:From:Date:From;
	b=dhoGroDoupsl6FFrO5Dt/y/mUc8+MQ0Jn6cmiQK0r4iar08djyA2CwkQmmVxzzq3E
	 amyy41MmGbXbCXDeQnoxuzIGYCKm0XFZM1Lk229moBb5IzSBNS0Lsvmro1NSmoUsEB
	 4KX+dNCDyGZIiu6JmvC0N0IO2P8uZlv+o3/2SFRrPFtMGA0SIOSf07z9iyRJsYrFkf
	 YVFuRiAObhKz8g3L6JL611250Jr9shpV0mg2ecCLvUBUd7jY97rrIpEQtj8bm2HfM0
	 obiv0hdNI5Gag/7/zVHPSHkD/qMTp0kMxzYNHk7dk7smM0sA/Fhnb4W5bNBkT6xyGl
	 ysoVUCHQxcMrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921ACC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747315359.20734.14983413640634866695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e58a498489f2a01e25c44d59450c2e1fea51d0259fdfd05ce987267d3a4c783
Date: Tue, 21 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737473153
