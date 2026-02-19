Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2066C28469B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771493094; cv=none; b=d992tJCuzyxMUGcfvWheRolguNTei40i9cRScEJ/VnddToQYtG7gZmjRML0o+xEbTyJ3ZCPb3eNnvZx63k09q6NVhlnjuLhVEaCGcvYaDjiYS7pAyVOKtAbpKybUwls2rVAhzwjset48utzs768pwV8YdaFrUfPkmuK7cbPduIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771493094; c=relaxed/simple;
	bh=LSea4uYhvutMGQKsNgKTER721NAbP9fuNa+IrdzvFm4=;
	h=To:Subject:From:Message-Id:Date; b=UqUxYlwLCGdojUI5GjRTmgL05OzV1exI+OWDPsTkvZJWklvbnrLDzLm8H/pOAvJCnTZi35JlL6iDGwjerlOCC7cB03NAnjBQsla8rVOzn79sDJ5wiEwP5WDcdnmNLRPtqzpUsAXhbQM3WjEGUNLUit4b1MlHn0OVKFegd/GsqsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH4TOZ8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH4TOZ8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67EFC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771493093;
	bh=LSea4uYhvutMGQKsNgKTER721NAbP9fuNa+IrdzvFm4=;
	h=To:Subject:From:Date:From;
	b=tH4TOZ8gwvP1ZsgOfSmf1ZdhTlg8jIQ0ilfpw+hcfU34v2suPQUfiYCZC+CAckOhX
	 V+YbB40rMgSmFA99EOJbwWwsin7yufx5VwQuzRoHdZdH9fR/KXZ5h09JeQUIQnaJPm
	 yWgpNE0TPqWjYPnQyfYSanaG3Mtr3LtjfaYoHlu9Y+Hwm9YIdirBVaBZiL1ypTDTMT
	 /vzvRvzOwh5rA0RgnNLM6Cqz1AQRYoVKFGOeV0NmrMAiaarTmgPGaPwpbhTYtl7M1Z
	 LFEZfprKRpaxg2HltLyjiGDyvmQpiEw/fEdkQ9YDuuh7E+Qi5nO3sR7wlJATV/T0KG
	 N0ijqI4XwA0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C56DE9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149309362.25402.671871201720409031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933c4f7f87fa87391df76642ba8099f848440b0cb5ac3e12e6551d099a341a52
Date: Thu, 19 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771493093
