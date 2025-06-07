Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BDA139D0A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749281394; cv=none; b=JT9UnPVf00EnGTcgmh1FP3nC2lSvFXEFprSQQneojt80LFSeKkzjxGoX/DWTYgfRnBminyMJ91LfXQ1+0/i97ePa2hPFd66D8Hj2HCuvrBpU4EeCwQdBmd8l0gZId0aOyTVfbad5V2WnlN+rDjbOm062R43UfgqOQiAlSkOPXOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749281394; c=relaxed/simple;
	bh=RrosndNOpmug8K0SrLNlB41YUlfCidF9YzPi3fIf1d8=;
	h=To:Subject:From:Message-Id:Date; b=BP7P6TjdRVAhzUf+h8kI9IIV3I3C08AKZZHSSKCNzlVDOlC56owTiPBUnMzoW1tes/gxFzgb3Afu3moEm4zeQIZpADkG5aaoVWXbIUzS4TMbJCPZZuqCYEbFcxSpTkQ1sCYzxBgPL8m1pQLgHoucsUg/sqQZzXX/bN8iiPzHYjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS4uYAjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS4uYAjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749281393;
	bh=RrosndNOpmug8K0SrLNlB41YUlfCidF9YzPi3fIf1d8=;
	h=To:Subject:From:Date:From;
	b=MS4uYAjRTD0G3sgAvn0y0MuFCsMxZFvjbSjzNWS1cR/UvYZ3/F+EOYd3xeeQ38fx9
	 CBTiT5jsHHhVpJQooLtEXCGH62WzNEzaOCOp9hVRTRIN08QbskfelmQnn8hH2dsJ7K
	 4oQmd0M0O5ZheXXnvVR7eFLfCoDUtkPtGC/3nvwvcFigl2ax70n8PlD5dsWsN5A9Rr
	 nOwRp8yyNIjHDTLBUsd7xvN/HPbGRHw9Va4NM0RhNOuuRXYeZonyB+GOR7quZ9xTw9
	 zy/skxoQLCTQ2h18eTkS95+lwS4f05cKEjxNw7EVZ7kN985Cy9ALhigy2BdMwoR3SI
	 GvPt+P2DDvcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E7C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928139357.16529.18263184485574747107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031cbdce7bea63a25eff580e7a9dc277dd38c92b2a08e454875b42ddaea49e52
Date: Sat, 07 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749281393
