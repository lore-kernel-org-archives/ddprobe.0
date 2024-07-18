Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362D37407A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721320554; cv=none; b=RP0EL2QeOn1Iu9zAAidX3ScF3l/Rha2/NjVaYDqiBFFJDz2UtqF2IFcrTbOMveU4se2+Tfm5Aup0+1AnN2OlNWn5ePfD1cANXDO6OaS5itdhJ0rJQvm26uXP/UOIOYqsNKVrK2y2MYZ+64gybtDR2+qS4lRU7sEQxIXdFBnrwlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721320554; c=relaxed/simple;
	bh=Q9cSTOkSARg0/ZwmS9P8RcMEmHv8rFQk2APTgl62Vaw=;
	h=To:Subject:From:Message-Id:Date; b=tzexJjkch1S0NjHVrzZH12cFwTAZnJX2onPa/g9wI0swYFnSJtWbnt1KbyVoV+1wH+H0R/7GaMlo8YAZZ/dzz+aqMhQRlJPh/DahePwQbpK5xng/n/agX0z8c2V3ysK/wYSAY/jt4JXQYasWxiz4llF5bDkAahxLx9P61CczH+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2LXtbBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2LXtbBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721320553;
	bh=Q9cSTOkSARg0/ZwmS9P8RcMEmHv8rFQk2APTgl62Vaw=;
	h=To:Subject:From:Date:From;
	b=o2LXtbBIrjIXmSVusfxybjey5u97qpXqs+rhogtQx8CiCJ1QlEKWjYgggDpj5FAA3
	 jiP4nHONVjjjerzEIMtEdNRdFv0FFUSO5U6e0rainvFY8S8O/dlZf6MGZ+YJjU7+cp
	 FKMYMzX59RTtHt/UcYvS7fDIDNX+Py0VtKg0FUtFGdETD9YFJTs39N0zh3YB3dXW+Y
	 hmk/VQWmjWHz5X2yTp+tVboJsh3o0oElHP1JRSlGifcy57Ux7yPfqm/ZXB0v0I1gDj
	 ySv09xNO3/o+WWTokpk7aq4C7QON/vtOOQLRap2SBYuvh6IXCmn/heZpMWQaiqZnfI
	 zaYfddnG6bVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92306C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132055359.3179.12276160423672683181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4cbf9c64e37b837710cdd6b34e46d66d340b726d304f594ad705b39a42ac70
Date: Thu, 18 Jul 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721320553
