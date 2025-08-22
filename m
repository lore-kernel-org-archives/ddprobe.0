Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162DF265623
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755879594; cv=none; b=KWLI9LuLTvjAzl/nw3B1jUMtPu75z9FH/NiMc0IGMmIxIcWQQuLSJbNwM2P1EZJLP+qvW5MtDhdfWbFEWWJDQpTuuHo9QLbb6EaZdB5524NtgwDQVZVzUNgOMwieqOq00w08sHGriNdtMdXs56UMmkVW7pSFCGyv5dhsfIaVY0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755879594; c=relaxed/simple;
	bh=0lATE7aPWZhGuccB1q7AW1q9q+zoDK+4/R4859qhn5I=;
	h=To:Subject:From:Message-Id:Date; b=Uktrsgd9TtM2bkwVmDVTsU7QpGw7ErMjjkTYPMeEJ4E8cGVrbghtw8bQdaHYD2T50GRr0BDEYmPSZVyXUZaYvNkhI1+PhWkVEv56qiVLfMH6GDk+4nMChmrVZ9yM52V2Tx6M787So4KaBkikhgKa1sAJo+3ZvVtQkICgN8EmCBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbQT3FJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbQT3FJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF8C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755879593;
	bh=0lATE7aPWZhGuccB1q7AW1q9q+zoDK+4/R4859qhn5I=;
	h=To:Subject:From:Date:From;
	b=JbQT3FJaXxrP+QN/+uHcVRwr412qRNdcexVEk1xj8oO6iJA5uuQYWsGOmMw535IY/
	 J4AF6GAsj9kYhsO6deQDSliQ0JTREm0N9Lcj+c5L4HEJsHYCbbnu+jfMOhae21EgOR
	 kvSasECEhC8052Uw3JHOLdsoUGGq+qfMdgT9EjsvHaQZtk/flXP67Z49ZVY5Cp0Bod
	 ujfCppJGZboxnvCd5gNHDc4TZ3Hg2vNwmVGKn5BjhUnc56uiMPYAb8uFHobpInEfuT
	 xe1oV8/EI4Z9HTD7IzXJ/mP4WS2eJgXoyLFD4GdekQNB/7qsM1tUzNPoSXie6cWoox
	 kd9+dagkSLNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E5CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587959357.17300.17899914146237660671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ef26da48397d8501880d4ae328b92219788c726bf1d3a192f71394c36260fd
Date: Fri, 22 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755879593
