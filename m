Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D1D3921DD
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779224434; cv=none; b=sGxUfda7B1nRSwPD/mUnZo/IeLywUA7AmphZ/Krn75BjZF9IKPXzn8fbSGQON42MlCeAKR3C6IzSFUnSeSxiWA+Upzzz+ZnV5WSXRBjXUjYzw9XotFY5WNChWyQAqteryPTm4DEu2cGS0J7jh2T/Ld1XYS5TvWOsz+vuA7I/WG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779224434; c=relaxed/simple;
	bh=Qw2tsNX8FclTizHMzRMVZbr4K3z488BCcH6hAZobOlY=;
	h=To:Subject:From:Message-Id:Date; b=rLTmZaA3LuIHHZ5jM74U++ooF9voWRbBISf+ql1ODu/IeicP5szCymXAOHELXEX5iiJzjMmgk63iEB1IS+5J45rm1wNhpLXei63kbuXY7MjaN7S+Ui8VqyRm92SCSfOhQLagF/NzgG1KUjNUF0kuMaeaPtf305XvELBeKyecOWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTII7T5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTII7T5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779224433;
	bh=Qw2tsNX8FclTizHMzRMVZbr4K3z488BCcH6hAZobOlY=;
	h=To:Subject:From:Date:From;
	b=fTII7T5SRGiTxICiyGgCBUgPpX4LrchcbpC4j3nC+307h/deiM6u6BLMt/9JfmP7I
	 x02JawOeOmMdp/3vY7I4R0IktpmDzBTD7A/YRmy2z2o7R9zYpJT7PVNzTaePJkPFpt
	 DQNwconQBEaF0B+nOgdlwUSYT8Nv0sia0h+IRCVUWKM4FvhUdjO1Ta2qcxT4ornxlJ
	 syBZksonInujiIxfCmwA6fmYpIl+Z415rzi7RC7JUy/4tGhfUe7WWwAohrm9bLWR0K
	 t1ln/Wf7wuiZxis2XSkAAXdbBUWFXRZ1rWd5RiXJ84Owiqv4e0xklELLQYDzXS++VL
	 au6qB23gJ3bMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC875CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922443369.16985.1892508547149644289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b414f64624449df91c14a6715c79a3ebad5daa6d745c365a1a983e1026e2b8
Date: Tue, 19 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779224433
