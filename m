Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F126F2A0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764927775; cv=none; b=Jwsba77DWddywBcyvqXHEuP/Ek+jkE/HEgYRPMwm+zvDKasI7pBfFgZ6Yt1wk+pzsfHJ0tS9drsvGz35/+RhOZhe7K/mvqEMO/JffBDDOifk6i1r5hhnliKzJFnjAJIO1N/RnyTpzYmGBvbc6F+qloSFejFtxsK9D89AkjxfgwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764927775; c=relaxed/simple;
	bh=1XXRNDmSUhrzoL9pDlDIySDINN5HqBj1jY02C19/dAw=;
	h=To:Subject:From:Message-Id:Date; b=MNsqkjQBHmG3Z/n02SSnz1mMH4m8jPdA8mg7A4ZQZ9DFDnZvASk9aJTQqnIBkABmPlgoH1rTliagR7Xaiazq/FBBwBFqp2biXwouj9wQTnDMJtuUon30fIQjzx9KdZmQkmTwR1c5wHS2wcmAcec32yA3v2w+kzckenWrEbwvqSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkf6SwNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkf6SwNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA018C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764927773;
	bh=1XXRNDmSUhrzoL9pDlDIySDINN5HqBj1jY02C19/dAw=;
	h=To:Subject:From:Date:From;
	b=Lkf6SwNdcrkfVdiHEDTRB9EHWzdFJPguSy8dnluxQT1DQfv9ABu04TmplT089rZ0B
	 k9jQyQ28xi+tsMpM/6Jz36BjhqQd4OWgcGh8HwhQW8/9+EBLly5sYmVi33fZ9Nn/lc
	 qkOoWKKPrHgo2tEsfX/klqVogkbvi167poa9pFKpohCUhfwioPVgBW15Sjty7qZIW6
	 i7TZWVB01epkhxb0KatFP6rxvzxoZVR1Hos3EBqD26iXcPDCio0rgOWqy04BSlQ50C
	 9bVQPYAOOnt5xXx+KW0mYpY/DAszuXLbBShMdPOrCPEhjQnO+BBaRMEGVi5p1vyKr+
	 SdJiTdWBN+Gwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95671D2F7C9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492777360.28906.15685759696344373115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d78ae90782a8fbae991ada8135988e5289731a8182efa38bd8bb12330e0038
Date: Fri, 05 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764927773
