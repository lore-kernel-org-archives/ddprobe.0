Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5450330F803
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787478034; cv=none; b=MkcPF80Q9QaaIK5HJScYXX2ACFA0wQ5P4WWk69yk739z8Iy8Lpu8dXhatukkrPIWHU093/CHs662XFgB2hpvgs4aRtvLC1Dj576TGXQ8NJT71cNo7ns02toGUgemAkYFDm3aegNrgI4Z/JC961EUIaVcsfMyL7YRTs0LfQiz208=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787478034; c=relaxed/simple;
	bh=ID4ahaKIl8xyv+My5PXMrLyenttqnMjXmMMMKVLto1o=;
	h=To:Subject:From:Message-Id:Date; b=MGeztOSsVoe1YrDb2jn0tEztPeGvybD5szwQVXcsM7ZQ5MHV92ImK9CwsvZskOMBB6iFdttXmUhSbeGSlYLBBuQnTaawfvb2a4kw6531yLsSP0M/sF4x6APvXjFVX5ebAE+Zs7ynwTudmEiwlg+3Tuf5Thr3IJmI0sxiBMos8mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifc4jSAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifc4jSAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5025C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787478033;
	bh=ID4ahaKIl8xyv+My5PXMrLyenttqnMjXmMMMKVLto1o=;
	h=To:Subject:From:Date:From;
	b=ifc4jSAlX8DaBMK9HuW78wd51Ms20CQfrrHdcuJ3KRg4o8ZGk/FTfYgc17LMlsuKJ
	 7ZcZHdBwdURsoM6CCpBi3yIvvNiTVHpLGWlz3xqOoUZz36TQwiMHt7pZ/1MbvLEBSY
	 V9FUdBzXIh5YiGCvrapW9HbulD0egyE9FkRnVnh9hxwR+126yiRmY02TOwzfIn6MYg
	 H4i70hDN8sxKo4W09XeQ7XBoTlUt6XLpGlbyu+oiCXUPWv40QS0x2xsgvgAhzCiFaP
	 aiFdM7it4ei31Z1V07u/p3kK21LUi+LCBvY3z/fcWTslPI3EknY6k7rAC6ismiobM+
	 kjkSFbwVt7TKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E3FC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747803369.29608.12572329419616714003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d9b02345ef9ca424fc5ffd95bb2333276e75b7a4856e8526d31442ca99818d
Date: Sun, 23 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787478033
