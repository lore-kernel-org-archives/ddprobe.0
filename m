Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D7318B92
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770637434; cv=none; b=fDDV6bE8rm3njPN3kM8+RzRVzdwK/X7RnxmxO/xWOuuAMdRhFbhVdC57PSqGgdGUORkiUkvOFZOmBTk0xl1rCAPhZa9s5mT52Wz0dDGoJx2hPGEKxNAZfdrW+Y2VFXeKZuYfrN6Ga/AhSI9iq+1IdJRazZuoddgNmSbv2I7J1ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770637434; c=relaxed/simple;
	bh=gAprx6GTFq/uPCewl3KrVOIfyT7oWklPTYbrLwadv+4=;
	h=To:Subject:From:Message-Id:Date; b=SPJzkdGY4UI6vfBz8+75jpTtEe/7uhlrYR5fVBaR4CBiHy2kvVnuOzYU9nana2R2AB+3yY5X+ppCb8GWmNmWQ480ALN8IjBZfLSmOoQ6sa9JrgvaPF1UPAdV+rZfodZFkpKhfKzduQ+T7lTeW8CNjZQX+cYbTuaK4ByU/LuS1sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeK96Myn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeK96Myn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE80C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770637433;
	bh=gAprx6GTFq/uPCewl3KrVOIfyT7oWklPTYbrLwadv+4=;
	h=To:Subject:From:Date:From;
	b=GeK96Myn/MDyd2s6wDQ2DSi/vLX2kFtzJbQVsbw3OzkQg4ge+5ycAHk4l4RffoPIl
	 NzudqZmEtYqnnfN8RWqkM5wiSbHZtJI0Qk8ZUSekgd2rRRJv4CYYIYzhxtmxh/i3a7
	 W8P9GgtXOxo6Y4O0SLMDY1reB24D75K9BI3zhLZlX8dXSFefuUloq7C+czR8TnRkUU
	 EE3FQNrkT3DIQOm/gmJJWqSi0b8njaLx9OltYZ0W+TFwE5+yohNiBnS2dAWjMgUyKZ
	 MgYhX/p5vt5DJReOf4PFiGJ8S6nFpxg/VhnWD0Xcs8yR2WM5RjJ3wbTCLdrwcbRuOh
	 nHpi8taSbq0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B63DE81BA4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063743362.446.9906715803702605060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7fa6fe83de62dfa9a334e8756fbb65ff156ba479a5639cc7f6e207357afe64
Date: Mon, 09 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770637433
