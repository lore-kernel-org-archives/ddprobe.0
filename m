Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB22C11CD
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755773395; cv=none; b=q2UrFN3vqC8GDjkiGP6owi+L1I4/qY2bBFxNkxoqc9NAchvBQO3H/Vzx+g2gPfb+zjUlBHVKKj/k40bZN1i5fVqVImAe0o8F8DLo4dMO/oPaLOUIbgHENcIj/RiQD/y96rGQUiIItUlRkiOGzfgsqsWou3dtYWUmdPl2f/PRDsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755773395; c=relaxed/simple;
	bh=tbR/0m44RWAwQ2iVw70lMivypcfNL13jOjRuOxTOWaI=;
	h=To:Subject:From:Message-Id:Date; b=ey8riRBogLoCZ3QIeU4nKUasnUBgcnez3yAMDvz5TWAW1zXJT8MpU8cm8fNaQjGsDGJCeRpO+CsmJ9j+KVAk8dSufs6YUA3UbG/vtIMRlULvYb1t6xcaJHfsCdwySZzqo4Pv2ELh6mBmf6G5hkAe/3bMBk+Fx9y2VDl35lHUzEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dF4vtVfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dF4vtVfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755773393;
	bh=tbR/0m44RWAwQ2iVw70lMivypcfNL13jOjRuOxTOWaI=;
	h=To:Subject:From:Date:From;
	b=dF4vtVfFg79uMhMKFsaPnKyVqZkGY4gJtUKkrHRY9R9Fqi3FUXyTSbieVyJJ5qrrI
	 CFgUAVgiN4CX/UKk8cv3aha9T4Z+tWhjuYW0Fo2CKJHBIc7p/sCt6n0iUEtuVxiF7N
	 cHD3BZAe745ECKG9S5EWAzRoWn3rkJQvky2InkA8QT8I+HkaxmtmC9d2HEacIeDNc1
	 8KtSdhhWspHE5pi/spNBfaemxZ1dXAXhSNasW8l7AseqE9Ufx5nZvyIL9PprjvDc19
	 PbGi0QlgxHATLm5qTmPbXpAj3vNV0zFVqQdVa7/QRrYwpSLtbZTpkjd2z97lwuLAwX
	 PSOr8Wqx7YIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94FCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577339357.25539.7219650148912669129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7ab137e78d8339f374e4a613986c1e3114f78a74c2880853d8f0c909f89755
Date: Thu, 21 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755773393
