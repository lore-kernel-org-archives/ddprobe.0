Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAF6176FB1
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777810654; cv=none; b=k5wHBwheJt/+/T4NFJUlv+pg9CMg18qI2p/422SeeCmQ/Wtj1inzdFkJRNftWLbN7AMw6IVFLpCWoqpetGzasxyhd3vM4s9G0pENyqwlAX0YWo2/oxijBhLLY//qnIACzFRo8CW5Ga2lCuYFqoyNPanrFg3ivD5d4s0t7G/e9EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777810654; c=relaxed/simple;
	bh=4hVvgxDj/45eVsO3H58sunOTHEnO57nvwQfqNFpE6jY=;
	h=To:Subject:From:Message-Id:Date; b=QIMf54xx1TRkVo5Q5BNfrRgW1DMyIny7BJnu9Mb1aZipN68x+cKuxRu/YSFYugE77OIEZm0Bw33f9kt+DDL8ZY+g9JQfaDD+ctj4SvmuVx46zMOeGycRxsocSOtZhDDlTEWqSgrKSVHjshw+UeW59dbxuupkUNFeE9VbK8efdns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCRqyiPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCRqyiPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFCAC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777810653;
	bh=4hVvgxDj/45eVsO3H58sunOTHEnO57nvwQfqNFpE6jY=;
	h=To:Subject:From:Date:From;
	b=cCRqyiPAMJP9/TBhQh1DK8WFaSDRb0hDHOtn/JWGMaLUvkiRiVJFSJYMIywlJlNSA
	 eah0Mc3+F9jHqOU4ZtRlvfi+432RPJpzHkt4beX2RUtdtTDUnxkQjv90Fa7250cgFc
	 TwJ+peZpQmXbMTGz1d21flsy6XfeGjfOD6uL1lzTELmeE/WS5MMJPKs7H7G4l0aLua
	 LiiuSo6/KCzc32G3z59XRt1grzbzNVEKCncUqGohAwyi9VUVRxclFsu3kGu6MvJ5vx
	 R9PTpXbWPiLceX7rTnKEyIMO7JgzNJbZNt/WMuvjjgCFq0ZUuP3D005uOHr3Bd5xWA
	 gEPzqM1PK/MPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7ECCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781065368.12562.4538227829052966875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a5a0d1ff245dcd472d3f6da8e759e48a44ae1d9c8c8b1c476cc1dd65f63d25
Date: Sun, 03 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777810653
