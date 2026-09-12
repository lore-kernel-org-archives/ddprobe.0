Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0B73B19B1
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789245034; cv=none; b=utiJzqE7CzIIqrykQivEm15fd/IRKvLvNcI0tFclvUzCLWHMpOaQWbk0gKYRJkfJBf+Jx6dCRGN1/rIRdJymYShh1at29AZZqPzsQKnw3YCI+Gco6SQQT/L7ivhLrTUOfoLdd+Bd1VUt8Z3K2/+f8LBzko1cl18amU9mkM9MElw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789245034; c=relaxed/simple;
	bh=iHmjDSWi6aoo9ouUNDQT1dbn4BeDAo6+RKelyc17mYc=;
	h=To:Subject:From:Message-Id:Date; b=uKt3t+2c542NhJ3YOG5pLsRCU0mEJd2OAn8SK18pyDWKUuFn+KT6dd1vSAo1h4cdbRCua9M3GkRcTMllITn1xP1/QPLTQTKlCyoGKBhoJ7G3L2dpN11vDe9z9x39NA8VgqPfCT5Ti5/RH2NcZJXthRqCsbaOmGxmJ6fERv38UBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kACw9Y2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kACw9Y2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA2BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789245033;
	bh=iHmjDSWi6aoo9ouUNDQT1dbn4BeDAo6+RKelyc17mYc=;
	h=To:Subject:From:Date:From;
	b=kACw9Y2Z/A7OGhLpg4CsuIsUxDHzRFWavtEFM3yoj0LFlnBlNqMZFxleB5CXBcFre
	 KhQbepmLvinVBVeSHrf3kZO9iGMP6uHOTdYlJGAo/c+RH+ZaTX/wObIrobkthcOYwe
	 XaGrZVA8MaYzjly3psOgxiTwFaklHxt9hCCFIOUWK6/l7Dfq2aIndKGqSuq6ca5Wks
	 YTLMdxpULEzyl2SvrLMVgbNX5/afr1j8Pqiht6Pq/dbun8GReN7zIB0C//WU89Jusd
	 ygRlGwwuppkNJItkVf/Enc2PEzD+IacrXJw5+chXaMq00clZQNqxTOsVqYaD0iFzHD
	 tod/1REKI4VVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E1C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924503368.25017.1997726528167391362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013b025263545518a28763c26f2022d177619774afd323f6f60668de485a4b8a
Date: Sat, 12 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789245033
