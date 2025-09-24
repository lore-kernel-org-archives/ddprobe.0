Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991B3FC2
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758703794; cv=none; b=IkHaZXXyzxW/Hp0DA/iSsnuqIGiYL0jMwCp09dC9VWx4TkPF2Y/OM49Xh01yL/vCxOlLXH4QLcvYiTf4Gmm+unZwhbz/7kZR13svfYAVtubq0pCPo13I265ozQjo4pG9vD3jF2jipp5ycNwCkCnO8Q16PNsF3XaqltZ+ldAFFQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758703794; c=relaxed/simple;
	bh=wLHQ624fiBLCnR1PsIIGn/Du+/01L8X1JgLpEM8f9Ms=;
	h=To:Subject:From:Message-Id:Date; b=Sg2Htv5ISlZtAheJTjgR4gFRCZb4QpBZNtZcsRRSMNcD/uh64rERyDIml42496zhd1npkyCV2XH4DF8XUhOx7cK17bmSqqNqBurElUlwNiB27Jvpoj7VP2oRRjZcejvpfjCAcIQDNeL/9fSe920ttEtqxq3qpVFiVdXnyR/bgPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf9LnEkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf9LnEkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758703793;
	bh=wLHQ624fiBLCnR1PsIIGn/Du+/01L8X1JgLpEM8f9Ms=;
	h=To:Subject:From:Date:From;
	b=Cf9LnEkhxb9xB4GGL5aORmAb0J65N+4ZzRRaaIfVRhbLI4NvJktNZh1gq97xZCsbB
	 c8PLipZD8c8wRcaUvmrxY51aNPSmILoO0NRil1QMt+XuCexNjZG/whV1mJ2PNyIUEM
	 f2DN+CuC8fbJX81JEgTodl6dQlnIbeS+pDfV88QCQQEgiJD7KWpCE5Q1CJOpNPELTc
	 tRYgSiUFtqXMf1KLBVMcYo9LTHiVcl1xjZ6NqT0m4oVrY213YaBHDI0GnqGjMEYFCx
	 XtUSCwiAt1KGexnI03fa/ZuIsD2Oi/zPX8R3XIhEpZN3B/iFgl6/1DerOUL6RcbofL
	 jInopLBqPAE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ADCAC5A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870379358.9549.14312704117487588890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b452afccece57a3062e0404872049fd74532331681279bb3dc0e0e792daa1e0f
Date: Wed, 24 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758703793
