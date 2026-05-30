Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870321E098
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780172074; cv=none; b=YQqDecMssOsxUPFd3L1j0Ch4Ju8k4d8fD5YSdH0HSAMYe8hAPluzPGybxy3LJMRFDQ7lcDyu94MNS+SkvnPCGRDYlzevfgWy58HCMi0n8gP7dGURoDDMx2W/8DYpmSrbBWyps6PpxahsF8iRpiSVtIkLoEy3CDIuMISxsfXwGD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780172074; c=relaxed/simple;
	bh=S/19vo/6wS26XmzRcwPiKTrWRvlWEt3p8Db5C9lG8g0=;
	h=To:Subject:From:Message-Id:Date; b=fgt0FUxTvjkNf0QkOtn+5bQcZXNccsS/dUvVOK16pZBQHDf8mIwMme6omhpT1eFHhzUYFef+V/hkgupAkUJokhbgrKj69wcKM+MzcBwm3hIeSKHlj/VzPUEZi4bh9KODWgjGYYToL7lx41K5xSCA/8GgakdpuG9gBSCsfsHwz9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHcy4OPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHcy4OPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F49C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780172073;
	bh=S/19vo/6wS26XmzRcwPiKTrWRvlWEt3p8Db5C9lG8g0=;
	h=To:Subject:From:Date:From;
	b=dHcy4OPHgwLQZTca8dYonikHDwZp4FguES5zZ6tyQnPoTOUEsApWmMVRonT+/0DKV
	 IwEXVVF4lJwKAwLbs+5TMjOZOOP+nkNFOjLYnXzBPao4TkAWTCqutSYW3poeLGSPwY
	 9S+SdyDEaUYHiHSWaATRBO5XyyWYG9dnOIhDpS0noTVmH1yg4D0S3odKPuxYxEJGeM
	 bGYI7wAIYQ4V+16rkjarQJxzt2gSf2DlKJ9UukWSUw2Gv1skWP92iosDr/GWCiObt0
	 VVMCvdQ0i8VYwGWmZyNwMUnso2eAPGXkXYV4efXgwl8TgY49Xn9OCY5aPZJ12jjVR/
	 ZSrovL5V4kVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE10CCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017207370.5905.15468178242804676255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51dd64572fdfbb89eb8b9aa992b19812e766171b6984e6d0697aacec0c257e9
Date: Sat, 30 May 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780172073
