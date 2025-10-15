Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1897494
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760497794; cv=none; b=mbM+hf9d7P/zdWda83wuqJeZHMSBMMczxY2iLCqhwIdmKLELieCZ96GsmvkuFN9wgQcCMNbW7oVuYwkDIou2TDlX5HHrzueJrqK1zNXcE77qLRkJhLCu1vt/tl1MkVTRdsBI4G5E3894dI0hgQW1z2gXXYXSdGlHu3/lNZXe3cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760497794; c=relaxed/simple;
	bh=upIlDQGLnU07b5RUeaL2URTjw697Vy0gQqXFEvMeglA=;
	h=To:Subject:From:Message-Id:Date; b=fSwBh7MnHVhku0z9Hy5/2gxyy4hOPJalL28mZo8WZWEihGRHAfjz/5prlacTB6bTlHElK4sLag7iyxFxwNjUmQvGiUnLvRNOuO1/gWPg8MTshZ3jBYQ8ruadhLNcQD3KNkQP9yqD1n2d9d5IQvJuBL6n/cnq4STNgWiu6vpn2Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmphRMzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmphRMzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760497793;
	bh=upIlDQGLnU07b5RUeaL2URTjw697Vy0gQqXFEvMeglA=;
	h=To:Subject:From:Date:From;
	b=FmphRMzuuvl4tA5iffWFYGltQ6S/M62IvLj4wFcHaywjqsFXbgXHYjIcCGKTZ1fqR
	 /NQ4epgOgivu2T4fY6cFfSeigkxGWh2IN9t5kAgk6Vn14pGnQHLuNv8MtuheC6x3o9
	 dHmW+46ejcyBtGkxENHcpBByKoWIOMnytkLvw+bpNTihG+4k2HS4Cued25ajK6jVxR
	 NAEjtShfZtijlepyLL+2ivpDp7SqWS4VVFJCVAyBb00SquYNc+U7EsWZq8g7oPaTrT
	 HxYe99vXIWOPyYPAhF1UUVU8uI+VOl6tCYbUx527hpS7cOVQS4fCRD8EUbTNVvMX5b
	 QUK251hBamF3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADBCCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049779362.4136.9060478136641204200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fbbc8773c7c11e3bf8cf90627fe485af15a95dea5aa204e2c30bb433069ce1
Date: Wed, 15 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760497793
