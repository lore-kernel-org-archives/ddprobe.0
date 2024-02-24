Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215132563
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708761497; cv=none; b=iArgWAfPHC3gZcVbEfSmrvIGciU7nnqt9NHvRWpA2z/84UM/cKxyDiq4ubmkXTv496P4+LyLGusOioGsgn43FF/+m79AcX0WCqlZBmWj1wE89QR8zj5ROfgcFuZp0H3yovri73li5m4fNjjjMyxxQJUA+mj0gbSwL4XkFzKwD6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708761497; c=relaxed/simple;
	bh=cMv9Jj5L61FUtdqrQY7vDmys+DivBUheyWgE+2PDx4U=;
	h=To:Subject:From:Message-Id:Date; b=ATT7qmctGv5zo8X6mL5EWlQB2ywXqMPrh7/KqW40uzfYemwVYlAIimD08z+u/NDNaBpBzCxQbF9i8F7UtBOYneCnvzNHzK3Umj+2NZtf3EotNUu4H0pDwg7T707uxjufsDoXu0MrMSUqnEkiGa6om1Z+gt+ooSPqBiQinNXWmuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHLKI6gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHLKI6gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE4DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708761496;
	bh=cMv9Jj5L61FUtdqrQY7vDmys+DivBUheyWgE+2PDx4U=;
	h=To:Subject:From:Date:From;
	b=WHLKI6gh87AoWAP2wSXfNGjRp32F2ETXqrFt/g3o/NhC4BaUH8BnfiWPaY529bQ6m
	 W3vLhpHD0QeHMQly1GCXTAlcLzZMyOIhQoC+v4NNiN7mySL2VtsN5WdLzP0A2Z+yHk
	 vg+dAxwkR/jvLV+aqXUrZI64Onh74AikncXLD0zfsSyPobsLqkdpUZldSYdu/AkweC
	 eixDh8N0Z7DLNw5fhZ5hDuxO59gXhIsDYQRbiINFsY7yMVRvCj7ihHndlMbjAmydyz
	 jI7u1KGyviS0DQ6nQaRVLj5AGbx9pjPn1ES1PNpKmCMVTwYgn41ZFnZ0C7CdgqWVWY
	 xVIAoUQKE5ElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF4CC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876149637.14543.17944573300766097362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bc4bde0387bb5e142aacc75e9a904b58f939ed39adad2f74822267010f725e
Date: Sat, 24 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708761496
