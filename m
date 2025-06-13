Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5711E5B7C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749782395; cv=none; b=opbD2WrTb27I7El/9w/LruHljKcdImIC16Sm9TeXq+QXK+4ogzgv+fuKXAV6etkZipPplWwPdl4wm54+zd7U/2nRKaCyg4HbmE380j7pGxY3vmN2MEPL5uoZAxRZkDqui+DhZB432yWjolG0CLhIInBENubgs2hohPsaGqlHo3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749782395; c=relaxed/simple;
	bh=GdCcOQEmpYgsDUFxz/p9e6dWjgW/fRtLCFYSV2mJCy4=;
	h=To:Subject:From:Message-Id:Date; b=PNO2D973ZA5ylkwXQvFjipM5xIyTvGMEdupktxyRReNIhlEbXk9RWK13e8Faf2gP0VMID1x5fzd7xOuXKo8uRhogJvGi4C+gnpCrtsBZ4WhmTafUu9Dxa+P3qY5oUwZNNfiJ2J1iT6wzXv4wbMxDOVJ9PNknZL2SVY5pGh1rryI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug2dLsxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug2dLsxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660AC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749782393;
	bh=GdCcOQEmpYgsDUFxz/p9e6dWjgW/fRtLCFYSV2mJCy4=;
	h=To:Subject:From:Date:From;
	b=ug2dLsxGsnA0XalWM3DmwfTsy/cRIa6pZOe0726Lf+Ntt2IGryc3b6li5fM6+kOB3
	 q7BAcjvmCt6RkG6yqAIGW35a4gAiVyd42LsmDcmbGrZa5xY/nUaVw2O3+soBUq7eDI
	 Ej2NbQswiXKFivD59zcg1TDZQNVcFb7ldHwkttLojRHna4YEhiYt6Y/RcJYmIWFWP1
	 Q1rEjgYFj0D/iIaYvsfj+eS589+koMywRbMl2rRIWnx9Z/BRDjnYUupgPzATNJrlQK
	 EqWZmNP5IEA4XisOz9ZRnm9Ckov4pLHOZR7dLeWf7vlngj2WsgfQEBRGc+UAIhy25f
	 YG0Z8e34fB+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90057C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978239358.4036.16926844306416731850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781bed35f71cd02953f089ec0689eba126de393d7d197f4d9a9484cc719d74f9
Date: Fri, 13 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749782393
