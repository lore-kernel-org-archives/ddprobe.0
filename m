Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA231BCA0E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735941354; cv=none; b=jUCSHqHAibyo5+i0mGte22ozAG5JlwBleXWOWGnYzCms068+kfqZ0i4HOasLaie9ksUe8tLS/PGGn3/0f7y9NEQBtThjV6Fm+5ws5f2vJGgGsG8rlaNn3n6BkLIPWRiDl/nKMSbRmmwVr5WPF/jlBS6HSLxhHx+zKLi3dw8ZZX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735941354; c=relaxed/simple;
	bh=R2n8CUmoMjJ5Xewmr97994OdjkbYPAagZ1LwaLyFlP0=;
	h=To:Subject:From:Message-Id:Date; b=iep3btjiwHI0DxvB239Ixm8m3Qf3d+oyVlorIsYF3oo2VzPq0o/SLpa/F5gVBN5FxRexQGDHFfFfSIkVxvDAfV+9M1jS/AANcJ2U7kkiVEXWhU/F3Kc+Bu3VepvnFHwVCENyFYDFoiErZonyv0IZba+cDMfWDnrJCkoZ9giCUPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxASh3v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxASh3v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE339C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735941353;
	bh=R2n8CUmoMjJ5Xewmr97994OdjkbYPAagZ1LwaLyFlP0=;
	h=To:Subject:From:Date:From;
	b=oxASh3v7ZKJfo9W9/1YOlk5vgWAwKsi8xrSxu2kkC8XYKqn8X6QGFgR8K96Pwkh0O
	 Wun7cFB44FmotpeEfirzTth4BapaslgXlKwTiK+BgPVCHX7nGXk+fEeV8kqbf1yJtv
	 262q5hKHKysmfjJdEhYtxShORD51d8Np/8dfZPFYmdOPgRfvpajTKvSE8/ZqvMVKQ3
	 UhIEuBEQ1hhSLSHXo5kjxi2bPNtvNFBP0FC1fvZQi9Y6FIXgvtT82ZUySS398cqo4d
	 eDmqLsjzGtJ9ipXTlsu5lDlTd07ZGWhorlCjAVz0GyzsOdz1e4pN5w/aZId2B7TGNu
	 7qMXIlXYVU4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9798DE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594135357.25976.16473582385520225783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a577e95511e8c342da8244d88e6c753cdeb778371e5de98558419b5b7c5e236a
Date: Fri, 03 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735941353
