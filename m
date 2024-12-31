Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B55F136E
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735636554; cv=none; b=duSFnmqWK2LNy9nsQ3bS7M7eQ7h/kjelzJTF7J0Pomo0O2MtjEFQcMtQHHqZEEsnXEbjGWXLHBJKj6sqx8UdmoCOJ80DNsvncpWMXLAKEBo6IFvFXsSXdQ5aAUXaYRxi1IuxL8xiUX7YTHV95h/TTDIK4A5QhOc7oKIRqPPW2H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735636554; c=relaxed/simple;
	bh=UScgQ57qTIh3Vq6wXANydajRjWYYlTkAFkqPxEES5uQ=;
	h=To:Subject:From:Message-Id:Date; b=KIJav5dukR91LuWkRyIsjNaftKpe56UGA3udUXHr1IrEukrGYAMy4tRVdGxjtaLtTYTf/r1AMmqaPZn92uq7cHBm89vj6UXbYt7Jtk3PHjCIJ47fnb5uCRu2NQsZAmzHtMcGbksoworKRfOuR2vkY2KnfAl8mpwWpp4pi5e4vuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL4hg4+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL4hg4+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8AC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735636553;
	bh=UScgQ57qTIh3Vq6wXANydajRjWYYlTkAFkqPxEES5uQ=;
	h=To:Subject:From:Date:From;
	b=LL4hg4+ShxN6SAntgrI9tWMJUMGyFiRgJFjRR1hMVL8IrD//FDpKife6yMVv3xQHt
	 xfEq5xAcPlWzVL/J+Z6DrbY4st2z5UfgXVjeblc8dYHNORGhoLgrlcv8r4MunO9+iK
	 wKJTKCdYIY3wphZFhRs/tsYOOsBNRwIKHDYefC5CvT5bKrT2bUraumRNWovGNCm0zP
	 C/W1bZV+jAzeWXColLZKZuy7y5zhO2T+dOlbeR//UZVWVny2ZJLFnXdm38Ym0FJ++h
	 VJBwQMUvfqltjNCpnjB7q5VpxbKM44+GOelUbWwpRbRAPFExB3p3ejUaCAydYnMFTz
	 qDwy5mGhxnieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A8E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563655360.25739.11364643580253839972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60ac18930a0eb572a147915c6235368aeea1b751da96262290fcb0601f8db55
Date: Tue, 31 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735636553
