Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC604C9D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757130594; cv=none; b=IndphkyHUkWvPk5uYTHiACn3ci0e6j6Nb5zJpG0bDbd+2bgm9curBdvdkHZslWiPk61GxJodTb8pq9rR0zWVd2RTkrYwqhif0Mzdnk+/faLz+9G5APslyVOe9DnNt57jzXyRFW8iRDBoejziF4dV4P50i62IWlZgzzpx03x7QN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757130594; c=relaxed/simple;
	bh=EYGtqGPdl0OboH4PNMrJq0ct0stApRkCB+oRUdNXo9k=;
	h=To:Subject:From:Message-Id:Date; b=phX/Qj0JdAa3FqISYPcReDFR15ubmuoUm6XMbwky3f2wVJnA4FtPeI/q2wDV/mQaJXEglqUuIIbrrxsPXmZP0dlpaxg9xLmzLTURw1wzQJ1HuWA1arh+szk0qeri4iltq82y4FLyfb3N17w4xApy5i+u+M2BuQuQpOSv3FnNK+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wx4HAASN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wx4HAASN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757130593;
	bh=EYGtqGPdl0OboH4PNMrJq0ct0stApRkCB+oRUdNXo9k=;
	h=To:Subject:From:Date:From;
	b=Wx4HAASNSbuhNATfo3XqHFCU0W0tWbCry6MS9FT9WuHgGmNIsB3pZE5hDbmLs1Axq
	 pcMu9/Ssm08dG5wYZAbhfY8TLhW2tMHKQvWyf+m6VRcJgvU8UwowvvAKSACEyShjwM
	 O+uywzsdanqp8K/2wD6qhs0bbuAB7yfAO3tIfu6sTiFKBSLSM2UxzAwjdT0UV6oK4Y
	 0EjLN23bUlSxCmfzxYKPJmuRsfJaARljSp6ATLSoRghdR1IngnuGQu5+ZgK3zZ/M+a
	 dG1A2hU6ykNgscG0opVNnfCCYX3P3w/dzReLm6Cah82AN4bR31gGGP/fdm215Spc2C
	 66U1+VaXRzFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B2CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713059357.8872.5994875335423773483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc68caa015b474c39d565ebbd2fb1fbec90387c4826de29866193a73bf7eb49f
Date: Sat, 06 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757130593
