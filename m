Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BD630DEDD
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772531694; cv=none; b=WiQ8nMKykwpUnxAIESCbOxj0ehwBgB3pjdd2TD9PBMKUm584dJvT6ozxrPJy+E0xJHA8YbPFOK4zgXV6OWJ3zNa3b7PUmKe7U6SgHUugRYoMJLFUKa+bDxn5PexAo5Nsi6tkhWr594B5dAEuPLriFX609JaylW8lPw/t+EAPKE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772531694; c=relaxed/simple;
	bh=iebO0eEUeIlYE7r6t2aY+xnrsdlTjUyyw4KZZI9omEw=;
	h=To:Subject:From:Message-Id:Date; b=WdRDtuV+IPAATlJNrz6Hnf+vlEEj7f6lXIsIM3EM4U1tfkZOKvKYg1t6UxVljaxEntUPZjGz+R69q9QaAr/2t2lir1fxVwEGeDZ4XxXfDlXMXrL2QC0DVChceih1mg+fibtkPhEJnOvLj1qAB+b2RkEPg4vmsavGwdqvqvzsZJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uC3XdEe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC3XdEe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAECCC2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772531693;
	bh=iebO0eEUeIlYE7r6t2aY+xnrsdlTjUyyw4KZZI9omEw=;
	h=To:Subject:From:Date:From;
	b=uC3XdEe4RREeVitstsmL1i9dSRezuxsozH9QtHs7utehnn/3M1LoJ6WZZKVAYkrj+
	 rjQDCgDnfwLdU3jKmEZRdMxKV525F5wkyt2pWJVKoKelIehKd/PgiikKTDUJe7Q3Xr
	 +P9RgecWzZ159zB557iMfc8rnXI/8DFvdfkxRG75mGLBublJy/mTXo8Pi93ZqvotiV
	 D6H01jQxOyh4plrSbWVf84V+CRgrnGq66mOa/gZkRpFHiqfPqwRVgiHHfH3lQOCdoL
	 r0msilklFGcVZSGHE5ymDFYAP41g4/oeIWjRdRbUqa8dAwEIEJxaB4n5y7hAmtzbV/
	 JM2SxrNKrTrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C85EC047E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253169360.1913.8830158707733996340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c41adaa9f7be0e2a83f3b2f7c071add0f79e6331699fd91c8a9211092a13c01
Date: Tue, 03 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772531693
