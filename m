Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B54D539A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719966923; cv=none; b=IQ08kDy2tH4ibpwflsTHK6reM8HbdYiT1SNjPugNsbzO8ol1oeSMDbBVd8eLWGj8OdInFwaTbKCd/wfFWSG7iV19nwbpE5JQE55i0zY3WE7XoiuNWYYQQPCj+3VYk6nxygg/RURijqM2KTkrtUcgfVd15KnK1JW74AupqYG5pnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719966923; c=relaxed/simple;
	bh=EG+48HyYAsjKgg/PnjD2a5BNvcYK74j7fu6tcrp5iZs=;
	h=To:Subject:From:Message-Id:Date; b=PfQJn0iUPRQ32d8JHkhXCbrAlDcl8tyuCKH/nbA77ucJj34ZhrbEWW/7cZx2G32d+bzmJuwP0ayfWIwh+dKJwv9W7qzFgxe9N+fpVAYkVmvM0CaUZ4/UbmYZPEZ+BVoPkR9MPMSUEc7fQwwES9zdMmMa+FFD3oRY3Usx7Lg+Pl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdaSVJRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdaSVJRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EFAC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719966922;
	bh=EG+48HyYAsjKgg/PnjD2a5BNvcYK74j7fu6tcrp5iZs=;
	h=To:Subject:From:Date:From;
	b=kdaSVJRLIwI77bKg9kaB2CIM0J8zA3MavGIsnpRoF4BNxu5o7wAB+HaMHk0rInbMX
	 Wi9Jv+g2fjknBeodj+c/rJFuVMW30o3++Ik7IzbVoYJ7AjV2XQwX9G/YK1jCDiIAm7
	 6+f5obeCmB7Ltnmrmd640MB2qL8BtgAMB+3vpuy8w8sgZFR7u0ODkIE1odmGa0g7V7
	 TcpXiliGyqSywycJKxsJvZwdpgKjWtCcwJtYO3R+VUOKrNy5gcXgOBOSOU0LsidOVE
	 KGXTdjZIY2vDntFZRfBkw0b2R2XJz8uX6peRdmYBSUrNiuRfkWYHoyWMxZZthzNzEp
	 X1gNIl2nHPlqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF7AC3065C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996692277.24651.7848343033750881265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01c2cb75a9c61771b9388a0efe4a7a3744e4827b0cae6d4d54f6030e311f91c
Date: Wed, 03 Jul 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719966922
