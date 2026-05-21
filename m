Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3175E2F872
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779322234; cv=none; b=c5XPWuk4NuQ1T2j3PniiaDpgD0UxuR2uKwu925gmJycOYX08Ys6iNkqqAwuOlzY419fPvx3tH0dqMV+y44G1Lw8/PnODhfZXKaiO/HSLwFdmd0bQ3dcjeqBCb2jCTDDdHfsPVkHRG8ad/G6E/xzga1uI2LpVDqUHtacJVlg7Qrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779322234; c=relaxed/simple;
	bh=BiqwSRGBOySJTDv4KuHsCiL9jShiA2Q0EsqYbIwWAU8=;
	h=To:Subject:From:Message-Id:Date; b=puUxBUcCvzeUnTQNCOonXfhqlJjpI9eMab6ygj0DaM691bGpIl0dh5D2sUx0B9ANOMycsYS0kNDrRMJ7LtISVaXKDbPyva+AC9ubjZm48qmI1z6s1a61CfarVT6RUNB/nez7prYfxiWriLd3XB2B97Yqod3sJstANuJsnHGjiqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1DwF2Fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1DwF2Fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF45FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779322233;
	bh=BiqwSRGBOySJTDv4KuHsCiL9jShiA2Q0EsqYbIwWAU8=;
	h=To:Subject:From:Date:From;
	b=N1DwF2FujHhCZreMmZZaJiQaowkfAyyPWPAh3fDbzHQuqvlG7rrUOQVTmzAL3UpPs
	 4FzJbx+3gcifVSubGqEIG85BnFBf5E0CbwjE1zpj2PO05+XBnyBrCv4gRI8F2MYZaV
	 6tN2clE2nHqgTiVTTidg4o8yscRGE60Aig8Y6iOkbeIhtpyT3cy427wMNUJEJHK1dw
	 DNDhKzF4i/P6fgFClWeWYNdWdf20GpED9HF9iohc/pSSzHcAC5P3A1l4aO0ERI18x1
	 7RENC55LtqQRh/Lw0FrG+jKk/HmQHhWRjm55YWbKxh+nN3/oj8nUc0nIHLnjiJS4Yv
	 JzgIKZ4UQYcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B382FCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932223369.4770.6124920466907295065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48aa72d88531fc09e6e24492e6193b86ca43d3b1364b48c412df10991f49c7e
Date: Thu, 21 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779322233
