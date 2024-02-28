Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61EF184F
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709083097; cv=none; b=WvrJwwq74I4RAxcFgdziKhrhbBakoAmwN0WMPadVByvqwlaGpD3tE1PBXMjrLZEYS0ew6cHZ3IzcYkWBBWwMrN5EFh3SYMR73Mya33OCdvh0tjUaNMkEv0IgjlcppZC9v1rdUY+hEbbrdEdKYpRFZU2njCYvoweoBArt9omhHeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709083097; c=relaxed/simple;
	bh=SWKn3RC3XTNAMbnCGiT7MYyl97tNpXaW4IkN1mvrx6U=;
	h=To:Subject:From:Message-Id:Date; b=ci17buHlfn/VAPLtgfxrQnsFCsuRtO/+wTcAwsSFhPraRyLsIynyX8E7HbmBY+RKQm+guu57A9hT1g1UaNfuk+G05ygNzKTalH4/jQdzm01uyCrMEVX08dlhT6cBqYxXDSRAMwJHGoSQaOWQOlhgLUjl5HIEk0ncslDfYqqBpeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLX1ZjDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLX1ZjDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79156C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709083096;
	bh=SWKn3RC3XTNAMbnCGiT7MYyl97tNpXaW4IkN1mvrx6U=;
	h=To:Subject:From:Date:From;
	b=CLX1ZjDQYu40TNJnj/bqgtOyfCeqrcSFbphPRiqgQNovLWVsdUWCfBEYS4qP0Wn5+
	 5cHgQRjtOdiXS9YB+S9R+8914iM45oI59ExtjljNDk6wlZLXmh6ZWHtUDeMKbr+bUx
	 MDeM5526ndQmP0qihZbtepySo1Bj1uZQnmy7t9P/YnwPJDNlGzGm3z64/o8TTIhKEh
	 l4+ovIyoidnTNnZAhd2UWiNxcula7lyXQEB4W1TwTyvlaWEjlInG4Jvozum86ZJ1uW
	 w020CCMcPto2hmhGtuEvRY9zP8NWRo0VVi4yq6tSjwYq2Snui2xKf5SJH0CFwYC3s8
	 hrUTqMZM4dz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEA9C54798
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170908309637.28667.1407551642736316979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f5b8deb04526df967a333414955de1b84e8ae4dfbf09e52329f7013452580f
Date: Wed, 28 Feb 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709083096
