Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155FE2D2493
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757577595; cv=none; b=FSbM6XUcTBHm/9SYXHWbPq42JpBIT4hKER2i93wi8fj3rlSRgS97Pq7zxJ+RxZPsat+Cy0QZpQL1xIh/HgQ1Ry34I1b93xVIkjS+bePR/Ja2NRf7yjohqmdRnxgsUbTFhNqhHsVo/mJ3lyrEz7wT93j/mtUaYupvySW7Okk3X4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757577595; c=relaxed/simple;
	bh=Uc2gwCyHrA8ggg5tIPp7bf4ATZUcxZCBN4bzsm9W01o=;
	h=To:Subject:From:Message-Id:Date; b=LO3Zk9hPGDN+AE/u36ry4XKmQR9+e+Q3RMOmzwzXkVcuiGZmaOyQc44Fszp+V+42lqCiQEYjd06TNsoCIslxYVE7PuKJi+DICkX/EyJ9oo7V2hFu6ijf47XfgfVFPT/zdcROqEUv+1GiOaStCBNbY84XRkod5JPa+xtCESpdLFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjmOvwJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjmOvwJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757577593;
	bh=Uc2gwCyHrA8ggg5tIPp7bf4ATZUcxZCBN4bzsm9W01o=;
	h=To:Subject:From:Date:From;
	b=GjmOvwJtyP5n7fvQZJJt2b7HwhpzBzjzgiRPQ2J6WSOYVPRjmOPPRY7s3iW4XulW1
	 lG6gHfvbhef/Dx3aoorehQQYAiz9pYqwv590tOHqMFSJVdpNL4Y85tPaBPoSsCLSjo
	 qGGiUvxL4Q12HbJ/NSqnw+WULMCH6rXTb15eMxBwmoK9wTnJ3l3Y+3GoFUQ7KHAAGs
	 wxHXSLDeL9c8TIC3pXXPqewaOLh1CxxDOyw+U6+U0kwvZ5tjvHFGNGWZYAq+XOr694
	 a7nM9dClmLEKp1uE+FwNuMcEpNun2HY+fHnkar/TZRMyH4MpouRoTedIJ3zP1tlXX5
	 5afnlBisLpy7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DCCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757759358.341.15369095647669920568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a426514b9d1f1c6a261d8496a2a8631e23f63e6859c60cc16e9a4b91c22bfe87
Date: Thu, 11 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757577593
