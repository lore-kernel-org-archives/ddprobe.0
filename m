Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174C148FE5
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725507354; cv=none; b=YdcpQ2JGEeE/WoEctvPgm+M7HOh4KYQUBxZLjCTDTx0D0HPuX8T2eYMnNLePWoeQ9e8U3w9PBv+CidKJf/OKwamLKN75cVrIit7v252DSO4MR+GQD/unDIH+SkWd9KtTKtpBbv8EuABNmnRowhoEI84WR5FnijgiyR1fu8/I5As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725507354; c=relaxed/simple;
	bh=48dTiWx3p9hUX/Ie3HMFPvcxbseTNFXK6RFBPomM9Fk=;
	h=To:Subject:From:Message-Id:Date; b=RtqZUaIIHb1/2eOT/PAJu3FU9Cb49a8cRCOW4WTu0opf16drBRCbMJMJrZakljSicApkidKwdcCwyaqpuUZzeFD0A3dJ5FxzhBNxNa5rK0xvGic50nF4+XCi4nahNAyW3l/kYfIRB0qAJUr4oQRcIlYaK33loTYUlkIUJrm83/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4aUmtK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4aUmtK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66D7C4CEC6
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725507353;
	bh=48dTiWx3p9hUX/Ie3HMFPvcxbseTNFXK6RFBPomM9Fk=;
	h=To:Subject:From:Date:From;
	b=F4aUmtK2yczF8MljNzJq8Fl4kscyjVswhrEKys2FhuPYfktVcjoVD4JC6bXUniMii
	 dWr+w6yTAaJlYdNSYtAfk3LuqiYAqh2kEphdf2hw6KJ8Eu2HmhsEjjunLRiFI08QTf
	 A0av9pSXHIyLLu0z8sXfRx6MjXazQrhIMPTuAJ0P0Q4XWXFPr2tGeV0yHX/XObntqV
	 HN672E0kSrVoH3zIJ9snkkvrZ//FKkIrvTVxp+Bw6ENkZK6bcim7jOuaHy+b2KwBWA
	 UF6jlIWwKQJCstHqHG60pSB6bmUX+fK8vBYxwSxpUUGQAbjbndWIURZsUst/xxX/77
	 osEXuMUUrjifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D674CD4F4E
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172550735363.5495.13414419728434716784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584d14066dde8d88ad6b9ef771f4911d9fa2d93dcd0cee74fcab3d4e87ef8a2d
Date: Thu, 05 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725507353
