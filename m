Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F007153BC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713806423; cv=none; b=cv2VGILYLdEZsXlUNaS3/FhpWotWGSbblF2emLY4DlUcvC4Xsqtis2DV2VVOjRU+Q5uOeW/3fH+kBZcCEOiefiGFJZsvfphb7G7LPDMvr55QkmvpW110zZQX//WkFlweyKMECAdUwqlk+kccEuIJOr2bbC2/EjdsJkW0DQ6zi/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713806423; c=relaxed/simple;
	bh=JR1MkCoPh89YUNegxI1eapACG94/iONl4dzVFnfIkCE=;
	h=To:Subject:From:Message-Id:Date; b=RcRcQb6f4MdwWHh+pMD53QTpJmuvIf+lch17umfKehL4xu5C7pmgtBdeK0BSe9m0P94UHiozHN1YwsrPwcBTWDh9BTuFj1SeoDUXpz2SLSVJ90kIUqQMaVXH4yCIUcP5sMI8UgV/BSS80svTPv3fejw3zSI/sjExzzmdTjy3mHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7nfC+R0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7nfC+R0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD0C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713806422;
	bh=JR1MkCoPh89YUNegxI1eapACG94/iONl4dzVFnfIkCE=;
	h=To:Subject:From:Date:From;
	b=M7nfC+R0nw/v625H9W6D0OZyw+EfpsBt9zEEDWGTDB6q3tYgQ5qIj2LyNomPBjq0Y
	 uWFupT5BQsDdoe4+8zf1+a7e28x7808uTwINXYNsttO0sD+4pPFO8DNBS5bJ/H9NfY
	 gdvdL31OdpGByxBLvkkoGUV+F9NNUzsnZnkINB2ci6InY/lT1JY3ozXA15cFgo+yDg
	 9W7OAxEyf+OzDsnMj4gIdsr65cs86EggtlgcAIwcXUYGTw5PFeMiTDJdvNRkj4Jdt5
	 WIX15LaMnc6JumF6n3g2+1IhKjHsFXJvb+4tmbo7tGGWqya6oEfrxXQwQ9ciTIQLpB
	 vKaSZzgYw2iFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC24CC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380642276.29430.5879094400836074616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d260fc4641f2088e7df9e7f6189f8d2bc1e36167b524558ca6b26f07d61c2562
Date: Mon, 22 Apr 2024 17:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713806422
