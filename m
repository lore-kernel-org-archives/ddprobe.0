Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481EE71B3A
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713188963; cv=none; b=DLfaEbYhX7Tt8dAn1kqcIMkgtEZ1D2+EZ9bOHQ578f5/eXugzYMviic2hNCe31fPXM1ukbHx1mNdZTGQLV4wDJuAh4PLA97VbT0/QTjadb89dBUihwjLH5v+ZUBJ7Z5X580IKMDKwH84fqIjMBJ7XLHwe0QvOhW3VOB67GzCUl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713188963; c=relaxed/simple;
	bh=LK9YjqDgOOLAqIjp8N7WpJczd5o3hhbdS7zSCcpBHiA=;
	h=To:Subject:From:Message-Id:Date; b=poOGPbKITNrTGT9v4qgai75JFyVtPaR6R0RC7sU523IEY/rW3szxHxk73MzQzl6y2Dc7toeJJK6wVJ1fdCzFXDjxL9QeTnyTD4idlA9IB0jMqNskMCEA3t6ay1JM9mCye7ucUmDkGl8n2Wa8SMjJiSmdIMsrzokKW7RnvZt+yZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPIj0dQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPIj0dQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25CEC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713188962;
	bh=LK9YjqDgOOLAqIjp8N7WpJczd5o3hhbdS7zSCcpBHiA=;
	h=To:Subject:From:Date:From;
	b=aPIj0dQemUeTSCSXQ9+XDny3tfF58CbegHA6Hob8e62PVAMzlDEHQf17SrTNqdgdU
	 uQ28af07vWP/xvbEgEaC0HBoHj/Rq5ERnGsni0Zx2H8oAajXLnutnCTs3Rg3hNCHwx
	 ZjyFgYtH5Ais9JcHbj2691x84+kRHeYW/R/lGfoj2/eyQTEYUQLnM7YjEUZBSoxuLE
	 fBHN4aPZoMAfwdtYOhx6XurzHkbUzXi1AwfyjWW81qOt68IshorgdAvMDO7PiqYg2C
	 bfm585UzGumsW2OuoNYTJxFbpqEV2jFs42uA9cP3VKDPdZ+nE9+NaWt7oYg4V78ywZ
	 N2AJKyMdRzfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18A6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318896278.24840.15170745605483535843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f600fd2df312b3e9c0e3f9242e4851eae2fee5f0d9da4234b9261d5e7ff19a8c
Date: Mon, 15 Apr 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713188962
