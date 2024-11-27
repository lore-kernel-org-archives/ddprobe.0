Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE54154BEA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732697154; cv=none; b=JdwJ9sfut/Dct1Mm3NZVYaPLdzYK9kGwixA5SIugkOR1Bl/19WhR8g9vbq84Qdcj+WzYkk358QZAb4YIHzzmVshTvqEkxkon6UzhZezqcACl+95xOcD7jDgyxCg2CpZdbPGOXGs3ob1sr3XN68TezTmrvdJHyZpj9gQI29/+LRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732697154; c=relaxed/simple;
	bh=hNbDmKIRZhB+mW1dDE+zmTYsvbr4WRdgKHwgC5ay9Yo=;
	h=To:Subject:From:Message-Id:Date; b=t1hEw5l9WqAYSxbY36whb0DsH4toqUGk5japLlI2jdRY1OaOHFUd5HaUjr9tTDTkt9Kas8Ig9IstqJpG/H5oPwUxTla23qGsKbDbczyDV4g0mC7zjMxTeDpfSWTl/9gVtRxBWmaw1K5k4Mu3ddoCXpE/2FBCQL4q/nV+jz8s48Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nog42dKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nog42dKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE54BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732697153;
	bh=hNbDmKIRZhB+mW1dDE+zmTYsvbr4WRdgKHwgC5ay9Yo=;
	h=To:Subject:From:Date:From;
	b=Nog42dKxYNfMIcd2kE83oHnZ4St7AGN6S04RzVj0d3tZPhhR/f9kTHXzmV23R6Mwl
	 wt6PzjLYkTSji8PTmFzZMOq8yHHK+COt277Mc6ZbMKOBVOfcZIUg3jzj60jVHqA8Pf
	 7V3jXDjaZJnRh9FsiOXWNwmVQ9g1naV9GyWnIc8OLroe8OVt9mMEjhEYzD2/7corp5
	 NbNxn3Qaw/5igoasPeYCy+oMXW/2W8cGctm9AQMDWAzE+s1EAiekkYz6AsOgnqhyGm
	 juJqxT9ajN6ohLKIhwapUh3Z2dwXmo1yCIR65k45ECtUt23fJOov+v/d9uwzgK56V3
	 2AIvRTPhubnuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC3AD609B6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269715361.10976.17012044938555376894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7339bd5600335c74590432a65014da486b17448609094dd7ebb5109cf4efcf75
Date: Wed, 27 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732697153
