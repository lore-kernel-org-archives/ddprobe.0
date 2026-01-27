Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21051224B1E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769541834; cv=none; b=YHsEKhd4hv32qqUzxDxv+tVlSWGC9Cdj/mMQi0hncCHrP/fhE4lualbvYFU7aRTuZmDsBbgT5Y2X+OSW70Y6UQfXAS4KsGcq1+55ln3y8yBu8AwchVB3GzV4SqM9FZWBnbdjR7UplBE62XX+6jQgNd64OQujx6186tbk+XYpoqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769541834; c=relaxed/simple;
	bh=Akn3wfCk46xKRkDiuEat+D311FkHGwKTR/2anyA6xJw=;
	h=To:Subject:From:Message-Id:Date; b=BLisVfyow1DXgqwQIafE0eDg9oc4iZ02vedcXHCvf9qbjqVxMju7twZsGBzd35vw5XVmYEYGuzq5bt9EIEm7afMe16zG+o1IYjHOGtqMo+7EpO2yGT29ypHVDbEtfFp7iISU32ed4jSG6VXhFfIl3TGRATS7ywm5r7Qq12GlcWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk4y7Upc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk4y7Upc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C07C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769541833;
	bh=Akn3wfCk46xKRkDiuEat+D311FkHGwKTR/2anyA6xJw=;
	h=To:Subject:From:Date:From;
	b=rk4y7UpcwWoxUHbsmoyjgAg1s73HWqopyf3bGFssiww1rLR6re0z1N5VD/2Q6/YQI
	 TVQ2bAR9h427RVYajnW9SlaWzfJ74/nE7TpncvofuwcfIIkZ5RriMthbjcx7iaM3tT
	 pIQzL5iTxokO2sULsMALoxye5Eynz5yqUamp4u0gywSDCQHo8REbETYjEwVh9bAMGW
	 YArvsNedWiEuuwJncCqu1o/rAZJBDsrF7hoP/PO5T/Hm/IQiuePLkvzfqo5Rm5zR7Y
	 shdg/wrLqqI4P9wRsw4Gly9JPUBOKmyk+24mlcjZG3lcfbnJ3ixOIwIy/GTUFGpgab
	 66dueejgr5JGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91408D2FEDB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954183358.9705.12490436502645334324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4993035e93ae48fec4f956565224fe938131b218821c862b845ae18e924f79
Date: Tue, 27 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769541833
