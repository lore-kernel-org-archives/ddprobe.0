Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BAD31E82D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773297894; cv=none; b=pqtrDNiRDThJ8qmvokooKYs1yM3343egqoH5Ec5vnFz1fsI+E3Y9ftlf1BmN7r0J7/NaDvvsRJI3MLsRgY3qgswYmvGlSTD3gmdAY2bNH4o8ivkXmilhzOtgymfvQVhjunheaiuOWfoat0/3VC7H3x69APU2ER5YIz2t7x6QZiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773297894; c=relaxed/simple;
	bh=w4yQpsgLYyIgf73PJOZ8oirxjHXfit/iHi+0R4pewbg=;
	h=To:Subject:From:Message-Id:Date; b=nnu7mju5rdo5eoR0nETqHiiU9KmbI3wNJWGTO6VZwJB1DFl95J6zsZeGW4p1wFYq/pfR2ierPDA1vAi3VVk+1hQGJg1fCbbHC3cAi70Iom29HKw4kSIbwI9vhoW43VOS82wTFBulZX5b3SliNQ7kuvFR5bdYadR2DeSv8270hpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s06nlzub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s06nlzub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC242C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773297893;
	bh=w4yQpsgLYyIgf73PJOZ8oirxjHXfit/iHi+0R4pewbg=;
	h=To:Subject:From:Date:From;
	b=s06nlzubUdLsC+w6jPK4FJJT1QOVoIAdlBCqmJOzFGJLK/hTUuJGmPTohMLjkGJK3
	 NH+/j+dmSgrJ1DuCfn8mlWgx8Qu/k8tYhuMwOBKN6Jb426b1GTbRNqN6F0qISp97nd
	 pbzW+L518OOvucR1X6AtOz+a3uPFBYIpSnFwyf/H4BYu1hLcyiy8csq+ufYybZ80zW
	 vNYj7rgrpDQMjCrvJsIobc7CTCRHMLPGJ/I2MfAp785ZsdC2qZ8n1AY5X83mdAQQjo
	 lXiamFJPnWiDtxiZLogSS0MAiF3VpGMqgQ+AJGyaZRCcMXi2olYBlQ9bqcpxdPWMNK
	 XGCpYSEDROCxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97802FED2D9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329789360.1081.15420228381778395736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cafbfc50fc2b32809edfa79d6474a374f01c0c6b938b8b36d8c3c94c5aa648
Date: Thu, 12 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773297893
