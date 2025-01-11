Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901424B240
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736559354; cv=none; b=NlBM8k7SzOFp063JaqmHLhTe61RQ8ydP7Ew93Xdm+CaRTcFAS40vegyun5t7f0Y1oXGb1Qzk+9HbIw18eBkZQq6aFoJnsnid9vCM1cjwugJVhtrUHgs/KwJx0rggAFD/4wQGMVfflI711tcvYVbjjGopdkcIoS/Ee/cJ+eLb2jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736559354; c=relaxed/simple;
	bh=/Q/YwLzJI7Fz8/YfpXnwpSTKSnz0simFZUT/WiFkGWY=;
	h=To:Subject:From:Message-Id:Date; b=bLxXK/Fs78G0B+/dAzLHM4Irqde4fNCzwFUMbGakz8/oa0WxiVldUh8zxKo6hPaGRxeQO/bIgEyp0mp1ry3iZHeKM07bX5fCgbNuKvO9BRPxUjgJsgq5eEO42Ui1q8GAnAIoV/5k3Z8grfpeeChH4JEcgTHV5M0X3E58k/Pj5mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRg6wHJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRg6wHJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B4C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736559353;
	bh=/Q/YwLzJI7Fz8/YfpXnwpSTKSnz0simFZUT/WiFkGWY=;
	h=To:Subject:From:Date:From;
	b=DRg6wHJGTpij16cVS5VQWWGMfSwY/zPnBfVdqGxDp1DfD+zX5ptb8lnhDSI6tCtS5
	 KwL65BpjxldjERZjBA6aIE3ond3hJXjZLrb4udb1DmOk7wx236xmf1reVY63Q0j4Gl
	 +Kk6cpQicO9IwChlpIAtFJS7HJ3tLZ6rCT7Ih9X5FO7qlatclMnlaR9PAC7Uaw7SgL
	 ZseeKrqGFlgm6juivrusodnujKHIPSSPalSwjuKkXVYghjrWUmmg2YiZSa+CF43s2h
	 IqgO2c88KXr4mAZ0wobig2yhZopR9xi8XKyD2v0770lYrvyf+1zgd0l+8R768sCaUA
	 PQRMdK1sS9p4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96784E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655935360.24807.13842607799852809273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c660284e93bfc7d5bb0188ac5493299ebd56e3cf6d78cbcf1128fe7c8bae6ec
Date: Sat, 11 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736559353
