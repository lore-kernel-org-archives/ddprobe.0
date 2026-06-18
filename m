Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479493D79F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781786194; cv=none; b=QMWg+VjnzfAyhr1kyq7j2fuKoI8woi84Llc4/5HXk+vpcC1uqjpawgpoDA36unlfVmPVZfNcOfgXkEZFoWmJTX4jACwQ8MJbOjNme+Mr+cnuXqFHq2yzM5qCy1wWxdNQF55TZ7LlIrjQeoEKHqTM3siWZQhYGAilrL5jTLmHbNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781786194; c=relaxed/simple;
	bh=3ayLuZcA2vFTQ55tSRNW74/sLoiUzoqPi3rrlMu1jic=;
	h=To:Subject:From:Message-Id:Date; b=uRJzSvtwFTRlX5+TVGRkTzSBXCtKUzm0hksb7PuBiu8CogmyaB8G8X2seKVsqKbyTdjsUS8ZWDJISGZKlGLrw7YJx02Gp+tA6f3pzpQ9hel+POjqcbD8E9fTFHJzxnJN+ag9AFQuPWJ/76ZsCadydf+Sl7htYf/ExkLmd4HaE9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ophHmC6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ophHmC6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E29C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781786193;
	bh=3ayLuZcA2vFTQ55tSRNW74/sLoiUzoqPi3rrlMu1jic=;
	h=To:Subject:From:Date:From;
	b=ophHmC6qExbz7C+1EMLIwOlUIij7dnJvv/VnJG02ux9xLZ5/eMTUI6Rqod+fpfWci
	 3FPqC/EtVLH+S5CKr8kKJQKalClWWU07ErHH8e2pDlkOUEYYUEkdXzUcTBF684vUz7
	 qQydqAr7UQeUf+y0eRA8zBg2GfzA9v3txOePgXfcpj0lOCstd1nBKo2QcZTP05vZhI
	 MPzEd2DUYgx8C6QgGwIbyLaBtK1QayNweG6AWnSTQMLVo9JulIsRHvqglkHE/uOsFV
	 75Ff4liU6/DLhNYBo4fo/DeXcHvJpXPiB7sSaWPcGuuU6Iv736+s/mquEILivR4rw9
	 15IBLVL9FxZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2F2CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178619370.29222.3818302521669689978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9653a0f7fa010f7127c748c7e0ce3f9764d1c98ecd36df4b98f0f30abbed0b
Date: Thu, 18 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781786193
