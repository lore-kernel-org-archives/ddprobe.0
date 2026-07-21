Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7882DA76C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784665114; cv=none; b=j0JT9ROwCao1c1wXBlHVaCmCTy06uoeukJ3BsUWRSCt956wcBv8JXJgGQ+m1NUubA6ml4321q2+zewzF+Ov3pcs5QM6WSOquZtJ2pEzkGUbdmJ0jHnbYsd3RAD47c9EOjmexipwRKO94oZDN3diDVoEiQqNbHkfBgoXSh3OKixw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784665114; c=relaxed/simple;
	bh=VjH5lWly5Q/L3tdfbdJdQgFPqKyYLUEGudY+Gr4VPI8=;
	h=To:Subject:From:Message-Id:Date; b=OpNAEmdCVY8oLMRkRBe92Kxun5t4J3hnCOBgSZu0yOj/Lps9WGVGu4dzAZxarlcpvD01ncAlQKB0+lJPEeWXU9bvnaHQtBsIEbsLhxLuFuwII18dbXfEKe16I3ggigA+mQ6CGmKZ95Yg/fE3pSmzM8AikNvfGIhuVtOWzs125b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llvpyDaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llvpyDaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2E2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784665113;
	bh=VjH5lWly5Q/L3tdfbdJdQgFPqKyYLUEGudY+Gr4VPI8=;
	h=To:Subject:From:Date:From;
	b=llvpyDaT6cavLbt3GGTyrokaewDh5P8civYUb9q7uhQzrX4NvlHfh7LOfDjsVcVRb
	 fhJZdVjGO7i56vX4szlAxbhSbP0Q3msvhuQcbCiH3NqePDw4Mt7gMIFLEyl/oXp0kj
	 e/BeUhH3HYQChCdkZVMpLyc+CmUengQ/XJejtiQ0yquFsQhVsvxB1P3mVyGMglpWds
	 DHxyLJ/Rb8w0hx0AJZmNQ0CRjizH43Poz86jNwusuE4U6sGbgwOy6C5D4t5uVx+zog
	 voULdwX5L2F0JgPQfmr+2eKLpV/Jxir4jeWQLDzyjY/NvMUUZWPAdEKFJmjUz6JWdc
	 pHjLYUueRKk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B702EC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466511373.23698.3778810930301013551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3642ce4e45b850324712386eef61d9d5ca9c9290d6b7f370cf55c2a8fcf9ad40
Date: Tue, 21 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784665113
