Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155CB2309A9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732342554; cv=none; b=ttQi0POOh7ybh+o3uN2xX15xncrkhUd0RgzYQplZqamTGMhorFYzwCuvt/Ob79AScU/8rlWWOghZvR8bP2QgZy0dk/jWAC/L6kl3fRH6+2mntXTEBOPsP9NcRdixcUlHEXhEiIG9KAKZrHAv8EQ/azSDEXVKX3egZu39kDM6t3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732342554; c=relaxed/simple;
	bh=VHkhVOPpmVg1CCu8aRPkMPu4QlcC6j8COjnwrwHgxSs=;
	h=To:Subject:From:Message-Id:Date; b=riKS1nQeD50pSkFyOJ1EyNZai581Ow80FthqPY8weg/pReEE0D+gkUnw6hUxjsdTsSqNDz8JVmffdBuuBZEtebS+D3q90E6Gbu7pE+mzXXx2hrd78MZGQFkdjY4OyDnM4Xw/MMxg7IEAgMG0Sui+EwbN984aH9/33aaHcLW5/g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0MtxGK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0MtxGK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A671FC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732342553;
	bh=VHkhVOPpmVg1CCu8aRPkMPu4QlcC6j8COjnwrwHgxSs=;
	h=To:Subject:From:Date:From;
	b=B0MtxGK7dCZh3A6UgH/AJ0nY37FWYw69S/zHWQYzjnbVSDw1himHBFFAkpLUu9aAc
	 amK3y4DZSzNzbNXT8l8Ilt8RH8Xw4w9FA6awilcGJnNiK/UP2r4GNw8YZDLjKXTFr7
	 W2YOSv8LKWKD8RVzGvky0SoZchMAc7eZAGGbzLDt4zZVFboPBUsQ9T2DwankLbHm4J
	 72PIZ7+tsH4tFYqMbYbz1EfBm5ASanKdzwO0KthNKJ28+wTjK9Aqsm21jf1cWqpcJD
	 NsNjZ6JlyHzyU/7OjUTB2ttMV8byYtxc7u2D58WD7VOgFiKeioXeDToQ3oRQuQyJsU
	 jHg6PCvOrahiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96948E6ADE2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234255358.21197.2419842649959759979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e63d77e003098f716ae1ffc472152b12adb6c3f83ebebb1e040c1628c10a3c
Date: Sat, 23 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732342553
