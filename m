Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2DC2907
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750573794; cv=none; b=pgk8gC1tXSwH5V41cDpoo365yRMbKO8We6fdvQ4e9hZ5Lm9IcC9Z9bY5Sl26uPQP4jUyYy8AG7Eub3uW5HbeZOhmkRBbh+R3ak/Jx2vlkhbO8Sv745hEF59knNtK3heEd6rKImGcuapFjnpcsGvXu8nU/DGTk+VeHzpQMW86lV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750573794; c=relaxed/simple;
	bh=l6rArpTylywSGK65sXjtEDGYL8MhtbnHZmHrmc1m37o=;
	h=To:Subject:From:Message-Id:Date; b=ex8I5UtmT0AAuzWqEPKvEjXGpAYfXYHft7kQlwakeCvI2d145InDLaUIL8ik7bYO2IIaHiBEQiSuca4I+UoCKvAaYIe5EOAX5u/pDOs8wnWWzsBh5iiyeSxWlpJCe3bNkv1///XyVIe1/lLQbQ79+sUGADa8VLdfn2NIqZVyalQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPxNdasy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPxNdasy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750573793;
	bh=l6rArpTylywSGK65sXjtEDGYL8MhtbnHZmHrmc1m37o=;
	h=To:Subject:From:Date:From;
	b=aPxNdasyiuHXWlEuby1JJtllr2k1nuxgYJj7nJBxAJkjQFHp/Q4Oos6rARZtKVlCv
	 G/IJdcf6XRK2ZZximvxqQcARYsK8LbvoLEH4LODGTl6tVXuSMAOqXgJPOPp29IY7MP
	 6k6wu9GSAnzqci6LNurZv/HA8xbkTboTXeh8bO595Wf6pHcDUcJiqsRwxXVtUojwGV
	 YenW2paE4OqlECxlQHD44lOSdQ+JEdCchX+GmtIJPmygbaUOzVe77rqXECIFyIG1zy
	 vU2QxvoMlD8zm/Hje9LHd37Ey847JoXsfFohy1wJo+59PMhmiPJCyYlVTmibIbGrS/
	 P3wkEAxbC4CuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318EC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057379358.2379.3803635961087098859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d040c2ce892425a65519defe647b0fa5556a22f20cb49f4b7ed48381955cfd0
Date: Sun, 22 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750573793
