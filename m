Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBAE33122A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780379674; cv=none; b=Q4r2cISeTaaogswPPIobjcz+qSK7arW3+LNVZ12K94+cRO20/40ImZ/1SzkEMqnLrTHN31Ef1mcyw2DvK7+kfXo0BabGmqRXrY2BWWuY87OvJIvLmWUnQM9y3UPZdKGM8Qk7xkUPQbfQtngp+SsJwhAN08pHp/yMfxWanHbxvi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780379674; c=relaxed/simple;
	bh=zePK32TRI65Os1GxRHY2B+aDFKPc+Xhcr5s2RjWwRS4=;
	h=To:Subject:From:Message-Id:Date; b=ZavBm11DlCcj7AulTo3i1cdhmfiJalDeaCEXZlT0svuSXb96Xn6+Hglisw13zb/cLIxbyN7v7bMiGXX9qM2WXbdQWMQ9WS5NbU5385UF94OX4G9d5+lWSNR166LspvJm3Y/XqAOUJ6WFRaspoYcm+WuIzjGV8wBFVaKb8fhUejg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh6zrY8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh6zrY8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2458C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780379673;
	bh=zePK32TRI65Os1GxRHY2B+aDFKPc+Xhcr5s2RjWwRS4=;
	h=To:Subject:From:Date:From;
	b=Bh6zrY8L7UVI10NRior6AbMTS0qeXkg5fAVaFxIglObpHzmLDT7s7MOAjAwTd/hGg
	 QoT4XAjvdsBliJOYmVeaXd4jOcSweu4WiOQGVvBB5HyLk6B1v5A/1wDju4b2KSWIX5
	 MPxk7oZapaBNkgGR7Z23/69eZjyW6kf9hWzMmTVDG0d9kP9oJzGlKMBF6J7RvUWiTt
	 Ne/7MDIC//XiyEocM4/V1hRvHaAfiH0LtYbBuM4UuOm8WcxRNytj98eHm0HqkdKldv
	 3O09DXY1I+MuzNiUJT5Kd+g3EORUDDhxPyTGSO8jNa1Ckt3l67ewu/fnaAHZZaLk1x
	 yhenG0C2pj9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD0CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037967373.21214.11996699979142935319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f7ad435a333157feb95e86cf1658e8fc873ee364cafb29c64e4f07ac984554
Date: Tue, 02 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780379673
