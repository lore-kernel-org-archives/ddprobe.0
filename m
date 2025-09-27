Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157AE1DF75D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759017594; cv=none; b=f7SezHyRogyE6om/DAXgANNM4YU2KIZjLiCOd7zLRu7+QZj5pkBfHle5oLiQyExGUhc/bliTcGpe4CBXLY7IkODFhIWLQYZsk3+rRfyK5jReVjOumk56O96ZWK3crXQiLmizMHY8RGuf5KqndvPz/NsTuIBojmlSomFeUQc2HvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759017594; c=relaxed/simple;
	bh=dWZYQzqhdzHi021HNXzbCOAvtBfdp5Gt7bAgVplSBUQ=;
	h=To:Subject:From:Message-Id:Date; b=my/HXSAMDh9dAOSRGf3Lqc4FQGsqXsl/PIoXBbXv597/y1fcdghKhf+acnLhco9Q/z6GJi99Z6jI4LqNrUeIIVQdiV9CCufIH1VDc+u5lb1HJPrfxNTH0AoM2lWlg/XLnKkMi7bZy0QCB0QOl4Z8p6fnYXIhsjb6RIBunHl3Zj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDyoLOMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDyoLOMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759017593;
	bh=dWZYQzqhdzHi021HNXzbCOAvtBfdp5Gt7bAgVplSBUQ=;
	h=To:Subject:From:Date:From;
	b=MDyoLOMkctAqK+bJo0p+ksTnyHj+objkrLj0OKaHGy/zmTejd3hsdHWQn961pD76c
	 sJq+J6YUsa+7TJ9YvCkhf5bM393fPqstiVNmx8RZQMxnyQVlEdiW77o+ZbQ7Gc4YtD
	 l8EgnCX5WvvSC2PFgc4T8yWFRHHn5RJd30DOHmMWKh6iFxhKDeh3ML6LD0cmptpSYq
	 eL/p8Ha3Flod8hC1s8BWhhzLfaPhd1mWDwlxstxPC0d7pcrAteJeaJ3B51UOcteA85
	 3B2Iju9L0C73qEwGUykhu5arIRYhTHpk6GxUQolZffbac6Uy3XvJR7puAoOuirHF6V
	 4zOlplYNSnrBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A4CAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901759358.19306.3887565129170369932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169be0239e6c033f6eb72920745b2f9609927c424df39cd14769d0b2c69ff7cc
Date: Sat, 27 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759017593
