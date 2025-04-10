Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE7982C60
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744247394; cv=none; b=YZGc7Dq9RtsfSsOguTpyr3/BxSOp7N+yg/9XLRGTUyUgR3cLhN5+1fUYNxJkmJD+juco6TVXNunXF+W0KTcfDMVPi55qCangwdc6/PmQXbIXXwMqDnhU142lRUrACKST10eT/wVyIaVZY0qyYx6UiwefvBoQjl2DILfg37nHywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744247394; c=relaxed/simple;
	bh=JkrRK3JszrQ6f/g2xmqh5+fJxmySqplPhp0HSOq5YyE=;
	h=To:Subject:From:Message-Id:Date; b=FvE57r7RN3n8bmd4LURyc/WuHbivJN9U0HjqKim1Sxk1BRj9vak2x+/FcqwpVUZ9U1QNWfZUHNU2zDavxQlKSFsXGcslKeceHseGbNaSFFZfzsTxHOHamWCW88GTvAbalmaEDI/tqUsl+dBMexN6MUp4cfNLlmDqYdbDVYuqxoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoJ5T22X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoJ5T22X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B696EC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744247393;
	bh=JkrRK3JszrQ6f/g2xmqh5+fJxmySqplPhp0HSOq5YyE=;
	h=To:Subject:From:Date:From;
	b=eoJ5T22Xdda5ItcJ+YSQnZevpWAa8OaKZlWMiMbqnEPOthfn3MZTsQVJ5yvgevx8/
	 om8bbmI21eLLr4x1QW1DvEEa3i8sb5gNgJk50ra94jTQYNQWQCO0zapzoO4xhpd1bE
	 0b/e54zzGfosg0v70GFEWCpo9OG+klKVvO4YN4wyVqPRRJx2zKXfQP1XKg4mKscdUk
	 ijLfqsnoYh/pEXGD2G2/pzZ6vf696HwQux7xePl5iq1GFqCrtBd73UeMXqZ6A0RKXj
	 H7ZrExUzOfrtKRLNhbeAGqiWlSBNQUxB2NgLMFDYJR6etj4z+lLQfNVQ3Fk/Gj77J1
	 KeZoNX+SB1UrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF6EC369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424739362.16247.17553731804853708477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df1f70dc277f5cd6fb88d71421bbef8237590baae8dd5dacb43fd4b8726963b
Date: Thu, 10 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744247393
