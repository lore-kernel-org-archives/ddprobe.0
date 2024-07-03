Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45F1DA31E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719990923; cv=none; b=qdigCV/DEkPU9bi9pcjMDbvw45iJ3Y/XMCnJgX/oflfhd4y58SgdZxs0mE02e+V0R0vbSBiUo6+ET8ZoH9IGWPI1OayE+/g9oqMwJN8EZcjFMOrFJ10KA914YfN6zwjRZWiVWZdrL6UZtH2/7Im09MoYrM8wQwvFboqfFITAHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719990923; c=relaxed/simple;
	bh=kYI5yIia1kib+0cM/gYu6Q9B3vPy6OjcZaqqvSR+79Y=;
	h=To:Subject:From:Message-Id:Date; b=hA20BmDRLOqLCUNiNBQ5wOx89IMxvxcnwMw5kQdsBXNdfC1nZNSoZL6HTQJsPboduLy0iWBV1fU7/xL+Eo+Gfh6hbJgfrm0gqiLL3Axvsexu/5Coer7o9XAxfsLYZECvP3B04xvoaFZGKIPtDVkXsCe+I1h5b4C7q2Y9wEZEUw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzm5u6yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzm5u6yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8608C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719990922;
	bh=kYI5yIia1kib+0cM/gYu6Q9B3vPy6OjcZaqqvSR+79Y=;
	h=To:Subject:From:Date:From;
	b=Bzm5u6yODOZ/TcwfDJWrSsPeysE+WISp2H3N4FRlc2urJujVdlC7Qrg5SX7X/twmw
	 LrN1yrVO16KUlJPQz5bFJbNPPnaqK5RgoX7jvj+TJnuAO2qnZlhrDmda5JriwB3Ac6
	 KKKTN4fewRx0+5SwgHhlqKaJZBMKpTgjMnr0GCstdVXiFW9w8Ce4aUwmZVnaRNeWsl
	 QDIvPJFT8h0RmWqdkw86LKuhT+FjhYxCZhVJAXLNxwSj2tWBRJK0MjXT1jOH/T4AB9
	 AXsTGVUndFimk3QbD8flioTIqSwT1/drGP7+r/vlHiGqSeTlB6UL6PWtvNq7pI9xOm
	 qIWA5rQpGM1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6588C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999092280.11458.1877804791439362260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0147b3e811550e501b2099f99f129f934b9d85f808f8c451c37c20ec79790d
Date: Wed, 03 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719990922
