Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432402627EC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746460194; cv=none; b=KR25XzjQwG8Iub/NdIwVPxOcRuk+PpZwJBONYAD+6rN3+W7eTYtgLi/u4cFrmhDMa6kJwWOaLhP00gwuI9Tszccx5ErL0PrY4W2HgL8wH9tYw2M7AfzMY9zJZwZPR7KSk0XRVypcrBTxGc/UHvq67sqkjzzu+c4gUWwpUKvPrco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746460194; c=relaxed/simple;
	bh=a/uP0KPIpHcBG9Bo0R5YkNOwgjmhllNjbviBmU5w3DY=;
	h=To:Subject:From:Message-Id:Date; b=r7ksK7yW1Ifx1lW6mI1e5m1u0OdljLdHNhx6IJUlkSF9lpfa4fbXiCcRrVeZc6ehw3lwRU4YFqutpk0rGcBh7eQr5ZtoxNoA75FBS2pcaCvAbnzRB5DZHauCC04qDDJ9idzg6Olm4KDcemzRkrx5wgvtF+BeSuF6oxiyJt3kGp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxMdB+DC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxMdB+DC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1BC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746460193;
	bh=a/uP0KPIpHcBG9Bo0R5YkNOwgjmhllNjbviBmU5w3DY=;
	h=To:Subject:From:Date:From;
	b=sxMdB+DC1RijpIX6v7uxbpmUH3+GXJn8/ItZXMnr0NoMrs1FxynF5ZvNbjxTdPodz
	 ft57unrp6LlBi74PQ0t8HIpn5vDABx8zD4WoWlz5U8pVxzq87pPOfw3HYJQYR1BROd
	 SJWQs3uRL/eCvJ121acInmxmonSDaDRQpOxZAA77ux35CFGEM+hG6wuJ+sqc0AQPnE
	 N20fZXGXhbqUlpq/39/JWFLoTv90F5cPSGFjiZCPSROAquPSCVRG6HckR4+PJtlFSJ
	 Muf3Q/5xSCJshzKUyOrN44NIVvdJYrMVou86UOjXKnMYKW0J7uCCBHbsEuacaLcTHp
	 B7mbXJiN3sAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC77C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646019363.27106.17637686254195474190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d753ac94ff3428d1c94f3b3e2bd0752bd042b77f8b443b6e8096421c38f6a6
Date: Mon, 05 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746460193
