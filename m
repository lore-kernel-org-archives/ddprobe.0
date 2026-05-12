Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A56C3A6B6A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778577634; cv=none; b=jpEREA5luL+9wcUKu8yYVxPQjWtk92iZfZ9wbs9NerlzdsY111+R2vmXAZwc/J1ocXQNVJkZgHDa4UfHBI17dRueKsezfgZLff7n0xvXJEL6QU4kD9irG+6y1sz9qyRiixxG8l52/6ZgYsu4iOQlLjelXGciWn4QKpcDt8G7Aj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778577634; c=relaxed/simple;
	bh=p9Zke9Av13hoEH2sc2teu/btNJoKe5WDT61Xq5FzWYM=;
	h=To:Subject:From:Message-Id:Date; b=kvHt++rDudeD8a4XEbgbWhuJnXO9huv5dWC/OSIpMruw0joYyO1xBX5df84HORVY+z/LQm7WUHVINirwj6cT+l+aukDUi5pTWAyKRJMYkJbq9MxWQuACRbZ6MIgl4r6zb3UUdrouSs9zWnOBt/cUQ7GMhAHohpfYUnuTLBukWDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBlw+2ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBlw+2ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD8C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778577633;
	bh=p9Zke9Av13hoEH2sc2teu/btNJoKe5WDT61Xq5FzWYM=;
	h=To:Subject:From:Date:From;
	b=QBlw+2tsRLGbxS47hbkXD5srT/Nzs6sXQCdesriIZnwIiu9SZ7s/wa2iamXWIzUow
	 sPAaB/5kZQrDb5ozImMkZJlORoqVihywGzRjGouPbgaQ22XD492UoDbU9dbwMF9TAw
	 oBwogeQ2cHiRuE9KCTQKJL6wsHYAquA1j6x2YK7beQrG2mlv7royI1mCe9OjUwNNz6
	 lp7IuSg+HZDNNGDGpvycNOphx7tjFaclYPg3J6efp1e+VZbRM9930jPo0hANqoz2Hm
	 0DOjRfEvWh3nRr7plW1Xay8oSQF3s1rutD6XqTO2vBKQHnN9cTsg8w9gSIkfjtTudS
	 LQi+t3lJItVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3DCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857763368.22229.17464944200341399411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f43217c1342689918ffa145d8e8b29eb707afc69edfdb82cf9d18528315a3d
Date: Tue, 12 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778577633
