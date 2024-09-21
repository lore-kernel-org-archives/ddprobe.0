Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37715219F3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726938354; cv=none; b=Qpig8mxzlTeR2d7WSlP5NC2s52uTfSbXcTljIyoBieddyWrT9/SwIhcjyXnynfFK8mmypmt6UMzSrTX6DrAhZhqgHpysxClKOefWGEM7gZM+4W0L5WsQX9bGcyPmlMnr8COAh4R8b1/JMPAZz+BJ8acoss/o4OLTq6+jGA+lvq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726938354; c=relaxed/simple;
	bh=x7Wh+3P/DBExi1Ymdp/YNPinKLYvMJ8Zsr7hBlRLod4=;
	h=To:Subject:From:Message-Id:Date; b=cVAUrQ+Ogl+k//X5f6914pj16WjoFTg6qwbaGwyrUR5OXYOiZzKEJ8iTEFSvKrSgMdpS4XSEuV/l+m+zXxpzrBpPXiDTw/uwSot8GwIUY0gZt9S3gijHVZQ4HSrJitneJ4phOearOp4MVj9r6vMzRzrzlgd39iwHQFQDlI4iv7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmaKIuYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmaKIuYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9863C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726938353;
	bh=x7Wh+3P/DBExi1Ymdp/YNPinKLYvMJ8Zsr7hBlRLod4=;
	h=To:Subject:From:Date:From;
	b=AmaKIuYwi2BCuPl0yd4Pi+oObfBzGYr1hMTBiaKeOe9WQbPNidlpUP22V6LdcUBiC
	 Eo9cgqbuJQMZRHzI7vN9VTp5mgBbNq1fz+xOZLNwiADD+ACDidZQ+tUgh6nmWLhxXE
	 OTVU/rU2OcGp5zrNuWt2T3h4F2fzkkkM+VSpLKTAE/KJT4Ptwfg4zi3mXBuTcSmgep
	 RbgrF1+jGUj7m3RUOFszIx3IBBjs6TLM9BRT88E2uEtfhK/3T2HQwEmvho1LjNYCvt
	 n6m6qOCsoOkTk+CO+pK2A0MrDeQgDIZs5zxTFRJ5uW3hs2G5VOxs2ToVNx1Eamkh/K
	 8+g8noPV1LmXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95079CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693835358.30301.4608752566291444744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3962d02a5d0a20c882f2c03cec73931bf88e3b351ece43e8d74abb338e2c81a3
Date: Sat, 21 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726938353
