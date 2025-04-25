Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F6C19DF8B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745598595; cv=none; b=n8tROlaacjsnKOk3Kq+rK/95TrT4e0E8sEJhC5/VtWk+OtlcmAzIDRL1f5AiFzhPWUSuD1aUEAw45OGYaq0HyfWlHTgN/lbev6mvIKiDtyo5RJHhylgrIayn7UOccVGyJQzGWVnQCrHcyy+TSKBNKO6cYN7hiX474eCH6BWV3B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745598595; c=relaxed/simple;
	bh=mXln+kAELH6JmsWbtrLyIkQRwBoivML3dDhvL6nED9s=;
	h=To:Subject:From:Message-Id:Date; b=WyQyo4Uuq43RHtEVLKhXhpA4Ho56JSO90S4gBIywXi3ePdkbjO+rMZOy5hqwxrkvCq34ymesm85vCCJ3ogLN2vb512pmc/SAGgrLCfLz42jDtIim730Yw69RkRXIvCB9HdKfJQW1cufh3GfHRXqVSFlTWrL2iESwRiH5sSgroQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZE06s1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZE06s1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E604C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745598593;
	bh=mXln+kAELH6JmsWbtrLyIkQRwBoivML3dDhvL6nED9s=;
	h=To:Subject:From:Date:From;
	b=AZE06s1CvxyHRaX0i4IZedm1cNguV9B+FEGCJCb4nvvjx/ntCxOCEtbHO1LL5/CMw
	 x/jxo0tz4gqfUOWA2EsC+0rQPAEPNsBCtOFnzp7xwQQDyLh+96VGrfONS7wt5RYX4g
	 OnCRxVd+F6QiYcpbvB32PvJudEMVe6u6/C/WD2EmEtRO7FWY3i0zXiXsiLAM5Mvsy2
	 C8pBh6P8pg7aa0vZgsH+UGi+g5GpA2qplPpBH2aPWXRJFD4gyyM9shB3RcEPfQdM/n
	 wbp4G38vmJ0V7ubX1No63zQTuKzCh5PgmDC26U7KyI/NaqT8e9wYLKlGl/rIhkITBn
	 M4wQJb87y1JGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB28C369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559859357.10883.2486392674664462088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e816b9446a7c2f6ad43976211d5d4cf9e5c17948e805e29e40c537a31f15d92d
Date: Fri, 25 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745598593
