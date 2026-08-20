Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5326137F00C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787251834; cv=none; b=qIfnM3tsbtJycmon58dLHxvShy7wS/aUYHcW0qelERVmArOhGmHHWy2r0zgVbj706/It2WRUSH3I+5905XKET6+vl2T6E31tfBsYtbJNMgoptk1M05jCOqu08rzp70p0QbiyLvi5qoOiuXQK4zs6X0+nQn+cJUi6bbhPDPz+kQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787251834; c=relaxed/simple;
	bh=EqmN3RWPIfIFLMxx5vbIrwMQIOwCjb2xB2CMSRcqS4A=;
	h=To:Subject:From:Message-Id:Date; b=Y3fw5qrPrHYZ5q84R29Zu/t3pcEAXkc8jPv+f8c7l/scrEDADp21lWkeeAk0olViQXP4D9xbBdkEukM69+ArgPuY1n/eQurP+8Hie/y9PVmrrrnqXl4u38WYJDAc/JtUc8lY2I7wjjrH/1ZOyTmsNR4th06IAijl5sDuWJw8aOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmddTmYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmddTmYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ACEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787251833;
	bh=EqmN3RWPIfIFLMxx5vbIrwMQIOwCjb2xB2CMSRcqS4A=;
	h=To:Subject:From:Date:From;
	b=CmddTmYVgBa18s97DAv5Ug4xMBAkUhUAZHVB9xHamGK2YBl5iGEKPoZnLmayY1r6c
	 iUjxpGCU0GA6EsYXFZP652D4jfbNtwiHhCuEX2JKQGmNGEcn19zVW57QF3SfRtF1Rf
	 PKvQAbna9oINeWFUKp80rYcLag/sCScSPutTVswC1jKaJwVkDS5X8gwHp4cIlQEZ6r
	 Jnimkheweh0ydbZn+TJ8hO7YhwrrmmeIezTGWWWwl7k/qEtI83VzlHIULjjnYFU8mv
	 pSyIvh07ki0oWCzRoTrCbDk/jwvvsKUyYfycN4A9CUBQwuKxLQyGHwf/oY8MsMkvUo
	 kzfpcbl6WjvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF48C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725183375.25442.10933663167256870868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136197251c636e1759f19fe0745297888eee341492737968d5d97b3724959dc1
Date: Thu, 20 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787251833
