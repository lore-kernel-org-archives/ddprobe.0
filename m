Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333861946A0
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753492794; cv=none; b=j0+OfRCucav5ywsWorrHMqczl1Z+t7zHAiAlEfZ+YNj4xCyDtZcUfbXk9wa5x1V+wtxoffowN5oy5PXDEddPctfGofLPBjZs9MK7B3H0wpYWoFxM+vKDZKP/Rij4wbCxuA7pjfcVaqCYt8+tLODco7gNTIIaIjwMWP/ts/7w1tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753492794; c=relaxed/simple;
	bh=E6mfbIk+2fL9elEFZdRDOCSd9YOHT/KYvlBejUUfemg=;
	h=To:Subject:From:Message-Id:Date; b=YyKSvPzWxJQkZIEXtppVF8LK0065zBPpRqqNHoi/ce1sl9OFH6A1lRead1ACBPOvy6YDdmTV5IVVyv7fI8Gb18QWX2Rl8kUf9ltS28qvxi1ulRhKdw1BSJr+lvUjOg0WtIAAqCw3FkLOEHlYPfe6NUbzxj6NWJAINcASkUUtGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcVm1Ki9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcVm1Ki9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753492793;
	bh=E6mfbIk+2fL9elEFZdRDOCSd9YOHT/KYvlBejUUfemg=;
	h=To:Subject:From:Date:From;
	b=lcVm1Ki90zfuGsSnivU6h1kIw84inDtkw3hDJ4l4iStaQX2yTcUq+wR6Mt9ADh5yl
	 f8hGfe18v8GVgKAmPMzLsnWYh7nFLAeMPCunZiRhjq5Mg6Jk4i5Fbnbh8TNi4ZV5ZZ
	 RiDzULC0Et5enYj6YHCSnzZ6j+MRqsvnO1ZoI/TkmKvBODcTDwcBa7EY6/2mvzU5Bk
	 mcZ1jG84Dz+//E4ppjkLIj67mT0UdUZGRDSLrH2da8Oh/hwIhiFpZodZfGpc7rgurL
	 xNTCzzxBBEAB0a0ozYmAHnHtVYNgxOabE1kniEd7crrD2ffmWVLcrL4h3+9BBwLTZp
	 5MXw3vTZeMMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B5C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349279357.26323.10508721535534599407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d132867515505ec0a662da0e09ecf270c54a6942b77b837c9279cd1d09ce4a05
Date: Sat, 26 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753492793
