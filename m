Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B8C16DC3D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719852923; cv=none; b=FfLDO2XIRErRAaeRnQyDVCVWq5bqDLxcOjWbzk1YCfc176gkgCG0wGV0e0GHH3gGbbFS5NWh78K8B5dITTNsDQfqZDuEQQRa19D59eJ7J4/oQ2dnICpXLWDAugM1VJVImdFkNfsZX5eX3sMqJO+/mMFNWNZRfBjwjaHWMeXPx8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719852923; c=relaxed/simple;
	bh=tcECiOUj+hDdha+Zgf19SV89JORthTw/PuKOd0i/erc=;
	h=To:Subject:From:Message-Id:Date; b=qujuwqczvYlubTOa4xCbr1qywcjFa0hPHKVKACYrwY7Y/zum7VyR9N9eHo4QQHJ37IMoWtmQaNp91fkQmbK5WDvuNoj5f59c5Z51GbK5Nhc8FMiNQOdowN+gm4sP82V7PCZV7WWxiQMMyV/8bZq36eNTobUO0PIW2vgLfbSSeMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oE1+wnrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oE1+wnrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DD9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719852922;
	bh=tcECiOUj+hDdha+Zgf19SV89JORthTw/PuKOd0i/erc=;
	h=To:Subject:From:Date:From;
	b=oE1+wnrnStnLkweLE1aBOeU5pitH4vNlO60SmzbbYXXnfu7i0epMuyl1hy7zCzCa3
	 Dsdy98bre9d64x0YqPDqc3ekL0tCA8QQQXPFVVOmLwYKCV8up1PvXL4NM6Hd0Vqwf9
	 wzUnHVFT52buLq6iLCaDsIP3aihrQi9WjXCFrmexdsiDK8k95FQmdSznc1zzbIi5At
	 6I+WVjDWZPSZ6uyII3K/NtgFBDzs/9SRSB32ynHvEQYq0Qamm+3NqYWToK0yk00Iof
	 Aog4L0ogzPMZcvu9RHtibFeZS/gFoth+tyEtOKIVL/2i3Jom0gkuEKnbsMfOhQLw69
	 nPkAQoMZjToRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52CBC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985292285.26997.1624712662026476283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1451ef6bfc6d4d7c702e138c2d31268fe89ef4e1f16ceeb80f71dfab417f6ba4
Date: Mon, 01 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719852922
