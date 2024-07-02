Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454641C3D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719897323; cv=none; b=eIFodpf+M7LbiCS5hmHU251rYkIgbLXDdMzpczrqZ8HxxJV5h4Drq5oJFoVnFaPCGj2WnYsskJkjY0Jp37C42cyOTawddDB9DcXJiyiuwNvUGr3HY9+QM8A5+si/HS1a/geVWW4uHpj7W80eLxg4jplVe8AL5/T56YRe7xMVEyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719897323; c=relaxed/simple;
	bh=ow5xkAkTqPg9PP1o3IS6ONFCkQap/FErWGqOKB1TMCA=;
	h=To:Subject:From:Message-Id:Date; b=UEQphUYhDM9+eI8yRy9a+EevNlaVru6hanxY7PfZl+6FuymCZaaNRVaZwq9xz56ZakCn2jKhLz2/ZzO/JDUKTGMn2QeAjtZ+qcgt9UQplmGR2pecN4qLT/qJy0/T03hZfZGWcVeottkOZBmMCbdSPw0M0lC8LGZlOXfT6OoEaic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buUi9edL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buUi9edL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59C6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719897322;
	bh=ow5xkAkTqPg9PP1o3IS6ONFCkQap/FErWGqOKB1TMCA=;
	h=To:Subject:From:Date:From;
	b=buUi9edLcT9n1GeYYAA0xlD4zTs9BiNLyyVxctzecnvzvutrg6SE9dh3c0yUxFWSg
	 VV/XG3vrhJdGscftT+nQgvg4A3oJX7smBkiOzFKNGRA1PQMhxZOuw/rXn7cbN5yl0C
	 2T9RtvaaSB2t1cRhoHSR+0buyFxkjAIu8aPJKqitCzQy9pLgTJVrFYq5eUX9izwLZE
	 cYuYkVSbvck8xdb13lhN/Oh4prP1YxNTQQJZx7qqiEEDo3ynTMhmO1EViXkBHnxnsz
	 1Jl9VSMgdiwfzThEEKPkF2WpoJo9vyAZuEhV5skY/+oXIlNafmqLGafdj0ZufG0VMZ
	 3tjH/jqocBsuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00E6C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989732277.19692.15699531500603722615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e430db14113f11c993f2b18b634628c13ff240c4c329c2559e743217b2aa144
Date: Tue, 02 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719897322
