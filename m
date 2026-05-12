Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240162264A8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778547034; cv=none; b=AFGIsH+21Ax68QO8XB1btkLqPdd9s03ZoNr6FKM52186MKfFmtdh+2AcTRbFMUUYYg2d4hGGeuOjkgLZK7Fypa3AlQzqGJCK5d88wFRVHn2sVaYP6eEZfkX/jt6D6GaGH77Rj0Zbn1uM7IWhbDEhXF80sRaUnejyWo1McLnGKEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778547034; c=relaxed/simple;
	bh=a+EH07+X2XDf8wlvyzcaR88Rr6ElTlbFT6IvUKzLvFc=;
	h=To:Subject:From:Message-Id:Date; b=Y0aWMkW+8HXRnr/jz06QHLlTdaUkNyC4pXHVewCMWZ6617lwEqdf1Hd6Lv/Q1CLt10jTEvNkvAsKoqCiowszxM8Ce3bElHONIG1ezU9p3Kx9dwerxsFoPAPi5WUE3VfgnvGP0hjU7L8jIaWAiO4YO8mZV2Tek+jPCNAZEmBz8/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elmNb1On; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elmNb1On"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32CDC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778547033;
	bh=a+EH07+X2XDf8wlvyzcaR88Rr6ElTlbFT6IvUKzLvFc=;
	h=To:Subject:From:Date:From;
	b=elmNb1OnakstKQ7fBEU3Rcyxc2qBQ4A+ivORz0c+bH5Ue6Ot9BlM61bZkOR1JuvBK
	 aIPQ7Fi1VU6m45W53LixuNBOI03ZhjlSnxNGwEO6mMG3ai80p28avR9rGhn4O/7+vW
	 gloxUUeLrAHZxjgQhGc6olp75nWhqmA9zJkVpxxkED3kzAfrzxZHv3k8bRq1jFXH5v
	 6MeYZ7hGyavE3a01Zzt2uVcX5wjXLnQhJX9BQf/Ln8zzh/FW8QsQfZksGYc5DORI9N
	 /cIioa2KIB4WUgLIJfxqqvrYCgJoJLW+u9MB8eVPvSCPeGTVlqa/FOUBXE4iwfdL4I
	 sEQNHUHS8jkOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07ECCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854703368.4107.9923360504271778900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda703a492a3c1067320a0b17ed001f72bbab1f16e42c2e440f6410041e26181
Date: Tue, 12 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778547033
