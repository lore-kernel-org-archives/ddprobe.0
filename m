Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140419D092
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746633594; cv=none; b=dDYYbfcmUQplTN7As6BRrO3jFyW/QIW66nQbJ8bba5awjxjPkIAmTjUJ4+T4tVWUL8SvcBAiru1ojGAzr3m942u0o1UO7JFhWV0XsgV62rEpxf0UcfXzubSP9Jj1lBGEkVhW1c0F0y1aAA4B+1R03v8pdHBoGLhQg2k3bjMXNSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746633594; c=relaxed/simple;
	bh=vAwDQu8m4TrttLv1N4bZzRIS64YUr6ohseZjuXvK9KY=;
	h=To:Subject:From:Message-Id:Date; b=UKoKG5bVoLTM86qQLCIXXYeKfPEq3JveVDuJDA9nrTw/qBStV3+113D0tFpsdJ02jUa25l1SWVvK5DAJ/p8ZH4lAvxHE1Ls2u05CzSEiJc5CQ0VtDwZG6DWEK6D3WNYtrTnFURnff44nNzWB2U1Ni4nUKBGgLOCf9wEpISIZuZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tF/CPNas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tF/CPNas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6B2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746633593;
	bh=vAwDQu8m4TrttLv1N4bZzRIS64YUr6ohseZjuXvK9KY=;
	h=To:Subject:From:Date:From;
	b=tF/CPNasUEfOt+b+tFFspKwNfnFKZsURfOY0/x+oPop80rLxVkfUicrV4wc6bzYnr
	 w1Zaa2LpBzNaR/Z7WzAgJzhdS1tvDdMs2yynmKt5Ufb9HspkfbiSk/9dFFIHbw5UyN
	 aMq4YzVN3J5SWR6jDK4T+c4rfVQhZZ9p47OvhkjfeSn8KIPEpXhwHmikU+LJp/vquC
	 ua61SnRsgUW69FnG3HR87CdtDaATztSaqpsqL32En4ZvT3h6dWxed27j4PbWL8sOS9
	 85bPWdMSluhhir001P+fX12CmM6lcXVez2U2gIxRoNicNAwL5r7YG4otGlGgynRQ6R
	 wYccrGP6ILOIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F974C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663359357.22039.15934184002657083604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bffce1d4187710452ce435f76eafaa342b71942cfbdd049d73aeeaff58ddf9f
Date: Wed, 07 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746633593
