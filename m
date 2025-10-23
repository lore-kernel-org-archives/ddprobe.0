Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910519F13F
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761181194; cv=none; b=KKeJohuSH2u3T6x6OW/oKcdYkjTAThgPl62qLiVeWXlD+IbllyW+ZMyWRoJU+Fl0RoTE9pxRw0E2IyRrE26KIBQw45iWn3O3oW6ig1xiPlj5pQ0mWmy0rFEfzZ3nJ27dueAIsURg2ntBEvdEoM4OIOpmlfiK74VAguuoBkRMYVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761181194; c=relaxed/simple;
	bh=ShgnVfmf011+Nx6MyrYUSrXBxPlZ6XXDRYtcLzoHXs0=;
	h=To:Subject:From:Message-Id:Date; b=Tx1ZM/1GRHr+t02Co8GcaMkhfIhB7NYpZZI2bvB7ZI6RNJm5AFzn64exFdcgBaZIo2kDFJco/3Koj4ftqyAO4DbyhGWII/hRuXFw2mN/nqHLAc6hxeUWlvkrAlOR8KQI8qR5NvNmFvnrRt+8F7zlnOUbOQ0OKi+j2M2xbFd2eq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM8jWguk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM8jWguk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B20C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761181193;
	bh=ShgnVfmf011+Nx6MyrYUSrXBxPlZ6XXDRYtcLzoHXs0=;
	h=To:Subject:From:Date:From;
	b=tM8jWgukbXRRola1Pu9OtuIhGe2se2REY9J84eUAlgue+vPeRj2EZpQzQ0+mDyeMX
	 XuHjYE53+gac0eVoixL4HxeNZDKio9MuzFSyD0O0YyiBhXMmmCYnxkmdQz61s4pbT8
	 BHZr2fGB6byVGSLZoGSpXRX6PnkzxS3AZcbkaZBEeY/biKbjHxtXZ5xMBL8LnbXpdI
	 j/YLGbRZWgELgG6tD8elQqVs7gsG/xHvm23vl9MUZaKAJcFbItuT48V4poVr5S2A0s
	 tPJdzQBTrOSagUZYATPZr1kEDUya4zZwgKbPv1b2by9hMjL1C7+w2tJ4Faj6KTmaVk
	 UQ8i5XktUYAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92275CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118119358.15902.6651721955386447402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e11cc39cb6ce50afd26cb535fd22412e142288625d7264d84c7df119e5fbc8
Date: Thu, 23 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761181193
