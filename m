Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E6B14B08C
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743881394; cv=none; b=EuHaC/k+bzW9Xnq5W7TgoAEDrJKxYAJo1fjWXYQzX2uinY0gcN+EfXnWoy8ssXdtdp+MnOa/JLaHdxkcaAglIyHqnsyPUqi7SybsnHWmaq42Ronak62kVysU2injqWgzhWCosfyIyKx/r5D7fPYS0gMxcuzKOarvADINmXokoj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743881394; c=relaxed/simple;
	bh=ni7BOzw/ip5Tz1kEjuEgYjUPy8sxdOtrsajTBkWr7iQ=;
	h=To:Subject:From:Message-Id:Date; b=buHZf4ePOmNLjk6OTwHzbiZg5c7vlYzs85nRH99xVpfUhzKrzUFMHt5iQ38bbYcoJoOQ2tWTaxLes5Psx8zESLx5L1zqN0vvyb5ZC84664Q4IsdTp7SlMdtYo4DlVMJ5x98/ADCVGdExnvf3aRMq5H42oPhAWX3JSE7eCiF/Unw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiJ1Zh6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiJ1Zh6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8ABC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743881393;
	bh=ni7BOzw/ip5Tz1kEjuEgYjUPy8sxdOtrsajTBkWr7iQ=;
	h=To:Subject:From:Date:From;
	b=uiJ1Zh6wENDmAjY7PH9Zx2RdgicHygfwQMaTmoC8dLng5m29Co47UNwHapZWlQGbo
	 lSmV1Q8xe/5yD5Ly23+ejHG4SWhj53X37VkXXzwVKYvyhl6H+Jnngxvi/6aXQUQ+Aw
	 01DCKik45PnY8vXVl32uf03Edw6IxydkVFb5JG79+M1KZ63+q6sD5hOaxX9X0xl4uw
	 Bn+tN5zhk2x6jILLxa/YwDcrlTYKn6X5MJeVdCa8jUOcm7tbgXHDnl/P/cHJ0K/fc6
	 ql87KLD48EV0cOvCqvUmnTzfQVl0KNaU8x+NMDuH04MgrLT8aPT24C8Utx5ZmiTuLY
	 DIonJWq8vrHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9687FC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388139360.14975.115064304685381331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a313677c0c1d7443f76c72bd16b592cc4131f84e0b7069f232198c4713eb25d
Date: Sat, 05 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743881393
