Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4012F33EB17
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775244334; cv=none; b=dxIflroFfXSOFGBwToRjExG843yJqftXhoRDYG4SLMuO5ytaqVAuMcIPxiMMfY040Vf0DFXbjZa3lSeZJ8M3er9kGvDP/2NMJxVU6A2ASd59g6lHH7ch2pyQO30N0lKX6Zzgh6UPa2NoJUZN2vLvQc0hLCBkGJc0p7AmNR96DoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775244334; c=relaxed/simple;
	bh=Rg/rho4QB6bx7iS+tDlC8+UexAziDRQ2XbUXU34CZRU=;
	h=To:Subject:From:Message-Id:Date; b=DqfJ0kMd94ol54trPjupac5okrDRWyWxkolCZlRfiyAULrmAgc8ejJGO3WMKSkldVYF6vAGfen6rmp20pRSqxbNVp5ixklbof9mAjTjFM6+bhT4T4NVAvxD1T9X2ciK5/uT0nkWwlMZ1guHzK1Be5cY9Ba/OE7dMvx6zYnEMjEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8K5DueP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8K5DueP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A22C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775244333;
	bh=Rg/rho4QB6bx7iS+tDlC8+UexAziDRQ2XbUXU34CZRU=;
	h=To:Subject:From:Date:From;
	b=D8K5DuePK5gSdtEgI4L/J48q5JpMMa5KO2i67zJf9mT+IBf3VOouBh3H38osm50TH
	 Kkg0whH5fSW+hDFfyfL1xwgpqsWgj9vbf71rMSDXD0ixbXEkcSQ/Ka4fUUHkEuMhW3
	 63elfuh3EaFV+WGEz64kjGveCQoThQsH01p5L+BaOeYxvO78X8XMaUanhZz/TFgKD3
	 neXeIX2ycSi6ymxWrU8fO462ULgK9d0OvAyf9pgMSQXrCTxArguv2oEBMXWk2hD4xF
	 nF2L6psAYckbuhdajeRK9vgc7xLcOxzf+pWOU2bbhH4gg1CgZBtS/WpUTpxeD4k/BH
	 lAO+Qmz0ByuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1815E85389
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524433368.657.11702023469881472119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98dc70b50b6f44d6563e2de29f3456fcd1055a6a4de917b31f4fe3d68e05e49
Date: Fri, 03 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775244333
