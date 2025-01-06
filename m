Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5829C1DD879
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736162154; cv=none; b=ZYd/MnAQaYgNUMQjx/6blA8aG+x6wY4c9opP3f+8Nvk8M3uKyJxFQR7yBrvdFd90HTIWwwslsDmaTqA2a3L6o1txxYK+u3WZOW34B4SpEFEDkRsEJvkFiaRmM6pJ3B2BSWIO1vJB7PM4Rip570nFkLOP6V2TixGsv9OxXAnnv48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736162154; c=relaxed/simple;
	bh=O+Dw6BVJQJ5TqPBg8ZzXYLP3Wr2SNXgWiiVx1FpUoRs=;
	h=To:Subject:From:Message-Id:Date; b=RX7C02CHfeR7saqqfrRz1Ph9eNUpwoYXEczMiM10v8tX5mrxAQKfniJLGyoF2kaV76MSUTBfUqZvTrMISenHazcQV6tLZPkDLzvxCSJzIONIjol9D/FFdpllTAVml8Zpwxfc50gIFVruQu0z/lAuJ95PsZ6hmz1fxUjqWcaEa5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmuHJqCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmuHJqCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736162153;
	bh=O+Dw6BVJQJ5TqPBg8ZzXYLP3Wr2SNXgWiiVx1FpUoRs=;
	h=To:Subject:From:Date:From;
	b=mmuHJqCbH2WQ+O4EhH4lABWHf35jPMDMPfCOgv1T3ug1QWL9ewCV4bOTga8/IVn0W
	 NCyBnLxEc/aYoTRhbNiJibJyfP0VPR+V7a8gP4MxFImPZwuWjVs2TVbkgdH/x5rwVN
	 qjP0+BNxS3laLZ1nhXqrmaOO7jsYx1iOk334kaQOGLJ8HjNVOG/Akdn4yiERdl465d
	 VHK8UUuiJKWJlg4h+k/0KO+PWHpEjeoq4GR+HCJKwzgXaytIEAJJ4kz7Sc4UURXAwO
	 23yDHda+89cmYRGHz3vn0v7aQ6ieQnz+RPpnbcAU5wjGEwA+M6CRJvCtozYwIr3pMt
	 q9j+Qu+sK5XCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEAE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616215361.16123.12056254458991574187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917009c9966220ece797c3a183128de93039cfae86417e0e8774fee78cb0254f
Date: Mon, 06 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736162153
