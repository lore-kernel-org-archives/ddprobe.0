Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF901361
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744675794; cv=none; b=kUF+71ytJUj/YnMZt4XZD98xijLYyEZo1Ax2HEiA/GrHMiEytKEE7wboS2vTZyPDuYJjlqXhzklpDl7Nt9EZMJkNN4wLAZuPoIE1FcWXx7Ex16a46eogkQYvm34L9TcOg13dUixgxCVr1di/iR4RRRON/TxjBTEKlrXO/P5dHF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744675794; c=relaxed/simple;
	bh=2AiYAVvWDdkTBKCa2zY4lgMPpiJKVLr7oYnoVxZ57b0=;
	h=To:Subject:From:Message-Id:Date; b=m+guiW088nBWfTdytS9Dm8T8B+wB5Acc1p6U9EhG0vCLnRZmeSCM22wDhCSqaHsXHaeigx9YAdyDB7Q7Z/F6U/sBPSDuNkhG3KColExKjSBHg7Vdn6uiUwe+RsP1oPNeAPvgWUD6v2Dx+LULy/Z2fdkQ1shw7afKm29GBp545Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KW4DL0EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW4DL0EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE75AC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744675793;
	bh=2AiYAVvWDdkTBKCa2zY4lgMPpiJKVLr7oYnoVxZ57b0=;
	h=To:Subject:From:Date:From;
	b=KW4DL0EUeut4ZIq+Ye+o705zkPMiZ3BO7vDVF4L1J6nmTcoNJEZHS+ueb6YK5QFKU
	 P3Y6AZAB7Xc39iTtHyzY7j2DzOYCTtvpy64TRs8vRPTzSnhJi6pHbwp3FrY5wMAOcY
	 tWHXjL1v8Yz4fIo10/D78O5rfnO4Hd88ElCIO4W6GjqYaAnk3KRjhwKCr+K0ot29Tp
	 j/P5tKFI8gOzWqKkXeINbI0qhti73gMjzvIc3iMR1awCJcszJafRipufsxkEr9b1lq
	 yKQmqihPEn4f/nsdUbi8Lw8swH+9X1OW+69QYUicLvIygMCLnzw3vo9LZnIsPjP1a1
	 lxZOccM5rCnEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA71BC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467579364.31589.4306003467330580111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526efd4984c88952d064689fc1ece73ad458657eac1bab5b171e4603fa34e3e9
Date: Tue, 15 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744675793
