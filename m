Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C43B8406
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780631074; cv=none; b=e5mcXBmLxyZcVMkKBRww9sPHUMoU/BO5JFawPMRsdEkAboF2m6LeJ7EAvurJhPGabpXTktyAtQAETW2P8YFYUxp94NClKiNQ7jF++gav+Ofd+4kaRhcj4Mw3i0debRUGzL1sQe5K1Q6Z2PZA/UnpevBSwqYyLv7HooGtaSt0X+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780631074; c=relaxed/simple;
	bh=TtdxaDNQqVHxjJkth2YkjyrvmjBr8uvoikeb04F+kDs=;
	h=To:Subject:From:Message-Id:Date; b=TMbp4YVF0Ggjbgumgv8ai0XG45gR7doteR0eUlMEY4m35OkQevd4vsv6VB5X2++0gDc+UKX9ZC0AR7IQPzIFw0PCqbZEL1NzlSDqr0DekULczMSt9uvp2xAcOxMcniYQQJFJU0PgPE7dyYGrjwgkMKsP8iaK89NCd0+sUVok81E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdWuyz+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdWuyz+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AC9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780631073;
	bh=TtdxaDNQqVHxjJkth2YkjyrvmjBr8uvoikeb04F+kDs=;
	h=To:Subject:From:Date:From;
	b=rdWuyz+oSmPRflX7yR2Zf4/OTOU7q6M7aQr+BOkKcQnn9VPDjyu3gkv3onLpaxQrU
	 DoRbNGA9wLpoNq1OSpl/FedvbSi4ZxwcJxfOIzwaeD+DIvtTuCBU6KapLNycrXW1YR
	 rwtagi5qi4gK4o8mp1AZxTTS2nuNLIfV5C64Bgvls2hQljCHrHyp2KszGY3AJHLDhy
	 pstU4MKOx+GvnRpvgNBb9qeM8L73xlbUl40K0RkdqvQcaaqRN1VNsB9khxsgsDTg3r
	 6eOU0CnsOkQJYseplKeKb8NhDoZlcHTkp030lmOwwtJdNGjtwU/Vf7Ja7sZlmm1ct1
	 g35003s2YwXuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA282CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063107369.432.15381488849946535660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2879a2e33af29b85bf54a5eb00b19211da8e10738257f8d7d161df755ff3d1a
Date: Fri, 05 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780631073
