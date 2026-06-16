Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91D3C7DF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781582194; cv=none; b=JfQqlJ0G68fhztcK8gOtyaBYaujMHSUQv1QI2Fco1MKv7CUFkgZS+eZOzLuGJopf0pgGRGCT3CH2UgZSht4h6K1HR1cPxZ4tJEL2QF4iFtuRIidOYWM5iZRIfkIBOeID89VJkrvqiJZTBnjxNUT9J/hGekp7hkl45e4shzWrWko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781582194; c=relaxed/simple;
	bh=1ffA8hv8v/6pJphanCJaTJtebZZBlyaDB2vDbec/tiE=;
	h=To:Subject:From:Message-Id:Date; b=qQ+RA4NY4PCQ8nxl/oJUAlU63UjIUaHYzQz39JJ4wsogNGbUWHeBiFeiXNb9msPLyKeFoUfRc3ltjCv7UmbOtQ/a6/a4OzdG2QBb4fPlsyfVmViRkKlVWvf17GivbZUWvt6cA0OKOKNNrVsN28JTqj7yPcTdFrTD0YG/4Yl+ct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4337PFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4337PFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7DCC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781582193;
	bh=1ffA8hv8v/6pJphanCJaTJtebZZBlyaDB2vDbec/tiE=;
	h=To:Subject:From:Date:From;
	b=j4337PFuhADtu7xh4nYYhM+KYzwmZYFeazvdi3RhOL97f/FstaxM281WkuQXGpQl9
	 +bJvPuYOWf14Tlm3Zll+1PQPT0rcFQpos3ofeg/xcec+dKDRoyFvmNXcfHM0E0zQVU
	 l8tJ/Ufegsid4KeDegiqEERaXMOo5/JjOIx5R2nHz7azAXDNBokmBeVcbTUkro+pHy
	 fPfVmPu5i3HI4F/1pUbHbFFTRnOKqGeha5yLPYSjJTPDgEYEbxZZ3dwRMGyqikWl5g
	 1Hr7FYKXjh8rUQ5/sG2WruR+F0U6Z/NH9b+XigjZ8D7UIBVDiKHcAtuIQBZnCU226F
	 fLvsspXuR4tAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCBCD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158219368.11246.14771322542699623395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e813b8ee4e440bcffe41d083a743184f626e440566c2faf968862acc62d51a9
Date: Tue, 16 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781582193
