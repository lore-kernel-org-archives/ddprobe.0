Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509981519AB
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738773954; cv=none; b=H9OjNbbqrVtOf/WeWXr6Q8w2cohDPUOh+pmULti5Zd8ONyPdwkNI6N6+8EO4sufbkKo59Jc2pIgK7BR4HHtn7AG1p2YL7e3W5ah3rhoy9ki9ALVEo48bDw3lIhcu7AI28my4WKRxXMo9PFMtx898FcxwCtriZjdLOGtwWciXnX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738773954; c=relaxed/simple;
	bh=u7w8lw/Br7qbQF6andS8nNqGWFO9cblDugA1CKqbnx0=;
	h=To:Subject:From:Message-Id:Date; b=MP0qau4jJqyGHDMiJDbeJwzPZOp1+Q9CHzMOA9bPDTrSjnq+5Gr3L583r+D6mUx9TFZIfnIh4cjtQuzwgK9dOrSDclsHbQEu5fEmzIxfLOdWR9J2nExo+fCyiluvX99YS87g6plPHJyezp//vfW38SgZNKRhy09H3cSehI6whTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIOj1Q6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIOj1Q6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F32C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738773953;
	bh=u7w8lw/Br7qbQF6andS8nNqGWFO9cblDugA1CKqbnx0=;
	h=To:Subject:From:Date:From;
	b=kIOj1Q6iUGD3XlZVNnjXLS4tk6QCa3jzn+Wlq/7SalKjPrkSi7AblFezbqmBchCq9
	 Szzj92FGNxpW0yURcj4fOuZmLuAJ85+GD/enkqeH1Y8zYGwEZTfxxVpZqbO9FvL2+U
	 n59ubnHUDHsJqZG1nuxS3hVFDNmvNDK4XTUeoM4j9O3vVh3gfqrmBvTPtZGFfuJ/M9
	 2hjjCaAkj743X6DskIxqTMzIpBG4/6RmkOs4mRMbXVfer8JWctqBxyWdGjtEAvpPtJ
	 I1xKJ+eEmqNxWOKKop5V22+U+nhBfBgNFdBO4n3rA10LOWlx29EH4Kum1Y2NFTgU29
	 yrtb5wE/VgtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E2C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877395360.23383.2738046850716881379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781a2f2594aee91eba5ee71049cb64667620eedd0badc2dba9b601ca4091f54f
Date: Wed, 05 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738773953
