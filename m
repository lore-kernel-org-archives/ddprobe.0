Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C995548BD47
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787313634; cv=none; b=bSHmdTZ7nnm85eRKVijdgYgtVJQ345Kle21cezLGk+APatT6e56xg2bl76cviEYUj1sWp9M2rL6ex9/9H6k1N7aoLhFBpjL4/gLmkqD2VNbNrhH0IaxFdugYPe4OYNNXUy1M4usmH8W8TEuT6wDCDjlf5V1rbYsFWW6t4RJ18pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787313634; c=relaxed/simple;
	bh=aTCE3Rymm1+bXtXkovdUQRVrWwhRcY6zim7yOnjs7jU=;
	h=To:Subject:From:Message-Id:Date; b=DOuo6cJAGlJQIuuvWkH49GbyMMsCUxBqSXDTstIwcfvjljUEwjGDHJDI6H/pO8UQcUBo3/u/sp2qZ1COyNCfyy41nEBiGuzS0iiNQ52cnx5tmBk5dbG2O9XRR2rLBOc4D/At3Jx+NdgfGRapVidMyD3xxsfVcmUXvLTAzIiVpUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmDRWhWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmDRWhWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE50CC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787313633;
	bh=aTCE3Rymm1+bXtXkovdUQRVrWwhRcY6zim7yOnjs7jU=;
	h=To:Subject:From:Date:From;
	b=AmDRWhWHoqRMForNODBSaNyKQCHQY7kdmfB8EIV/QWfWfEDbKnQkzojv2AUYGOfsM
	 MzOTeoMTLxGQI9jjDgUOnMkkcsDrruFuD+caAtia8dYNnCP6202018EddX9GaaHufK
	 oHSbI84bUj0h0iCnN2t1V7Ol5/8W3g745lsK3ktZEv4EAU/LRZHCRFM7JAac2w73O0
	 +1vyzUume5hZGOqDr59tbA5SIC5HyxCXKF5en97QlRXB7n3hFmFbCaBcCEcoUFbSV3
	 rs/fW0JBa0FUwahEBxfndokSe5QIivs/PAzq1NJ/MeAlXNQX5Neb0FweM+5sxarQQd
	 H2JVYr4cmpwag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D09C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731363372.26562.11790601885797457257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23d8d5229c023abc31cef4effd52643b2f2bd9b5e5103687ef5a8adb52958d7
Date: Fri, 21 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787313633
