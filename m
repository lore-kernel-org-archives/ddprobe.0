Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0F5F9C0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771911893; cv=none; b=edb5yD9AXb3yi57UjvzXDaZdpyIERbwigaOTHvr5TqsQStF/T7DdlyindCGxZU0o4pZP4OF9Y+dgqH6pXJypM9FDTYcJkPox6wQzy+wNsmQ9thzvnb9MLBX73ikadQFlU7EtOqsY1q4RpuDitMQ3xANPfjwZAD1NjsGW8pnpatw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771911893; c=relaxed/simple;
	bh=yU0olsxORvy/4zihJwYRfYqnLvw07VlywOkpJmbHKvw=;
	h=To:Subject:From:Message-Id:Date; b=DIHUnWK89oPudpLpLE/pIsnsxwRh+LKrpCic4SdHjWkgfpmblEq8+587YqFY1JJidYsw6fj01TswIG3JYtqegbsr9lG0/3Wkqz7/rZEabrnUDqABDij0Kf2F5kEWktdmPeKsKVUgVcw9H4ohTihFd1Nz5MpHHx8F/f5mO/14C10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQTgG9xO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQTgG9xO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE1C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771911893;
	bh=yU0olsxORvy/4zihJwYRfYqnLvw07VlywOkpJmbHKvw=;
	h=To:Subject:From:Date:From;
	b=FQTgG9xOI+Ilq47vX1RhOWNgADF152xwPpfzcg4v8w0kjQWH12NZc93g11seRCedM
	 MvXUSxJ/n8Is41cWiNrQRFQXaDL+Al1vrXU4vJUm5rklksg8aN4+y+/R5bF5p2WHhw
	 1KMOoZH9I8G4BejHy06Vu3rinTm4Kla9hKuh+Z7UH6H5uI2phMLihPn4cb95/48HH2
	 gRz4Rzk1Re0EExR0QxNjzpt0wnZaaVGLzb0eWwT9G6A8i21Y7NVd32KBucc+xFdNZX
	 Q5OnEHWIhmtQ/xXdAzPKUxQY7GZ4tnfHSnz7txQilrDnNtjDW5/7sLRFHgzcD3Eg4C
	 jO46HaSs9zASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F7EFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191189361.32490.4756800212388310882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128c1c7e4d3cbaea270db0b3583453e0a2680b78801fe66c5b35dfb1625f6473
Date: Tue, 24 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771911893
