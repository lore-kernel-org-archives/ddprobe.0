Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E12629A1
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716623663; cv=none; b=SstSaiKzwasoYPdstv1WUkBmtBBmZJxADQ4EVqa55jOFbE+AvugTKAc5PfFIKrDGJoY9ZhcR6Dh8I9wX5RpKy6CZ+sx5lRRM/RmsZXMrr6dxOI/MmDjGx1+zjX/hwSK3nxsjknVwj/ueukLfLO1pk4JGiMVlcdbFlaR6R45YFQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716623663; c=relaxed/simple;
	bh=XQ8E7QzdNaD+U3hBY1klEfFvIEcGJ3krIZGbrqzqgM4=;
	h=To:Subject:From:Message-Id:Date; b=aASSXk72yLGgHFN/9eHFK2ZpfnoAtjodPOYEJ5teZBOtYuPC3jsNWgENEWy/ny8tSV5JnuDNzWrCD18IU706zBdKVI5e9A8arPEEIdTOdLpxlsFNRG8AS/BgJ93ZrJN0rxsgp2xMZJTfr7YNyOAQ8WtyV3hduz1gqRzfkAI6rz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDxlrNPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDxlrNPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F87C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716623662;
	bh=XQ8E7QzdNaD+U3hBY1klEfFvIEcGJ3krIZGbrqzqgM4=;
	h=To:Subject:From:Date:From;
	b=qDxlrNPi+kTpl8BkYWXzs/UxDctmm8uPh0oBPHjOAl/MxIDkZflJu+3F3EU/wOpXi
	 R4Cqkq6t1HDNgXB7gZEv3aoOcOMJRdhm0gNFd728yI/E4quhhGHcoygkx4GMQUcvDt
	 gRq7V2Kf+UP2JsPr3rnIlfRTQ5PWFgBANYnXB/2nfbvNvjfusj/zrh36Qx2ivYsEYL
	 dQyds3Nuz6d/IOXnLKe3qZNDwFtF3oNgJ69sXyS3MLl8ppsTfg6k5VsIiRx7h+hLTX
	 xTId7zAVkP9RSJc67YfY3O7t9Y988zi776eVdeOKz93Fo5gApbgFUChQSWCP2awL0h
	 5T1yW7O1VELew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE877C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662366275.18287.7455085176086848590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61241ced66950a8310f2767278b43eb2f2252775cde84fa8a65d6b3b9fed1557
Date: Sat, 25 May 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716623662
