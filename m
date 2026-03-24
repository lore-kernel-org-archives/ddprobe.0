Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C8C366549
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774317294; cv=none; b=htevaG+fyfgxv+Qb6W5TjFWn/IquvEwyrgmD2VnPnqiAfKFt37a1Dhlk6+myG0ueMcjmEY9nYWYoJ7ifw15/TLANX6mGWsj1xmLj/evPpROKQe0MqMgWKz0bC82ftnTZvn0RHBVY6ZbvZj6ZhlJZAZaQ1XVJxMxOoOzkpSjJdgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774317294; c=relaxed/simple;
	bh=ySh+sVlTNVToHRbHHy/AxtErz+CGKM3c4z8mqqJPXXo=;
	h=To:Subject:From:Message-Id:Date; b=SmMyYzNnSFvRT/JHPpx+0QhvULPq3ijQ6OFS36DXY53/id1wtK3D9JCJnHThAxvUuS7BsDE5Tw1erk4IYUIJbBrw1dhh/eIjsciMj5VpKcPNFniDMBnD5ev6AcbyRnF6X77QO1oFFN8Q10M6nakKBQPajLFEnBMsruVhxxtoskk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4y1WOfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4y1WOfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774317293;
	bh=ySh+sVlTNVToHRbHHy/AxtErz+CGKM3c4z8mqqJPXXo=;
	h=To:Subject:From:Date:From;
	b=X4y1WOfoV4Iosg8K9kOfU5y+mr9MZlRZaPphfw6egQsCjSmzRmntfTVKaVpMlWjDf
	 2LUwmkOt0yeKDwyaYV4SM/bXwWvisf9h6p8R6qUGznlZbMArxAi5TDQzXJ7fFgKCUK
	 iQ4wRa0JzqzqF83sWOFWOxtrlXHsr8a8YfMA/R4341K2b0qEQ0RqEk7+4UsC1yNM6F
	 2BJrejl9U91z8sB5g8nieJIy/P2uXafh4X341iSKvULu5K6zTpaAl717Gru54OyGrv
	 c7slCXfjvssOCRCkR4q2wYNZ5M4LkykcMqFR2EIrvWcm2Uh9jTqOD3CZglHwQiYmnd
	 PJDdjIE+DOs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D61F532C0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431729358.25708.12488048852866079754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2827682a78ef26b56654abc2e926598b75b66034b319b01090c62211aceadfc6
Date: Tue, 24 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774317293
