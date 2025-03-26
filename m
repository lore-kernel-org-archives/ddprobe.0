Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373364A29
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742999394; cv=none; b=ee1gvrhkPyWgfuDunyL2SvFedsLewp804xlcXmkiRFQoB5nwgV2J5JN3UOQ+uJqrg3F4X9TjyY97k0PBittB8CF5g1W5fUZ98iaL6xcE6U98k0uVQLcR2yMMywdU0spqZbgpCKJDWFWrHYOwItZ5dytJAvoU/pR84ELJVaSSXRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742999394; c=relaxed/simple;
	bh=ix0PldaB33DwOfe3DbZJhvG7+2MOfktyj4cFz5IMYk4=;
	h=To:Subject:From:Message-Id:Date; b=rm64w+AudMpD3MOLrz5/XZn0f3KOP1lbyfDXgOVvU3XzAP9cUS3cjbko1Ud9vHAdCOvjc194/oJofzvORKRApryC6Kj/kDlPsth1Mxh0WlcoJra5g05aEdIWb/EKtx8oTUtyR6hw0oiIJDGqKEI+HqlxBhE9aW6evh4B2/u1Ydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS9/YPbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS9/YPbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742999393;
	bh=ix0PldaB33DwOfe3DbZJhvG7+2MOfktyj4cFz5IMYk4=;
	h=To:Subject:From:Date:From;
	b=sS9/YPbHQ1NOHj/R9iHAIvLfzRY04EOSSqgxv32U03pXdz/lZMdSQ55ZvndeSuau7
	 K7tH9KwGzfvdFR1NklcvrPdcZIHVlVHzALTnjZrWo01GyM8XVhDAy7aPAMpYW+mmiJ
	 I9J5tDdHIPmfC8JIxQGuhvll7od7A/3iehcpaHTH4i5QMufAjbGNq92fn9J79eKO/l
	 IXD/uwiqA3IfWUfmpwqi14LzSbQwmt3SSDp81Xqv+zO3qbawrOhEPQP/ijgU6+QBj9
	 1oNQ6qlLOrSCKdapx4v8hzmx8aArazdSvGpHRDRnjwUxPai622zL+H+ZHeDAxL5Nty
	 vxzL6PuQTMm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016CC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299939358.9143.5346590898157565450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021d0e7c4b4c4a806bc9d340bad593430eafd42e4237a6e972b59cf11e77ed25
Date: Wed, 26 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742999393
