Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E9C800
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737830154; cv=none; b=AK3WjqLcfrmMeHIgYylD/n4GlaLCPP/vilU+/vAhgWE4ixXzfMvC3sPhoPegMaA2u2yG2PMHoUFgPriovlCddBSnH0pp/nHv9VxkR0Kql2KFaxmp6grVcBhNog+AGlf8dKPYbFD07UsoagVxlxsOpEg0l2mav2sCdZWdPV9+dWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737830154; c=relaxed/simple;
	bh=9ywyiA+Eyq4tekSKEEzGXHdaRqVxn0u37Ooh++tn9Vc=;
	h=To:Subject:From:Message-Id:Date; b=ebwWlsF6ToPq0aJj/j9eOmrCSglT5XnNF/sFr/Pgio3aqjh+g8ioM7lYhWz628VLxxHRRWNtevQlHodhUmtr4OpvA44lYm3xL3QU54fz0dMKd0NQRdgmN0vIDMfwmvg3EXNQi36rRpo7Q18h4wQoLx0ZVRr/U/uuHQaIS8YkoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwJj9DYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwJj9DYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216CC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737830153;
	bh=9ywyiA+Eyq4tekSKEEzGXHdaRqVxn0u37Ooh++tn9Vc=;
	h=To:Subject:From:Date:From;
	b=cwJj9DYRsNWs9z40k24UegeL0OCSBDqM/A+Z4dTflmltzKIy/jL59yhVDUyOL9Ef8
	 0KFlwW3WHLJWWSsszzxxOPnhrB16+BYlkrlsRzPJTvSd32WSv6I90qyybbpGNqFr7b
	 NvCcKc/ilqkxJ6xR7AXLAJK0M/eHJeycNtrygJX7MoHPQXh4mwQn1XaqNJjvjGi1SF
	 ZDSUHYV6eii0uwfhlE7lA5BgKiDQrrnLiaGEh86qmF+raBeFfGRYjPdWVbk0YLJXAf
	 W/fxMjdq725qJiIDIjmc5og4DeUvua3qps/ucFO7zXqWa1k8B3TIzQB9odIlosTuAQ
	 2wCySoFgsCEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3CC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783015357.4468.16881999417995546446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ca72a962cbefef465f145df6244df01e0a9f3f33071ed2ccd082a3415fcedc
Date: Sat, 25 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737830153
