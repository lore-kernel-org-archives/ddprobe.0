Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9ED1BDC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730508954; cv=none; b=YjcnidQiD9qwUSzVJsAz65ffRMQXqvRHCSA9tPoHkNxq0u+4M36USSZimOlsbMyCUfRiHHjeRDbZX5JFxVd8d1SYfKUehAFMS1LrMxpdf6z7fGlmmskRy8Sy1A2EoCv+m4nNHGZDj7XTCClV0JCI+cLjiJt0ULNb32hHg/WR6Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730508954; c=relaxed/simple;
	bh=ArDuYXcJp87V9IZk6WQYVRxcQMm4PcxSbYNAatbEYLQ=;
	h=To:Subject:From:Message-Id:Date; b=Jh75tg3tJkBX6I2rTn3hTXWzA2gsUk7WVvGD1YXuvZQzar/+AnIY34SqFnV/mweta53w1s5Zcr7nK/2z0aptbaBAq//CSFlxrPPNs0pl1G/XZRS0ImTc7TwndfvyoKab+jf89fW0iyJD0FLsDZpTV9cm6R9voEeFYq9opewapZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otk5Aw+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otk5Aw+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6368C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730508953;
	bh=ArDuYXcJp87V9IZk6WQYVRxcQMm4PcxSbYNAatbEYLQ=;
	h=To:Subject:From:Date:From;
	b=otk5Aw+5HqWG3MntPe6Mq33z1e+FU16F4TIaybF4UI/z4dZVCS5VydFKtYO3OJLID
	 ssVu6MN8hYAvjbbQjp+3o0MT45pDIGhEVsPqikZIU8DBP5r/0rSJoIkBSsd2eREofZ
	 COzaqmTh/sFElJL/CsP8NDX8Vn2kUPXhqr9MImPLSJ3NkGvdRrYrP2XbxeZfB75o7W
	 1/cqla2YjJDD0y2bbP56dwZqtHYx5gX5TPidonxM0AaDd/jvudd6K4Q4g1D1gVD9w4
	 krZW+q9NZvzTfzcuk5jXGynqFdzhvgSkeijAQ5StGOnuM2d1x1EVzoZUkbcWtfHtBH
	 vdEXHzXna6+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A483CE6F09A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050895363.17613.826417780335493838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a15c0e61ea7d6f39703dc030fb1dd7d53ed360eb6b753dd14abf308870156e
Date: Sat, 02 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730508953
