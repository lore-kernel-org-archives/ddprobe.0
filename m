Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358B42F8E8A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778278054; cv=none; b=VHUA/+k2UpGmEQIOHcbMqt6b1dFf+zk3RToKJyjv7WUyVJxOML1Y3yZ2OgQGwNSQCtldMrgskZZKjVxRZECeMFzH7VpAOzZ3yTxKfmiQfnNDudRhXHPNdSSRrrdw/1XYdIcx4PslGUm4YdckUNlyYU6BWdktsHYlx1qfNK/kpsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778278054; c=relaxed/simple;
	bh=83jWh24YfWjsXiPZkT6SmOL7JqdrzrS8rxq/hmaTazc=;
	h=To:Subject:From:Message-Id:Date; b=EnY8CzsNo+UYWVa3spTg5f8iSYjOrZGlG3Kde7oQ0D/6sxsi++By94nC/ddI8FEmZ7reZzf6OfGctfbYR7dO2n9U+HgMuFNJVbumUsUIX1er8E5ompQU+Rz7NLeuVYMhzzgIMCyKz9cOsK/23Bg7YqpVUi5E+ipJYDjWOskjl7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7WSseox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7WSseox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C23C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778278053;
	bh=83jWh24YfWjsXiPZkT6SmOL7JqdrzrS8rxq/hmaTazc=;
	h=To:Subject:From:Date:From;
	b=E7WSseox+R1QqBPQv1QqLfyk6P88eXznfpLWRnPY/gWhM45d2s0DPzCJpiqyL6zTK
	 r55H5nN8iONNRiG1oF8sXVH4TsifezJ7hIuTOHRYQWWabWpwYQU+LdvuZoPf6YCOdG
	 beumxtfeCZvEg1wdOgz46qhBy3tAh24CT5ecFs/qa+reZ6A5s02uZ/Wb6QjD6g+m4Z
	 2MKfc6IswXjqHl0ZTxc7T2GDp0I+1EV2dU2p/Zkn+e30Lv3KroFJe9GWW6tEQu5W0V
	 ZYc71Gog8DBISQ2d7uHFgcXYgwZWBgMJti+Sbg0h7YctMt5+XD6RX0nIsp5xsGvCTv
	 zFyk8NwTn6imQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D5CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827805370.29526.4048861718544828978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0192bc6b570ed4142278834db3e1b3d424361b2e7b3b15ae7f884df82ec7cb17
Date: Fri, 08 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778278053
