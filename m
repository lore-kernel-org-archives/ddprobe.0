Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD03783C4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785379234; cv=none; b=aPPttbMtEmvG/PXib9c9hPVQkGld3SQWv6f14MlFKVt4KaSia3be6XUFEsnqNZYiFu30YfB3HZHlvuk2IwVCrTUDJmEuycsK/i24GZTSGqR5W442R4gwGgcCz0XOT4lP37L9RN1b7idVUA6wid1dfbj2Js87DUQZu8xm9I4wvTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785379234; c=relaxed/simple;
	bh=5Uy/LuJHfhw+bHlzJR01LHE5JfH+mn0F590wiQ98knw=;
	h=To:Subject:From:Message-Id:Date; b=g8ScMMBb7xjwtUbeuLxXY0qomb2+Kfd8DHWCVufvpGjKQ2cVx8xIUgH5KnHQv+wd0w/5ap/9zVM6KL0NAf7K5553QTQAHoeN6JBYsQEzCJd4Ivj/byc2IHg+rF5v9Bz/shSzSd5XQ4V8ncqVtUWpbo3e/8sbtTg0HJyGfLfc3Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHBEHTPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHBEHTPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C20C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785379233;
	bh=5Uy/LuJHfhw+bHlzJR01LHE5JfH+mn0F590wiQ98knw=;
	h=To:Subject:From:Date:From;
	b=DHBEHTPzmgziN6VqxFBkho1o+UHYMtPYN+NwpCIEg3ehepOJAyhJCOyZlmp2mDfvT
	 Sv7+GnnI7sM6Pf0xdzBmrmCV0jXcMxLRLySfkpTYB1IeETPwq8gzDmet+V4Qe2DcZZ
	 eoNk3UdnvwFbXUrPGEI8xk+OGxZxkbCeVnU6kRYtA0b35dylWX3REUGQW/kx79V7zg
	 PaI2md0cZMl/Ez7sY0nBYBNZxIrYETFfRoUa9wlQvN32Dzgdf9EpYIvcOmLE1ydJ1R
	 VscfkbiXsH2akfLqd+sAbWr9scXJAO0UggAP+wIcWU9C+Q53C+sr4hO3bKATWeEC3w
	 42uKiGbIx1Zlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0690C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537923369.21006.7264806509603796768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b245d0b2a6d198eab218681afeccd0b20425066b18510e91e2c613c2b8c5d2
Date: Thu, 30 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785379233
