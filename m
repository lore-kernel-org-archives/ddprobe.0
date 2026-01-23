Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A88D314D0C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769177034; cv=none; b=e0aYkV5NfVxC2bsLaoMiry55IC5Vhb1YBtNHT9DaihGTe4NOwvCSrHdsLG655ndQRTLettwB/+TTlsXUWeXNsbYSdsdJvBpdvkw+U9jn4OGs2ysPgU8uUKwcNfPz+PAHoEXBDEQlEMRWZqhfoQLpDG3lN3itP4nixwvWtccp4UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769177034; c=relaxed/simple;
	bh=HfJuQ0k15wFFIsmdYsCFm/uPipcTsPhef9CefDvwrI8=;
	h=To:Subject:From:Message-Id:Date; b=KoZ2TFwLkjERBIStxc0fWCw15F/UfX1WjHPjv+GyFnbpW9Lxm6w3aQAot+Up2O2muaKq2we/yrfUh8+BOHxsQM2h8fUNA1noVMVJWZ9B3zLo6mExKwTfdOmKTYjBkmektdXNbDHDh6VtusXWNxeoScrpTLnZQAy6kQC4OjELtgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEEGDyuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEEGDyuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34C9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769177033;
	bh=HfJuQ0k15wFFIsmdYsCFm/uPipcTsPhef9CefDvwrI8=;
	h=To:Subject:From:Date:From;
	b=hEEGDyuKsWrQ6kiV++DqQtXLw0pdE2s1I1N/ZKXXNuoVmWLcgPkYSmSQt9+d2EUbB
	 yVd1Q3QwLjTufqm2VtbB3bEw4KBuw/nzHpUQDvDIWBO9qFqBRy9zv8TMbU2rI4N2wm
	 b+CihtO08hRLgJj2XI83H6eSE5kiJxehxeBuJP6gl1PMpTiONkKYRZsX7Lo2ec5rp+
	 ezJdyj7H+ZhfQHG86QVHiVXMFe6JPP7zAKgAdTekEyzMgeD02HKyBmmo2Gsj78jqPQ
	 IXioM/B+rHCodt26CRFUqHcnfjLkWDiSqH9bZ1Nzs3shYpblWIACNUNif63It/4CEo
	 01xF0Sfvod+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A32D74ED9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917703358.1075.3333664945915986654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d6d6f1c9b0d143023bc3f24b89168482ce838b70fdd2870037dd324074fc5c
Date: Fri, 23 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769177033
