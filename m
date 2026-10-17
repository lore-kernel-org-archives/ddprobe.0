Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768F271A94
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792198234; cv=none; b=LTDaDgIb6Fr+2Uu4EJeGtkskx0n4SXJYOzf3ORptHe79QjtUQD18ogH6rAqI7SXjRyvUApZmzm/N2bgv/8mAwaL+XezOjjCpA4AbRVp8KyJ+XPIHrBQIZ2dJJ9ivCwWw/oVmP+c4lSt4mGqM3kM+ekiOnTu5Ny+EWvxGRd7txuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792198234; c=relaxed/simple;
	bh=ohifauab05/Md+3oan8ZmQZZB0ZyQi9FmUrPhLhV4mQ=;
	h=To:Subject:From:Message-Id:Date; b=JShbIDkxbqIYBUc5iIzFBsX0P4QlgLl09ZZFdkD99bFk6IBOcRk6p/iL/lTPD7etFj/0oYXYoVdcDIUepn359S7oTRizpd3BamOFHav2BNupRzofbMQSeOsAC5Fa1pzVithiOQO6H3/N5+jYrMGYdOEgbzA6gbEG5sXK7uuWkmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0ErmT/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0ErmT/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47B4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792198233;
	bh=ohifauab05/Md+3oan8ZmQZZB0ZyQi9FmUrPhLhV4mQ=;
	h=To:Subject:From:Date:From;
	b=d0ErmT/6hjYAyq2uG2CDv4M4jOCCYKc4ZSp2YrVX/oPGQVF7KRlwD6257j7IOK7xD
	 yBRwx8MFJ5oMclVjyKiFYbAnpp3d7zB3KPOyNNM5d8X9CNpLHPSG0h8jgvWj1X++MF
	 +4cxonfjd3QYCjOUqBaTcDbC1xwpUuBMr5OEFuG0assLqc/LnWj9WkonlapnAotczo
	 PZPWyTHDJMcRDnTsa7XWpQrIxyS38a2RHJ5ThU7UZuklJIElXpOKe6Plit5r0ZWRCW
	 Lc8esHoQaavBTJSVz19glNK+jXnokojIE52+fv/VIKeCASVsCcrthyBKPUIofO8s3F
	 wolMBCrDn0HUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DEFCCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219823368.30271.6111996956752620382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06106e4abb5e9ce362c797ceebdd5e7c56c42e2398a1758883bb5c854b354fd0
Date: Sat, 17 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792198233
