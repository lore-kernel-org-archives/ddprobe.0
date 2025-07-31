Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CFB1DE8A8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753981794; cv=none; b=RCWAgeLLNxoUwWwtHRT2x3k1eHOM5p4tjvd/XnqcuGks2fQ5GuhjBPbTtLa3VdFcFPtH5DjkX7zGtZXpOjzXG9snsEMZlBLSmANwnHmbPH1iTGb22Njz5iuOpavt7grOXiZmBV22wAkPoegBkrb9MBYvxSgBLPINvLhztTMBRcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753981794; c=relaxed/simple;
	bh=ZMX0aEps5zH9J3eilYUaTZddVKzq5TBjKhMec3scuAE=;
	h=To:Subject:From:Message-Id:Date; b=db+l1aa8TG+/YP+nVcu5jMuLgsimYP3Hivu+H2wHh3SnM7RwKVHjJdROlCTuvBhmm2lby6rx3AeO23vVahblpIsbRE0ggjUbHJxNzOecZuoZsGYJpPU6+wOgqDdXBc/rbc1GEJZDSuTPzyMrch1X9eR0SQc4XJ63ga+cAr85+GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MF+TSXWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MF+TSXWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FBC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753981793;
	bh=ZMX0aEps5zH9J3eilYUaTZddVKzq5TBjKhMec3scuAE=;
	h=To:Subject:From:Date:From;
	b=MF+TSXWHfL31SkMyuyrzJLPP7QyQONMmI/QdfOxAqeAKbuIxw6eeW8kJEtP3UD0A3
	 hPX6jPD+PHVOK9g4A4WvmGfvlPXtiadEfp8uGv8GdG5sUth6KZluel85jApS+BEL1a
	 6VKh2cDNcMOJn3I6JCTIcdSJCwigxKYyVCoSQhzlx1VVcLNNyKNxs3OdgkL1+o1J6r
	 Nykfk3PEbMWZwSutEcTJqPy1YNLqkPVEoUNIv9uM7+qO/QXzoD+jjSXZUPJHiL2qwr
	 5Nnt7knXzQnVq+iGJ32X5xosNxTqR7IrRPLUa1q+jepuOM+MtmRb6xgSTiHCN+bBQv
	 WbKt9wvB88JEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C4C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398179359.28883.5646065032201658530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7201bcdbcf5c98bc12e4857985292ed6b3032b6ce9fe67fac903a9b89d2321a4
Date: Thu, 31 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753981793
