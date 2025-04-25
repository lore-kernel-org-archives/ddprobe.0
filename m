Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41E1C1F05
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603394; cv=none; b=YCdD3+cNAWP+ERaPpLjZKfnkCnISE64Hyd+8cq1AtRmvL8hGLzbWvokFJ+mdLyBGy/Wnns9Hl93+4X9DhEBEpdhMjgGFPyKhCtOzNCPgqE1Bmwnw2yXdp//oBNW4BmL3w2BlHNmRsKBRc5fLg0sKEPUcgW0fKj/W6hMSFbdagYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603394; c=relaxed/simple;
	bh=odLBjVSJXV8feQuOw0sp/cEMqENDVuDhFH5yu1Rc1HE=;
	h=To:Subject:From:Message-Id:Date; b=mMFPS5d2BM2p0P55MtNRKN14mD+TUFtJMGjT6eC4eYsruNuuJfzzpm8clF6T6fgBqi6Ud8cveTZya7YBowQGmn3Mzuuukq6jjjk2pRe2kkCBKxftw/Ikmy7T40FRX8Gl2btnua5d8I0wQ4Lyqg+9lB9qzI7QTgr17AT898OuREg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uClWZmLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uClWZmLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745603393;
	bh=odLBjVSJXV8feQuOw0sp/cEMqENDVuDhFH5yu1Rc1HE=;
	h=To:Subject:From:Date:From;
	b=uClWZmLgAp5+clZM5mKLkmAYBjitGJxgWKKDFHLIIo59GstT+f4wTLFn0cMTfvEgr
	 EcvZR5iGllQap13JWzkOVlmhDaRdKgNngsBMjNjiGT6fIAcs6yhAh7MFOKanTZxJFc
	 uJN+83+kfbZdVvHNbbRqZJKWRjYlxnLmvRYwnLxPNibtZt6Jtw7F2qFv2zDWjknNhd
	 I7ULqoStBNHqTKUkrlX5HA3C5/KOJjEyA85CsJUqlo8j4HGPNaAxaKd3uSbvlFAfjl
	 LRRiGG0FsOOfEA+BE3viIoSUWbfGQF4oq5bE+xf5dySIkp1QCsBy98LHg5di3BM/BT
	 eQXJw/n3odCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90287C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560339358.25272.5338572635131355015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b44e1b240dd8ef56262fa2ae88f5646d86a9799968c1a8034db4482d64ef41
Date: Fri, 25 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745603393
