Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4916D15D5B6
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757227194; cv=none; b=NlyHNDmU0cCWTSVIdOZ7QU2JbNPZlO5/4qCKbyg3PQmRqyrRi4DYIJbRQb88hBNxwSArcPMNO7dVTRN3lXFQcmVfJzZn23OXDW884YI6LiCvBEtyGO5XOSSX/4e7sGS39hSwcFbuwY1kJ2pi/AaId5TWMIxNV4k3U25rDrVeHYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757227194; c=relaxed/simple;
	bh=JMXwtwkdvfAU7OW7mvHJfJQNMhHQsbJhEgJxeyVOkuY=;
	h=To:Subject:From:Message-Id:Date; b=Y0SM4OcsA/6JuBZ/QKpfEti4ksd4icGO03YeUuEYGklo6oV7U16kjiXbxMsZBS0eqT+8Lh95S26JPLVdVNymhyX028gGf8v055abzVH+Z08q5xsvk/yzeKmJp8HvF7BqrrkVsyMsMN2CnRwRUNoxaIQUfQ3/U3GSuEDC8dzyAy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPby7gjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPby7gjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9AAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757227193;
	bh=JMXwtwkdvfAU7OW7mvHJfJQNMhHQsbJhEgJxeyVOkuY=;
	h=To:Subject:From:Date:From;
	b=HPby7gjO8tz+puhpX5/7A4vxihzxfJ1pbsWAtgYwEXlqvF2XRR+woE/rIL53CQWvQ
	 0+wxIXgFh8OYsrlmZVt4N/gJxsPN3qhUKFD494pq/Gpn6W7+R7X2UwG2z184Tz240K
	 QJNzfqZDd1ln3RnkHdGCS/nTeG0NXqjR961FDUJXTXdB9Y8jLwwbZc86QNUTHUjjX/
	 lChcFGppTIFW5Ce/3c9cewSLoY5638mvURpoJrwKJGUDJN8j9LsJxfBznlCLHPGPhk
	 11xOH/fwXtkLgns5BUKAVrR6JnLswW28NSiYh2fm5flUBDERqiZUSuo2i9wzwR/wUf
	 6O6C1S6/pZjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8FCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722719357.22949.6359795162490413081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b05f3681762b263e02aa26ddcc720402b1490dc0bddbdac96387f1d80cf0b45
Date: Sun, 07 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757227193
