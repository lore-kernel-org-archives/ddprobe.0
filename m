Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C23E247291
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767913434; cv=none; b=n+j1HhRPRspfk9Re3wGqtCXbLvxrABPpxHWg9FlDDRoIFKtbal4fkOco68aODYM65ad1EgHshqDFCiuc0FCClIKdT0gW9PF6eRnlKJ3gkMvH+8WqbFRP4/PrvJqNb2JQlPhkbhiyv9SfY4kbJ76og0sFGP+QzyN3Qz5KgBulfFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767913434; c=relaxed/simple;
	bh=xR5gSQCW0NcOfW01p/riKfart5bL5hDVgT44CaTEvEs=;
	h=To:Subject:From:Message-Id:Date; b=NseqZVo8naoiKO+Lm6TfSzti+YF8E/UtBwDEKSrJwh4OGF63R4+Wa9W2w5PFuIn/B9hsyPApyLDMea7CoI1zp84fgSqeFzvHnctNy6OGeEjUJdudOH2E0sjweXswJK/svJpq/d4JNNsi0XkZ2lOsw4qP0q9mhqd08+CbNYSDQuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyC2cFtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyC2cFtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913433;
	bh=xR5gSQCW0NcOfW01p/riKfart5bL5hDVgT44CaTEvEs=;
	h=To:Subject:From:Date:From;
	b=UyC2cFtu8WWM5MsFZ2Asa1BnYcQ3gcYLF8YhnCgy4oL+uzHonElRtYXMWq9OTreFq
	 vVUL8oaI7dCNviv/3viYvnTo1RUtS8FMtKQPiz0q20gK1npEKIzaLRBGljFz/ppkI3
	 Vc72ixIpHK4867XvfhHtNmtunzvlt2H+nNoJVXtPg70giKLaiW9rjcRkzGsL5Iicq6
	 2veVdDiFByKCWMbmUQusJPh1BlmdPRmavQEtLNkirdPpNzcRxA1cDPRJEhixU51dsG
	 PKi4kNQcbhXzKJF8z6NCqM7mv3cevtSgCzThMMDD89tg5CLVuScW3Wl5Sn0P5MROD6
	 O5y6zUaE+Ekkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D9D232C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791343357.13380.5815489991528260297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1bb23bec9d4a434fb5cf2f939c98a7d4c8f79e862e5e5bfda5c98952a4deee
Date: Thu, 08 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767913433
