Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F08346A1E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774932894; cv=none; b=Y2s1JazMXdsCLwv9pveOVRgqJDGj8C4VwL8RJA0sAWs3Fc5rfCP2XIsLmY7j93uoap1s1dyPrm1dUr2vZxt6RNYQyvBvaGfly30kS2zPXDoVWu174VatKNlYN14uSlvidkd+uUS7un6O/O+q351//NdqLptOKLrFPD+Sj1RiqL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774932894; c=relaxed/simple;
	bh=JbWO8wWwx41bV8Uo4tdL8MknzsbPBpunMBPuxDoWUsg=;
	h=To:Subject:From:Message-Id:Date; b=TlsBRssOB96CNS3PCvZmvu15zzr7+GtcjUQvFApwokQtz/knqvDh9qxSp0794uRm323QqqDqpUp05y/yc2Q14yEXrNoBuwDRdMpB/L5bX3lLsMsmEMwumN0nCXiczrBiIL0kD1k/vgTsjv5x7eq8DVaxGCKI0w9gUmyYbnrfzEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trxq4SyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trxq4SyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C02C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774932893;
	bh=JbWO8wWwx41bV8Uo4tdL8MknzsbPBpunMBPuxDoWUsg=;
	h=To:Subject:From:Date:From;
	b=trxq4SyU7Zd3O4r2JRuwU2P/gH4vLwd5g15+2V3QQmmG1K8ABW2tjvuC9J6SYJl7X
	 3WJgF/sPlU++HLmM5EjWONaOcB5chwKy27rJvhy6Qbp1xPKa8PO8OsjNe2E2GdUTdd
	 zWUaEp8T/0MmYBGMngWum2+OG+QFhUfZrkAn3NHQVV+jI8gtASvCuxEx2glH7R+fUD
	 6aUjCRb0HzDvnVXU6CpdpxkOONo2TYLkjFX7JlBvQqHaVyr0BYgYUoYGGpQ6CTwvB9
	 h4gbHKefcW+BaN0V1HeqIQjcxiBt7w400td/s+qSXlJePT9+/symq29yRRo/fL5mVV
	 dRkeyYhAjFeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93211FF60C2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493289359.27165.2903703616736041929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d4e983d75e6fa508c2e58161ad65faea2f7f3dd80dc7aefca1488c72f13792
Date: Tue, 31 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774932893
