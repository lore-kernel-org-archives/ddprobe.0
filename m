Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281803D2FEC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792226434; cv=none; b=PqBN8z+aJXQmZUk6Fh2LzQsZldMChIhyRxwF5hfAenjPaYf6WURDvfVa9Wg9l/Zc+ylZGMx9Asy7wWtuqqo2Vxmoy0Wn98l40nyOW/XqTFYwS0m3R1OsgQ9/cbi4TKyxK9IfBxb3kEOJM9bVGgWPfMBPKvDl1klNw+Cn3G1BbZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792226434; c=relaxed/simple;
	bh=GXBotiJzchiS1znGn8z8XEvCsuXb2MN8586PrCoEefM=;
	h=To:Subject:From:Message-Id:Date; b=k5zkkWFzjRcejn/LOJGTvBbW9I+EAR1u8gmnq+x+28zhsYK0Vz08FomLHc2XZv3Btrjo0eERRj8eF4aJT7/2ZVc8DHAnWIlz742KeZp/J5Zuvqfq1QgS6H+t/TgBQDFHW8wCvFQx1MJAbfnT+QMZSgGykVYTMyhd7GYWVVlN8rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaSTy2+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaSTy2+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C8EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792226433;
	bh=GXBotiJzchiS1znGn8z8XEvCsuXb2MN8586PrCoEefM=;
	h=To:Subject:From:Date:From;
	b=SaSTy2+sEBC2J1F8EcX8bBSjCpWukbdp/gwEwb1rhb3kAtGpaXgYFftpw4LXLXwJt
	 eTD1KxdqUkA+byEckVBXwSre2haU6Md7Q8gt2lz/KlCjLhsQ4gynU8/dToPAYVwbu0
	 oNOa95WGHM3+J5WUvVHbPmTNtheApLibgFy8qIVaL5FOHgI1p6xf2lPU3JJgLp4IUT
	 HogxD0CvW8ae7ByxjceBV3Nkt9wvu8r/LUfUbRlY9ff+ApcFX5MLytyrIkOH/+ZoAK
	 5ARMnzl6pYiq8W2PeX6YQVNOd0hFfx4Yn1cPGwBJwapAV/vadYul4Dr7lNg6na0zMw
	 4bvi5oYYAqR9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB0ECCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222643369.4129.3215000351482995832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19c9d480a9b9feaa90218c8871ddbb056478f32a07b9b7a13b90a3d0624f2a5
Date: Sat, 17 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792226433
