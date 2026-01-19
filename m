Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CF617AE11
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768787634; cv=none; b=GHvXCcf7IAwWiMWmQgjwdJE5PuYCrXifDd5A+KAZBtFedrWc36xtqtHPSi4MQiEeyhACjdO+ZClAVpI2QgXbSwyRj3oRAm6R60mIse0BDmcwPSG8zma4rBLN2NhI1dLnJuKjdRnnJaln8AIQz36qw9dvBaXUqBTJIsrNiCXjUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768787634; c=relaxed/simple;
	bh=+yizQPvZheo7wj1hZbJ3cJ0y2QbSUqx0INWyc0QqVZQ=;
	h=To:Subject:From:Message-Id:Date; b=gHOB6/S7d8N+88LGiHVkN0auh8HBeeN2OA26p+Yd4RHM4A1YZXS5dtgnZ71EZdgZuVp22ryejY9T1q2+YDlwMY2kuu19olxCfORwNgqLBGocAqkuWN29LFmuy9LKPIY5Yh0rh8CbpoKBPtWeTIf7xr2E4FqGsELGwgr5dndxkbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzKiTXlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzKiTXlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768787633;
	bh=+yizQPvZheo7wj1hZbJ3cJ0y2QbSUqx0INWyc0QqVZQ=;
	h=To:Subject:From:Date:From;
	b=KzKiTXlU9f0QzXsgixFm3pjk319fOAXR5OvmJbeoBHy87cKK+HnYNgSIAx8irwpj3
	 fOY0Ozl8TaRwxOEdKw6NxixvbpbM8USAgOw0ewO8v40BUrMZxPO2zCcNffEA+vWxxW
	 X1e+FIpwBnF3SxNSMuxET5exnXaoWx4jRo01vpqsiwcugelmSxXQ1KEQfz8cDO38eT
	 G/0SuYoL9epjMij7G1p5TMKH5V7mMSVV7kLFvuHYHiiWtGcKuUe/tmFSoVPz81Efs5
	 Fzb0N6j414HEUA1udj+v74e6/qcA4N8LfnwQxpLbI8cPlVOZdzbqEC0IINVWXU5Z19
	 O8tKcyaQ6qMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9514FC9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878763357.6178.1342319989146115762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d06a78828e756ed8a9c0b1578434ec4a46d9bbce4d7f6601d0d83f2c2dae0e
Date: Mon, 19 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768787633
