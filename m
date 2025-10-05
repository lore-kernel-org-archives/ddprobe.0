Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3E1E8337
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759682994; cv=none; b=K7HyA2BrXe8Gt9/UCMmPMPTA6jnA2DLygjTn+yAad6meOd/ZccG7r+Ftj/7kuHyVLC0my8CwJau9Cj/pEFy/G9DM9FAMEMVLz9uSR0Ye2ANnLb7K8AvD+hpGQvrGUhW8OZTKsNu7yl0AIR3gbElYwH4oFduN56Jziv59oI5VaeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759682994; c=relaxed/simple;
	bh=v7uWqenPA0Ggeld0FAkgv/wchey2vhNX5QiMiKQ09kc=;
	h=To:Subject:From:Message-Id:Date; b=MIPyaGJLiZvIVZHGTuBKMTvpBkDK77X0Vmx1O0VOG94MD9TiJgbwn8v4HujLDA7OAIQRGqlF+cOTUIWWZt8MPbxMZ3zFCYK+2Hoc5XujcCUtOP4bNMpcq1W6MynF8Z4iMZklavwwdd/laJNPHLB8v27j7VlAIgXL4FSYxEQTUvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikxD7H+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikxD7H+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759682993;
	bh=v7uWqenPA0Ggeld0FAkgv/wchey2vhNX5QiMiKQ09kc=;
	h=To:Subject:From:Date:From;
	b=ikxD7H+qtdQkCyOLvOKNecy0oSmwhELL3mQNvo1wS3ue+nYfHFsc5n8X1BOfyCGBp
	 eF2UNwyWJr7Ox54K+SBj/BzlWIfsNplXoJfUCoOzRZp8HvcDa7Tulq3DKKLRPhImHz
	 n4P4yilG9Q8RolU6wYYZ0md6eE5ZRCUrHUY/3kCfcTz/FKuwViElHZ00IiR4musEDW
	 DrHK86A0jYwuwQo+GN/PKbsUdne6VGuCTy9QLRS2VbiUjPny5z19h5zvnu/JlAJe+A
	 yUXKRo41kzreF7zx1WSaBsFmkiVOvsIYrJQIchclbIwpMs0w+7D1Qhz29tx5r4vf5C
	 5FcEXpOydYzwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91388CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968299358.3491.3006387863057112121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1345d01fbd8b7ed4db46625dca3b38e065d0dfda304ac6037468d8ac771188
Date: Sun, 05 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759682993
