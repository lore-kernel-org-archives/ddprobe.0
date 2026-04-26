Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5B31FBC8C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777238254; cv=none; b=hqC6x298bUn4srZrO6P6zFFhCJOnC1FEeVaUVBWRJ5GxWW7CugJLH00Al8/8lgMcMpyDnSMLuiej15Tein/qjoK7lGjJQ0XzzyQnOkCK5Z+jv3QajadH+PVY9dNXrGEyxCnZREYnMQg9OJAZHfh3vR38P/RcP6mPrHygUJA4enY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777238254; c=relaxed/simple;
	bh=GInTu3C6HktWgTZLJAgLQM9W836uU7GJb93fcsM58B4=;
	h=To:Subject:From:Message-Id:Date; b=cf+PUuGNcXo/UKG3DtFH2PpTCeUJcOLXeKh8ydK4A0vkp85EALs6eHkFLfubBW8n85Bwdw17Gzqlhl33niiq0ROqjCf1SgbYtAklxFb/DqFGTuj4SZKF7pamV17V6rtd5Sq89ZfAnD6Fo3lVL7yFqTgmU1OWw20cwTMAi9emVaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtyleOHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtyleOHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2772C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777238253;
	bh=GInTu3C6HktWgTZLJAgLQM9W836uU7GJb93fcsM58B4=;
	h=To:Subject:From:Date:From;
	b=JtyleOHSLlYI1wV8xd6IUpJbDYfpmC1a1Ev3c09nqFavCPuV55x1JhT8HcDyCzJO9
	 rkBKX52UmdGgmLzJxpp52/HKhGpL5tStbrni0b3VbMzxf+OoyMttRUoJCCeNTKSDdb
	 Ewr35H2CQq5KWw1KvyXryabnGRT3uo1FPXx+1txsWkuhEenrOIpcfb1qYAS0E+3Fpj
	 5PAYPwWrZ25yIegkukEh+il67cke72wlZspPrfNcghHHfvnOJJ3gLcSnGwkvbID6Tk
	 /Ib/7vZ2gGiK4f0v7hPzI0m98o5qVhW7oviXpq3YZYOzucyapUsgmd3zUGmhGoalSm
	 L3ADVQGNTxmAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBC1FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723825368.1869.17106788836498304885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45f396dd150c37805710b31ce4320e7612f0c1a534c7dd944c7e54da75b2488
Date: Sun, 26 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777238253
