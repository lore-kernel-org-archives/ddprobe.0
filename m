Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54534181CE6
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719407603; cv=none; b=Mz7vL5oicXwwfOitIKh4oi3yhwjV2g4m2PMPbbhSxwwCpYI3QsqZQH6rp5mbZFhUZ94JqfvnkrrzmhR6Xiow7Mn8ROtTvXbrHz3EsOx8RJm101u28c1HtGJj+vnOBqy+bh5XTIR91MCoaBOiOxraWH/oUv9rF+cgOxYcHbRtscY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719407603; c=relaxed/simple;
	bh=Ig23sieiFAcafi8+P5E+eG2WX5TA/I/XXP4zT48jAeQ=;
	h=To:Subject:From:Message-Id:Date; b=F8ComtouGQHiyVlbnXmz5hVvUT3h0b/2CUQPi110ES2VM3Rluvi9dJbNVY6izvqu+j+4sUfZ53hb8huVPiL+42cjIZCdr+5tWph23EUynd7GpOwFk3jyyA1TFchMFHdpOTmVhrOkS8iZbeWnHhZl4EMs0K6jO7Cc+Rxi76dqhkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdKAOBtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdKAOBtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF645C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719407602;
	bh=Ig23sieiFAcafi8+P5E+eG2WX5TA/I/XXP4zT48jAeQ=;
	h=To:Subject:From:Date:From;
	b=fdKAOBtJxWnyAjRu0r0eUHVgFRxYXMkE6VtVA5UVRxQ1zpEGinwma1JkYyNP98wDO
	 ZdlAmApGGpUYkSjXfWUAe6r4Ly1y4GPUFZ7yrWlHz+VNG8WCFL7Jt0IqGW1pNk0rcd
	 oH6TT6dIEOuevQhAJc/JylKKcOXAnfAXOgzjI9HvV2wAUe8hx9pKJnqIneVHqsEAuz
	 z2/qAAwEfnVQtk1b47CWIO6Nxfg6dHqAMMteRuoeLp5Oph4E1wr2gj/EOJOVeuW+xc
	 Mb5zVuHatf8IOjc+hFEn2dZay793Byvfezmj7h7a5ONJAuspfpLdb7dlXiDSg2asLJ
	 lonmnSb6z8BVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F75C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940760279.7504.15614203430361950745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac83785397aa6512c50519a0a55ad66608be21e42ee21b1fa0e53f4198f3ee1
Date: Wed, 26 Jun 2024 13:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719407602
