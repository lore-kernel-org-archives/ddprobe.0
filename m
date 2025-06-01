Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374A77485
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748738994; cv=none; b=kusDZ1RYUSXoEp0j5ZFD1zVBWbsqJCgQn+KgomwNuNhJ9ifhlALG7GcmwwU608gdckEd1BqddmCrpEBNzz4a6qlKnK2sxiO0pHDmxo9X/GY9aafqBSl0k7/5q6l99jc0iiNBZXX7fHV2HP2Sjl9gl9ZYsd6e6ingV8pV9Ixofu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748738994; c=relaxed/simple;
	bh=rC+ZiUOe4uMylSPbVym6UDk1bmasDPWLma3MMX0+MXw=;
	h=To:Subject:From:Message-Id:Date; b=cVhxBVbCfWMsOAcFD+i7SoLv5bZLqlL5Pf6N1DE2KJ9FLGbmfbzHDG5uZ9QxAVY5d/3HNT6VJ9NNEFe3c9kO4HFzDKIfhVYrvxupNtgowN9SGF9IeS52HIDdXSM2i7ZXL/0MkUBpim665H8OWCgclyIxKrfMYo9NQscYxBLUKlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcPpSMGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcPpSMGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748738993;
	bh=rC+ZiUOe4uMylSPbVym6UDk1bmasDPWLma3MMX0+MXw=;
	h=To:Subject:From:Date:From;
	b=BcPpSMGjWzYaFYC4vD2kKK5XSXXY7ey0/kdboyD68PTxD/UCRNl5qdJf9T9HZYaRE
	 glPNaAmRTGY8vK+VLr2ua1aTKhaVOqu974II5jXaKGFEbwGGew2+FofkfUDG9/aBr+
	 02weRRHAcyM7hhxd/hvlfYhkR9JJURQeffY83M4i/qmrxtl2VnRqmjXJORLkTCwa0p
	 oicjTEtI5kPXkkdYfmj9vFjxVX4RnVPkVHEErCTgRYIjrPi2UrftyJnlQKuUbl+HLo
	 bBFwWAlSzZ8oIYJO5tnx8/b9BvLr4o5GVu0BQ0muq2zsyf4i8iIcIDNw1cBvL3/7Ko
	 AB63fmDhAWKFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90473C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873899358.11371.15984533074587303473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db2745d3584a12fe840489a8188b62d307ca390cff31e559915a0307b44dc8e
Date: Sun, 01 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748738993
