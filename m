Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E79E29616C
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741103334; cv=none; b=hrHuRartlyAJdTjvMgXlN0gV/yk2VJ5HBYedAUOQB4hvVXvHT9qGoM/rtfEIY2pYSRJ/nazQdqN3az5dF+DUxay88YIHmATTEoBBJ67hHxfNdpDfx30kFNd/JsdaxkZoBzzmZneSeJpDd+s9X2hLxA4WCxYKoW6S1u6Uk29vG54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741103334; c=relaxed/simple;
	bh=AmFRd+bbFvNcTLi+gWjgmLaQ17v5e9ENpKZMOg8zVxw=;
	h=To:Subject:From:Message-Id:Date; b=M3sHZmeKzU9b0hDIH/Tdv6TSJ5t8nB9QTrqKXgAxLryX4Wx9WuhGdB8ZrclZll4qgP+ulxrvzuZ+580/6sjN6LFyrHDMpJFwQNzzRHh68w6BJSO165C33u9I9oG62ZOPv6E2r3mzoJNZleJac3SmURAq4OYGHw6ZxGCXlkOCJsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJNgivIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJNgivIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCD6C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741103333;
	bh=AmFRd+bbFvNcTLi+gWjgmLaQ17v5e9ENpKZMOg8zVxw=;
	h=To:Subject:From:Date:From;
	b=DJNgivIfnykotYzntUj81fq10cRk+pEM14V67KTZqPgv7hDrKdHxTIePUinzKJ6yo
	 zh6MhiXk62XB8satAsD0gIxjHU2eDZGrRZDB5XH9QAA/e7dxTX0lF0jqsNjRTrE/Ri
	 Y2JbMuA2DuWwnZdj8QzVBj+7uEh1ZpTiR5toZJBAwySgxbOQq9pYjytXwXZhd8aryy
	 sIfra6Vvua0r39nr8yGKDS9lvqb0mIhDA7zpyUEr7EzlZKfGSDxTluaCEkj+M4IusO
	 b8Y3AzOHa9KbIfuBDsi+uRej0/qxtDORzK+YGmksuJX1I8I7uWsJTk9TrnfdWv+2Oi
	 3KU23KhbzN10A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99437C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174110333361.16638.544351197369977098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8a8fbf11c62f6762c654b2e8159802410134b4b4d7883499d19d18d172ed93
Date: Tue, 04 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741103333
