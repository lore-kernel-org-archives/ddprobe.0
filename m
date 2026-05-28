Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF033033EB
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779951754; cv=none; b=Ljxlf0bEic7kC0AKkTu6cWzZB9xB/Bdy/z3ijKF+43gv7xsPsyIZPWbkrpLO6L2HXgXROd2gRLELXEQS1uyJikapinVovdiUsOovs+6Y1T7S4+inRsjld033iDwo6m1lpAyj6XsuULbWf1SZar5/NgppuCjGfUmlcdieySQ2SbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779951754; c=relaxed/simple;
	bh=eacoVeiClOyQ97o/0lzFieW7+YdJJRNtddFs5qx2VTE=;
	h=To:Subject:From:Message-Id:Date; b=uqp3ouFZteYwgHrrA/qgBll55bjGhe63XfUIE19P82xJgJbXazoD8Md3pBm8wGQqGP87MJ04Vk4YGFhBg6qZVEOk49LTSOJnPLr8CSr0Ecxm3IH3NKx10HZu875mUCFIxrSZTcfjmi1x+3TzwL8ZTaRXN0cCoNVv0QyzvA2RSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psu5CaKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psu5CaKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C676AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779951753;
	bh=eacoVeiClOyQ97o/0lzFieW7+YdJJRNtddFs5qx2VTE=;
	h=To:Subject:From:Date:From;
	b=psu5CaKjH7JcO04TUOjJcz0jIREwKjDcY5hDn1lye1H9R2xVV87Jbmj93An47Kyya
	 wZ2AGGl7JD0OmEUEP9Tb6hD1KKSmaEIuD0ytXsYkahjN2+52sKlr2Onk1AiBM6kp8x
	 8Ur507XMnQTotit2hdu2a4Q6DXrAwE5zhMYOzWyikXm2ZH7Uao6w7MxzRCf/YeG1CT
	 Y38tmYxGIomHonI6U2ZUGI8iwgrupAmzrNUD5MzlBBuTRTxvUa4URKqKIbs+CpEXhD
	 CjOblkoKWPedhe0hEvRgMdR63FlRHYvro3TVI+CeyazcQ5oLPsd7ZnUDBJSERLAb5d
	 JiQrt+wYZhopA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF238CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995175368.11568.17238086286819537989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f0d478fccd14cf2860f742f05ba2470174d80fe5e6266a741dc1d5b7b18c4a
Date: Thu, 28 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779951753
