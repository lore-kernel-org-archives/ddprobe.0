Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338EB745F2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732353354; cv=none; b=p03qsQQDefdlETFssN8qqK408umupJRdObint3x4Tf1329A2SyLHZuWd0eppmC5dnRyq/Pd0C+L/dHkisLLeJvY+vDp27vQKt3NZx6hyu5/VLqNO7jrmcvYzIIk75IPhFGwyIUAEHEnUmtTX8N5ZxGSd7kvrR7mCC1IBVvSNbZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732353354; c=relaxed/simple;
	bh=tC41iS8lFJv735TfPCO9iTlWJ+ouRYOFmtVj3vuCU0E=;
	h=To:Subject:From:Message-Id:Date; b=nJMhzOfVyyJD02J0oV43nkOA10qHnhJd0Ds/l+0ubhGOleg2VjvA/do5Sfd+7IKlSfn6kbHmGHnrGEUSQx42VIoJS3r9RTsUVgJE/t2Uh6afttrycqDp6h9k63fSfmnr1Df4ACkrsazUUm4dopT7Nk/VMForsY3gsyNVrgXJMQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eibfrJiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eibfrJiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73B7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732353353;
	bh=tC41iS8lFJv735TfPCO9iTlWJ+ouRYOFmtVj3vuCU0E=;
	h=To:Subject:From:Date:From;
	b=eibfrJiu06WvHcJh1aZ0pbt0x2Ii2iP3qgTw5Cbx1A9zx47Gp82OtAM5UAG6g/Qt/
	 Pxvsbq4p1rHAziObDQuZf4Opl5DSbPYV6bghnDx19jUxqzpslSjaI228aC6LY4Awr7
	 PjDq2B6RNpuvZ4Exr1oSkY2u7hwtbv5R+CXYcDnmOY7QYSjhhZcAxajayKpCcyI2E7
	 gA+GnPReYrEVQPLLrME6bIy8mUW5JpTyHD4lDeTDuUyDfoLzTX1JNrAwoPge5loCRL
	 eLy1/8c8pSojYk47na+n9B1DShdq/S7eldatOsg3fgvWqcibd+STbbK1k+JY2jR9/m
	 6Wg+tZF7/paww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF5E6ADEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235335362.24766.1283618652438771745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4ba6935407f2ba4d9f032be038ecae658f931d84f0c9993e0eb2e51977be4e
Date: Sat, 23 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732353353
