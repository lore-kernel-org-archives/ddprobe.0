Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268966FC5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785101434; cv=none; b=NrOcMXq+4a/zGpronkzUQS2C7oAkp6r/IGAQ/l/Yf/xlY2MMerf6O09ymobJLjCVxOrQirJeNnUX+5izJ0PTtxlvpsfsSrpn3WGmYneaizud/z3rrtw3eEkjh0OvUdeNTX1tzyqLNe1jk8c7/4tWUToag4Ua/9q6otEnVGHaYQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785101434; c=relaxed/simple;
	bh=SOsodxtv6jxEhLMKWrK8eam7xD9v8X/b6n2FozpK0AA=;
	h=To:Subject:From:Message-Id:Date; b=dl63bgY76c3EKtP+dy8oIxGS/U62JX0N7OZj5/uUS2wWZoVw3I3D5Bg8CjikKgRlFnBks9E6esd01E+iXcMpR95ZQPcMeRYT/fCYQDt/27tQLU/aVSIaOFmO5zo6f/KP/OC9pPbzWpW907k6odjt8gCv0LwI9loFHkAUl+aJThs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8pCxyJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8pCxyJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AD9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785101433;
	bh=SOsodxtv6jxEhLMKWrK8eam7xD9v8X/b6n2FozpK0AA=;
	h=To:Subject:From:Date:From;
	b=m8pCxyJLW8ljL+YpLgNpnN110Gj0+BCej70/y8JlaBy3WfLSfqBRXt74MeGsT7sS6
	 lx7+WeJ/JQtL8P2egXlupti4B95GfUsYBPObMLAGEfbQEze+SaQIumuB9ja5G8195O
	 7xN1n2xMshdi5ubOg6XXk7Fyz7iknLnSnZj7VD1QLbeMPWcHq8qTJF/zf13lYCCqrt
	 GSuiQQddvShF3vg0QaoRlqR/Pps/gL6GxL/Bv71wIsnFRKXF0k/R5chtJOW5qGEwnd
	 OGIOrfqEds1pTZnxkk6nGpfpUX7jTLeeTrt9G4MHOWBW/X+7e2FXgN1OgM9mZRF9vs
	 0kLyPw/ohU5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EA6C5321C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510143368.24093.5769512547050788678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b3288cff45d199beb0bf02b2a54dbfafe9b00bd0af10bb763db1612dd6d00
Date: Sun, 26 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785101433
