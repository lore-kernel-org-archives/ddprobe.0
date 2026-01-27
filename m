Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107333358B2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507634; cv=none; b=OjKrJq9EBywLjUeaySb9j/xayymSlnM1ZgE5ZvH1osGzU/HYwpxFSaIhjG/f1HR8YEFgFsWWxadqIc63ObO1TjjKvPffaHi3rfp8TLUqeeW2iIRUOqNAXdMKdYW0R+vK00e63qPCZesgYeICNDnsyAQ1294a2J3+8jfX/3/wLvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507634; c=relaxed/simple;
	bh=qpNvwEjY1VLBzQozWmTBCpJlYtO/iXAQLWXITcI+8JI=;
	h=To:Subject:From:Message-Id:Date; b=AM0rVoIhbWVGOAI3Flf6AsSXspnzJmhjUTO2sg+BnL9ic1X3VnJ8wdOy/lIXPtenbamMmhdSC1m2M1O0SHU0EfdrOqU7RPaN7OLslP1dvhT1FiAHkdBMV8DLZvx7PuBL55iKD45z4MjIseX8FpVykRGA+mBPf18Q12fHOrofotY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzNMfUrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzNMfUrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769507633;
	bh=qpNvwEjY1VLBzQozWmTBCpJlYtO/iXAQLWXITcI+8JI=;
	h=To:Subject:From:Date:From;
	b=jzNMfUrYKnzrmreMuqAWJLznswTS86QcN2o/EmX6MwZQ3v0E1j2+KR+TbibBhCs81
	 c4+lRloRzubuV+wzU6u2pEcNGgZK9CndgCc3khaJtTdqs8sprUPVU3QlrkO/sLmWDW
	 UPG1dOT5ZK2Q7sbvKJpcqjIM+DJ7JZvaJRwmXCY4wdwkJdaqMIzUlV7AAtL/sjNCNK
	 Jtl/kLVdQc5HdEY5hGqBHW5zWCcRpPm6KhQzZ8OjT3N0Hkt26ruV5kacF2TZmCf4TR
	 Xwp8QmaetLndPySY7UWDzuQRhFZJur4ilsv71tPYYjeZgUR3mcICQIgOx9XeFpRovj
	 p8fFN9V27LIzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91172D2D8DF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950763358.16088.9081875212521181712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e407b53dea1e1618c47a6b66ee909ab4501315c4a81ab6825895a5c64c9512c
Date: Tue, 27 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769507633
