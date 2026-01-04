Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3743D1A5B9E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767539634; cv=none; b=a5fDQB8RIh3Ygu1T2UuhzsZB7NpeJa0C9cgvJGfUUkUvWtZub+fBuQgduSxinbw+Qwiv/RaBLoNRkwyC8i+SnIhFJTp2AW+kD72nqRPSJJn6HWebp+XM5kzqRnE0FQ84GLREzP/pyhxScNwPz8nO08RGoIfjr2+cGowKM3gbOko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767539634; c=relaxed/simple;
	bh=7cAJRIzL+BCiACtiV2kvdYcLJZ+40qZTrm+2qPlIl40=;
	h=To:Subject:From:Message-Id:Date; b=eLwp7RF064SJk43+IgGB9G8FTSFT1zvkIK6QzR3gzbbhKQ5NofjDfkPn3/LsEa+eoQuhdrtQt37rqbWfX/oVBa7ILoMgsUN/vPn8m+khudM3W3awf5Ds/1X/fWkUBOqIsosVJu1H4MhjbQ3iGGF4pMH98wReFPPQdy32C8zrF04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge2zTAnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge2zTAnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767539633;
	bh=7cAJRIzL+BCiACtiV2kvdYcLJZ+40qZTrm+2qPlIl40=;
	h=To:Subject:From:Date:From;
	b=Ge2zTAnYIxuDyCC3tyz/oRvRP6Lb+rCOjc8PHrPINJjThZ7RjbD9DCVlUdwNuV47K
	 vKiFeLnRxRkX6MAbeZ9AD4EkJse1B8EjDu8ZW8dc1VnLB8ErwBp0WoJ7D3bMbieqLH
	 jXBe+EMiA9gqRx2VBQx/+D3SgyUvWsb71PoYdDUOjRIfwZXvoUes0Dz65+trRzirOZ
	 1c55bOFxQKQ4A1Nwgpop7qBpsxLWzU7FAcMqke0DUYowOoxjxFrKux+WwgtebGWEOs
	 OIvVwMQqaYFPRioArH3LWdGxqxPy2BXUYaPuwSwpSdwvWWJ7rD8sn/ajI2IsdRWaLO
	 x+bgNtoMTYmyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E60C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753963357.25141.18277257035147433766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d1a2b7dbec683aeb187a2c4bc9082db01f801965940c3cbcbb5fa2084a4b4c
Date: Sun, 04 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767539633
