Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E2030D407
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787497834; cv=none; b=D9h6ThdMZPeAfRhxv2TGTDpDIzFvZRD82tFpGMfgflDAXxbxOVG+gvJIiipyL7LjpbVC8dnSICAiTf8YmSQHNQEeZHcjvJ9tKLEIDbqlidI8dxSS/ANcCPC4V5l/M3UH5N0vRnXN7czV0B2rAXPYlXCSwVoiDaynmpfrQ8LUx9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787497834; c=relaxed/simple;
	bh=fD10ZSwm3R1fPxwJikvcghbKggLyriYZJhy6ffAJbzA=;
	h=To:Subject:From:Message-Id:Date; b=N+OqsMiyrUscr7jI4dPwkrYeiupiAy131bCaB62oJfHp+rnWIyewdAsg+EoRCRJjJdyLTJPqAXTlK2QNedr+csblODyUBcRqGA/hb4H4nsVZsJ17SRLaFISbcJxCQRvkUEXc3KOVm4dKg6EHfY9BTxbQWiPvgvwLJeF4b9pfz+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDlk2qOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDlk2qOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787497833;
	bh=fD10ZSwm3R1fPxwJikvcghbKggLyriYZJhy6ffAJbzA=;
	h=To:Subject:From:Date:From;
	b=pDlk2qOjwChOUjrn+lSaOOpQQZmlEJCxb3Ls7uVIg1spjrvzUWhZwv2W25U26ZxM1
	 UWcbOfChKTFIJfSxXuPZfZzDv8v1ZU38ARfJOvrNQYhmlOwJxYfAdcjb9Y+OsP+jyy
	 5ACYEq1FHPu5zJHoHGi/aMNlr55atiu4JFzli4kZjGddwabvVwKT1GtNaSOIe1wY4G
	 Pwm1rVdfLjXHFCxhj9VTu41pv0smRYdlRyy1bS2J+SX4R4tE0sy+F5xKX1fDwfLf2m
	 EXAQonMS49tDAc5Ptx0gIQ6+9KtksDkqYuVfToTzwv6DXo9lDQxa+ZOd+EPILu7uYz
	 WI5CzLpSbPDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC676C5DF9A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749783369.21344.10099517234055092275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1048ac7372bf5d36d2bab2f3263bd2238f4ac7551506fa9f7999dc95754c221
Date: Sun, 23 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787497833
