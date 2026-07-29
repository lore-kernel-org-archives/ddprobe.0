Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52712443AA9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785319834; cv=none; b=b69XiL4IC7hI6oyc/OZi4sRd7KZBR04t//7w1GRQ9cA2B8aM1+u+UtobBlH27oTfpC17gf5/HFAWUUYNFMuwaQNdio0db0kRyH5ZznoFtNOXXYBKhvXLUnk5wbz5WgfYvHColHtSn3paaYTi3Tehn2BvNUR6lHj1sMq0/GpYlC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785319834; c=relaxed/simple;
	bh=NX6nBxap1o7Anj8CFwf1oSyMEO2l3saxnB/pwJ+uw7o=;
	h=To:Subject:From:Message-Id:Date; b=UL5Y6o+q3hhefUhTLPEVL7iQODcD3nT2TdExYLnCeT2/CK8fmak7CsA5dBvtNz74VwIcPl1PcFlBZBZLpgtmAjQrkptBuwzjUNvvXDmTDxm8RePVclI1iRUUPbsb/siVCUDPy2QgJJiLx5igm2GkwanVh4KuFTobPF9FfhQxjC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4GFlLJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4GFlLJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA31C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785319833;
	bh=NX6nBxap1o7Anj8CFwf1oSyMEO2l3saxnB/pwJ+uw7o=;
	h=To:Subject:From:Date:From;
	b=a4GFlLJSfaL9kqwhw1Kbos4qeCXRKzolzeoIOR216Ttsjkzbf2cdSv9RfRiWHXxyy
	 aQmlSql5cp7xdmNkJTqoy2ZoZi9kcbysthPoWFO9GMvJk74L0BhdvEGNk3c3idQNHo
	 ukOFVNmIEo4d1kyHtA5ESorlQnmF+7CLycVD1QKU29P/283+ABUtU7Mi1flwwny5lU
	 XkDaOtmUO1LR4cXtLyob4TsahpABc6xfxq3k5iwWN5VfLtvSLeYuyZ3Q8yR1pOR6lh
	 /MhxOqNWxIj5dw8aDztnT6TIjPrZe8NEyxcRelvnP8Xi+I7mnAWg6EXUHx7O0JnJxT
	 e2geiT3H4Py2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C2EC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531983368.4089.5109873696697683367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bb2fa45463af9fb146a65f8ff6b991bf5c6b1f4fd5573d623a83d5cd9f8ea3
Date: Wed, 29 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785319833
