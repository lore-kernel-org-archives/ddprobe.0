Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F3C37C930
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790464834; cv=none; b=mNnFe2X2iOvpkSPqWtSx1CmWMVA7NPJLjMVkOU5b047DNpC3Ho9by+L64yEifaX+c7Sa5JcJNfCn+GLisg0EQeCOtRQDiQ3mEiwLGOwaICg4ENLF74LhfXGVRsQjXCT0wvk+s28kJFyTng/i+34dphkj5tbhqHjgyLmCOp0JXw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790464834; c=relaxed/simple;
	bh=RXePQEmNRw5ZQwxnWZLyxRwxveFJ+3zxwnxFQekZ2WE=;
	h=To:Subject:From:Message-Id:Date; b=f49TTCdGZBtH2DOS0FPgel3wjrD9IO1XwE0W3X03IdU8+aY2y+ES+Ul4+bnCxUj7qB5PsH71vmjRtQFKep5768j2F6QwrQaXgAxalkEoZyCX0mhCQFCa0sCyH9c7IjC52Y4nVMQfrWBqzaMJ+Unfcblb/MncBMoyjZY3c1zlJVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buH//LR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buH//LR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC795C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790464833;
	bh=RXePQEmNRw5ZQwxnWZLyxRwxveFJ+3zxwnxFQekZ2WE=;
	h=To:Subject:From:Date:From;
	b=buH//LR7V4rUJ13Ga0WumocFouwbtLgRQZO3PuGljtN5s03CZs3WSzpkgZBr0B3ra
	 jOTROCZrQ+MPo8aWoKakis7tO4kY/4pV4m9IRV87VkQi0JouPs9X5uysvaWrqbKpvr
	 I/A/23QOQy6DIgvydnMwoQHO8xWGmDu4T+7uoW6SPT9QvPlXL4eiN9h1czvqPVTUkU
	 B0sX1VFJmH7f165/ecMK9yiuAfIB3n7srlPJLBlbelNmRqgkMkd17HNWW12nWDDniY
	 3vDTKgr6W9Tnoh9+cINyETT9He9pGXwi5q21DCfz4EKIDeT3in+lBTUKHmfVC94xbv
	 uqdpxUDhIATSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF29C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046483369.6582.8920807053491495136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25d3bf70f19f1f4d22e8406cbc3c6f4fb032c58660640720942b904003a52c7
Date: Sat, 26 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790464833
