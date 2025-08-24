Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB42393DD0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756074595; cv=none; b=sieKnuo9gdDwe84rnEmhiFJ4yX2lS2X1G9vKukrRNKmySdtWygbsVXZCxCnkFw5zdZ46u3keg55LDvEdxnduu1B0yF+qrvzZPpi8w7RGF/QfiWENyruunOtdm1GYgMM8oRUFHdTdmC0j2qoBMc03Oldnln2ix9Jm/Jnw5FLtdq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756074595; c=relaxed/simple;
	bh=h8WAMtXBeV+SkSgFD35vWh3IQAwQiFKHuw9piqKYl9o=;
	h=To:Subject:From:Message-Id:Date; b=DAargQN/JZg0kDZEqLKmQ6isi8skJdvNrseyRqqcNBBJ9poCPfDslo3NiLZ9NP80ClZKUQjHr+lzROSSqOo9q/MbqFgp3YzzqSNd//UYpRYDdfmHW6mxbDUUyzJdQIjDafnYFC/6JItwUhhBK2oOj7CzUkHiK9MZ0wwFQ8djplc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N15OFGeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N15OFGeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F02C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756074593;
	bh=h8WAMtXBeV+SkSgFD35vWh3IQAwQiFKHuw9piqKYl9o=;
	h=To:Subject:From:Date:From;
	b=N15OFGeV4O9pbDOHBN7Ml9mxNQ/NZqRjqRd3QPnCwVVBEltb43KS179e0WhgeZvSr
	 83SvVTjDrWNLrAB/HV+LVNzSqcTZMP8ADDGiR7Qz5CetL/Cn2P8r9ah0ny2N/Dl0oz
	 owK7Q9HEFlBi7ANmsRqHrCoFBUsQEWu0Wbq8ShtQJgjqJy3l/MDkvOy+V/YHJDlZBj
	 F1rNxg8VKQ4stQ7zm7i4H66qBXmmVElCb5OSOI6/nKbMEwHT99k4OwHVh8+TXTCfKZ
	 8SR9Pt2nZL6o4DrrPXShFOGXGPsUcLCSP1j1vDVOA0e7XPdTlZhlXimKZCdxepFGcw
	 1ANPTbCBNtBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DACA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607459357.31803.10604313260363755660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e6dfd7ceb23f2c9938a082c6dd74ba90057e2594da49bf6b4835cd5ee0ad7c
Date: Sun, 24 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756074593
