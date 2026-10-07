Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409B13DAAA6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791394234; cv=none; b=H3XqaHxnQn5YJFqjWBEZetmX4uMAaHpOoy19p9ycJugmsNR728H6VWsuXDC+ciIHK82SzssJqDOjBLcBmWOFCyXk3KZWzV2bPTw5KPCkDbgZ2SQ0IQhFbnBOdnJTFzvqhIBQVDAJfHZk0zMeAhz1Rkw0RBte0OZZQKG4v5VROTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791394234; c=relaxed/simple;
	bh=j1fA7Ii8bg208vi+4Bc9QjsR7MI/7j/23z7QN17uIjk=;
	h=To:Subject:From:Message-Id:Date; b=stg2qYFWn4NRV4Y6Jc9a5r0hocy/5BdPvHnu7jkKbqsPObzyjKxjqgF2VbJ8u0Q3Qog202RCDOoie5+RlktdyG5KCRAuIAy4RITL1h9hBVsdHIdZcGwWfLqjwu1Pn65CoDewVlfmmLsVvPssiESVeJ7rtWbgvgSOPwqrmbQkik4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDqSMnIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDqSMnIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAD1C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791394233;
	bh=j1fA7Ii8bg208vi+4Bc9QjsR7MI/7j/23z7QN17uIjk=;
	h=To:Subject:From:Date:From;
	b=NDqSMnIJCC157C/OruEV5LcY+UblPkgLHurSLPwmfAEWvq6Qrtrk/bt1ctym4G9qs
	 ObWr7g3IjJORnUx1V5DBFVHUJ4m4/lyqIFwrgmrpZtziFv3gmRh8CKpJD6v/mEKArs
	 Am0tldSKLCZlfI9tBbfTUGfDtHwBNYu4+SP/7uXFDTJPhT7mf3Z0n8O7QyFkBJ2OlT
	 P5tYDthGIVTPK4qBiA89gMBJcM04e1e0niP/L/1J7x/FHp4acP1VXuL5T2zQDMwo3z
	 Iv1eE7wP8YzJv3upiOSmbbnKQBcjU2fgN6dM/uedWhI2oRooTnFfaUGv8XYbMvzsRf
	 DTKDKWp2PfeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970DCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139423368.26168.1028529514566066128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f8e7a616f0f45b963605f97ee6b1ff246a012b44c77ea4235c767775a8b6be
Date: Wed, 07 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791394233
