Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EEED27E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719601463; cv=none; b=NiFCGzIlTY8YirHmZ2w23vaZOGJi0GLJZCh+6nJDjRfKubT3IUjWcJZdtAf9uYknLD2HLaNcSF7LcVVGtqS6VLDuKKrrJjgOXGo0txsnKxB5xaQiUrK7efOyXfzSEbtJU1prgWij9JYsK+S9KvnLeT3uoxHCUGg4kEiO2tWB/Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719601463; c=relaxed/simple;
	bh=wbOBbL3OQhlsOIsmuuVMlOUOQ9RYc7E/d4q47FLotv0=;
	h=To:Subject:From:Message-Id:Date; b=FRcW2Zoa6rrPOhGyZx4d9vFXngBpotFZx6Ij2BjxBnjBjnRoW3hvU9ttS1fz3hYw41j57w0xEn1H0U2ARgKpxaQaZ/+5cP8f7umjQVTLWkaRf9zU0uh2yQHQFTSdjSAPkQbvRSQpiia/c40L5pJebDnC07VvsH5TeV//wvMNs8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey6x82Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey6x82Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6FCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719601462;
	bh=wbOBbL3OQhlsOIsmuuVMlOUOQ9RYc7E/d4q47FLotv0=;
	h=To:Subject:From:Date:From;
	b=ey6x82XpH3vnbkXwO1jKC7UqLzjnV4f5jz3XotoZXvj4cUGbvaJcu9fFW5XDzoCyQ
	 opQ7qQfxH2a+GZwBRFWG3Wkh0lLEFwbSMrJK4r/13YUUgvnIjZ2hQmvNUpZwa01VK8
	 qOSvmUpT+RwPPdYHmlSXMBQlNpycwPqNgnVr7RydTCNDyaH6i0BdJEEVI8p2S7AOhz
	 D4zsFM8SCmif+HsbDUe0tmgyjFy86h6quYA+Got7y0/ZzLZg8b6HF11gk4oR2lY97J
	 X82szO3cfJlNYlH8htHoIszk15lIxRv6ok5vpVBpIf00o89eByxaKyvtHQtl3I0nwg
	 wxMKeE4LlmVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE019C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960146276.8171.18081167503335234317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9169c2f2d2d141a951072af8efe4a438698a71c926051f73266911592f0e12e0
Date: Fri, 28 Jun 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719601462
