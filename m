Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6082E7F487
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719608663; cv=none; b=NR5Oc2czfsuOSWrn+e8Vj9N8RFkRQB9yxDsYMDWKoOF9cedPUxkTzQGnebanqGndrGEo++vEMLv2V9+oJ5jhXQYJV4IhoxgxHxISuwMtuuYeQJwxnvQMF4lyzWc0zxzman21GOxHp1X1TB4d/PX9mGrfU1YZZlaTTmH9+c772aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719608663; c=relaxed/simple;
	bh=6b93z0dx6K5MVqlS8JUeR1Vb7zn4LP2n7SlhAqYb1S8=;
	h=To:Subject:From:Message-Id:Date; b=qVLlZaboCX69ykapzVZAfI9RnTtYvs+UnfFTO/lMCZez5ycPMoVj181wDUkm/AUAM4OKdlLtv35x+RFM9lJSOJIgR2UBL8djVa7AsNCUuOiwKBxhycu16Mn/CIeKeos017uB5uXhrwEkj6gZ3WTAnb9uARQaq1Sz66w5d0zcNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXX5rkhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXX5rkhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6F3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719608662;
	bh=6b93z0dx6K5MVqlS8JUeR1Vb7zn4LP2n7SlhAqYb1S8=;
	h=To:Subject:From:Date:From;
	b=OXX5rkhDDVUTItYDxYCG3d3hwMaBNoskNHvVOAxJWMaLreiOJCHqubRbTmaguixG3
	 oYitpfJKCZGhzn1GOExwKoyM1NjWcdm2AzM/M1X/sFUhSlm6/AhTzO2XQkaWUvPvH4
	 HFhN6lqzK5ne5j83E9EtFRGIObMF5LZraUgOpAu+AqnN06R+oC201FxsehFHxMQz7P
	 wdr3+qF5gdgMUO95yi968rcjCq/RLpZ0bizBlzZTEOquc4PzxKhnHcaz8zy6Btf3rD
	 tEIQRQaEw2MnPLwqsXSnMq74TNXEBeunc2/eSU4mk8vSZNLjjWDSh8yFZrTALsQjl4
	 6K+1ZVkD+/OdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C92C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960866278.768.15268400643892392895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8791ecaedfbe8032f0198fca99d2728b9e9f92909f8fe4efd4f4cd767726474
Date: Fri, 28 Jun 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719608662
