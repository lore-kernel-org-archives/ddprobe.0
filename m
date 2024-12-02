Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F9F33F6
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733121354; cv=none; b=V3AjmFtGwWMN0uZKHD/dpu1uuoqQ62nfY0QdcPjWb5s5IyQwO+DQTmSBmbgtVu1EeARFpwROJ0agda0A2ZGYsiw9vvOp9nPtXm7JxJ/pteuaVR324WK/+Axu0t/9S0cMk5RJmg/11yzp0S6riPiAxAi0QoH2csXjatXVCb2t8VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733121354; c=relaxed/simple;
	bh=suvMFBWhu/scQigmGXDauQHgLEnAcxNLmpkCIB+SWYI=;
	h=To:Subject:From:Message-Id:Date; b=m6iUWvrOj9Zh7mVjNxhOwOhJ+YTYKyK3xgRvREuU80NLdqoxg2BHY3SxIvrVLhYHDiNvavKfSSCUAYYMTu7H5B+2+53JoG+FBkxcU4oq4Am+R3tYCUBQATzHx4wZEwm0oBDBS5m0t9lpwCJBIlijppt0f1JolThS2hDmaI5U6fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4coYs/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4coYs/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B253EC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733121353;
	bh=suvMFBWhu/scQigmGXDauQHgLEnAcxNLmpkCIB+SWYI=;
	h=To:Subject:From:Date:From;
	b=q4coYs/KuKNWkrtMSQB3ErF6tAFgJAgUAdlhoVbwKRwso6KvXxKQbRcFGlwr5YRCF
	 Zn6eEwz6pMGLq1074z9SfG8pCVe+6PduUywIcawPpUfBFYdztaTtXQXK+eSJdo1UO7
	 Tn3hADYmytStWdcdyhPxN9G4vAd4HSFe2q+rRvd9lPluq24Q2mfuoefUEoGiOW30iX
	 SRRnMJzUyW+a0ueWs1ajgTsXMUxxANQpsM73BSmWGY/9x9kelEOo4HV739ZHi9SH1w
	 /a9DSdD1MnYbtjvtrfONTo2YXIbknQ78MAy1ph++LjnuySv/xWFAUkW//q2xjsTV8/
	 k98+afvOl1r5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584FD10DA3
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312135360.6619.2009238381026611834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a6ef5da71b5d927d1a2bfa23db5a615b68be7e663fd511a32434035effc749
Date: Mon, 02 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733121353
