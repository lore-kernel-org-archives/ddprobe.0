Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F1815C14F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784494714; cv=none; b=BALk2tCwLoR2bYbNXkNcLT+AZcGXeqHbuj068umUEYGcPjKfUErUaek54TUos5RuwURZRUP+j8UriPp8bxydLD7lYTugmdvxtUcbjMuTQ4BL9eFa15F1/i+jHL+Tp9QZKxN1RLEq5d6N+OZP4XkzcR1wLOF/FXplA4i2Kzo8szc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784494714; c=relaxed/simple;
	bh=SusFyV6j+EUQYg1E4eYV+Jm5aRKNChLyyUmHorgS/VY=;
	h=To:Subject:From:Message-Id:Date; b=bmcfduWzQnv9r9Fyw2ixP0Q2yqlfXHhWHNBGmrqmWsnY3M8r5lOPFNUBXYvOkA3DmWyt+g+evWXVehBNAVrRY1CH4gPiDZspg2zYF9WAync9e3FiExspDQs8X1ErsCJ0DApxYUfpD8jXZoQvQCi9sFEdQENQnP5Q/5Kc20vcWA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpg/vF1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpg/vF1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A7BC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784494713;
	bh=SusFyV6j+EUQYg1E4eYV+Jm5aRKNChLyyUmHorgS/VY=;
	h=To:Subject:From:Date:From;
	b=mpg/vF1zs3oPp3MEIPnMpFCCTXZLDL5IgyZd8nS7E0ne9Lue5cufdI+4jpo2wo4BI
	 QBl7qx3MZWh9sIsEDnoAHRl48WZTgj9a3I4YxXmaVSB0g20u29iDn/VdMOhOU7EXdH
	 XOsUPf91EHyZZYC3QTTm/xCw0IzI7frXR8qvXl3EJ+RIqub9yNsYzRQ2uJzG1xgCTG
	 nDkyO9PVDcPJD54Sm8X/dBt7Fy3b8tU2bX9NG9Tc7PTTjSqmbS2TwcWH9Im87fkyvX
	 TqQx7ilQfH2HH9lnCpMs2bQ8qVVY+1WcbEADES4yq0CudXuRZKNWoKPwIBgXbdTPtM
	 MPi99BDuoXyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BBC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449471369.30891.14294843212815497755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec363e1ee90c4f31bd20306d4de66669dc9ba2d0d2df57bb408b7f05c367e54
Date: Sun, 19 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784494713
