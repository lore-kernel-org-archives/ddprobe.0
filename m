Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AAD37A825
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791658834; cv=none; b=Mslqz4/mBxkRfJJzsY6DfxJh40U6mHGvucKfeVwAhYKKWW51B2F36yYCivIMxYiL4ub+YQu5qd9pZbTE6WyNPv8qOWFQ8CMjC54zkKEuvLzV0haHGe0G6JKqo+eUXHAzBuUKX5fyWOzD19YKG+N53JHwIoqvs/2yIhTATmDabWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791658834; c=relaxed/simple;
	bh=JPFR/ADBxJA2STuK38ho8kyRaX7uJbWzk5yTr8Ren9o=;
	h=To:Subject:From:Message-Id:Date; b=jViOrGLkR98LZSZQkEn4hFD5YQfXIQCbjYhLJyViERevjyKo5cylVM8gwyHxR0lTwzzoGfDl4/cxV47xk6d+DCwJcACzccM+IycrPVg3tr5FrxRDabIkLFSyqi9sTv1pvegOj4Vvxi5ZiqTrLFZRWkt1RNVwzgQhbZjz+3Hr2TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX2wD1fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX2wD1fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23F1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791658833;
	bh=JPFR/ADBxJA2STuK38ho8kyRaX7uJbWzk5yTr8Ren9o=;
	h=To:Subject:From:Date:From;
	b=JX2wD1fIydEtann3nbLiwxzdEFhfLHFMEBcRBXeNq3r6PHGb62sbNz3Zvu8cO73sp
	 rxUAbaQMeWW0+EAxw44Fjt3Sckp/lU3ptgV1Mb56YALBpOAzsfMeZiM2AZGlZesun7
	 oDa4nu0VQH1vF3DJz5fXTZ6H0Xxo6bPoed0QcwHF0ug6zLXWG6Bs0HsC2VyUs2cseT
	 hk8QG4wxyuUseszh7QJf70KxyKIWkWDNgeMUqfpYzbh9yiXKQGmLpr+4G3PS9ivoEZ
	 GoUeZd9fjndmuzwr6mkH7cAJ6xFYsaO3hTusO9Hsx8uqTH7aSHJriZvR9nx23rCV7I
	 LJ1OQsokV1SMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0774CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165883368.32717.437805795026148226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5462ff7a4f08f877b15beac89bdd08bb0afefd3246b5e6661a3bf577d732e0
Date: Sat, 10 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791658833
