Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403BA1922D3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737359154; cv=none; b=bn7xOtvD+FXL+U61863R7dfFgtZYpSEigC46Z6WEjGFj+Eg/0SRGhu0KWHl03zbH+7WDGGcJ0inlQiMafG+QIiPcYMRCYCsAfjTb+zc4+YErCuOxFtjosuxGNnvtpUE7iiOBDc2WSj4sGevILFUSntlgonOWWQ+ABl9iRVF8g4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737359154; c=relaxed/simple;
	bh=249Wz2KcfaP5GF1Dj8LAkuVZ9hFrsXogrhwwsSkZrf8=;
	h=To:Subject:From:Message-Id:Date; b=CXCoAfTOzkFR8m+Rc2PtsPAsl0jaxt+IPfiu9YQh/QulnvAgKLxU3IeFXFoShSjc/JLWkEXJUzUesQW6JDAvS5nFu0dfYbKQNtHR3jaw2rQ8vhHMQRlKtZyvqjZ4tJG/YuUKgmAmM9WtXC3+l+uZpEELM3cxZR/M9Qa/7YXemz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY8DrZm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY8DrZm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737359153;
	bh=249Wz2KcfaP5GF1Dj8LAkuVZ9hFrsXogrhwwsSkZrf8=;
	h=To:Subject:From:Date:From;
	b=CY8DrZm1cPzSF9z08OYiL4XY+UoUmTZyi0paJ+Vtx06xemZ6Ryp8i+8I7NRe4RnTa
	 qJm+ysyDjdYD8cUIL5p6pBCnQ+l1yZYtD9ZJ6nuTCxRH5xhHyFE8PHiKUqzc3EnfMC
	 5uWbvcKY3xEuoEAdX2H4ItTU06Gc8T2sGToQx7LQGR/Ua0F1IFXkWXru8Syr0hTVki
	 WCxregrhR4M/rFMJ5uvQsyrK5ond6xZ52MtyABgkskQ4W0W52kI4bQHcDMwGcp2Qax
	 RvXiR/DyUx4TExJoaysF1LAQ2HNmKYNtqWOicrHHWaTKtEiuTkA/MxdBRBIvrZ4MS3
	 0Px0Osc4AviRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1AC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735915359.28404.8670596144605943032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723c883ea4319ba332e912db6b6130201a45dddd77fee20a35d5f935524b0792
Date: Mon, 20 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737359153
