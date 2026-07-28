Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40634473C8E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785269434; cv=none; b=NQviLnbfJp6xB6pWjA48WeHSBNoEc21lslBiGZrc1dsY2yUkr6kGVfVFuvYKRxTutDOcYvJBfm5E/5a31rk8GP+DH7fEUMSfaRckDqYndvhP7JAiglbz4J+XFetWFsO6dMVSV5XYx85Z6j1Sy5ygAV3fAquY0KitzVmRbor80M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785269434; c=relaxed/simple;
	bh=OBMtLAy9q2BEaPcq+D/oo2Eldfvd1TKUS+5E2aLzQGc=;
	h=To:Subject:From:Message-Id:Date; b=jQUHqaNZluVH/1TZkQZVJLBPfzrrOJxrsPV8iYooDXIcdeaEF5Vxequ58oXCDAgks/kSnDzc+5+hXEdW7tDq+jkwxIsLuIJqiRFv9MMGnyOi2A6ro0FGXrCcOpf0KjeCbU9mJ2Zfw9nUYfhajCDWz1HqV6505QSy5WTTpg9+X74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7fQEgFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7fQEgFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF4DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785269433;
	bh=OBMtLAy9q2BEaPcq+D/oo2Eldfvd1TKUS+5E2aLzQGc=;
	h=To:Subject:From:Date:From;
	b=n7fQEgFxL5jKx3uJxDkW0lTwUu+PO0jVC+d483XcfhOYVCpbQEcuOjv0mw5dypWqu
	 UZpAFGoHgPGCqMkFuU5Id8M0gYSzmnscF+Z8epprDWupSEVQr6TDF+OfYZ8uZTQisE
	 ImF1FrHKUZDjGrftTwMtfJ6K3umnKLpKUFiik2aDRyiLSirGvXkcT/Ng0U2C0LfGoH
	 tfiIalwP/YDX9ZWFtEQ52FhQO0pRxmuZJbPPIpSyaCwCbUwmx2HkLzybTvBzomdEWt
	 OYQV5kbq0vExVwh/umaN7uG7vrE5fWG/Vz7vLQ7a11EEd9UTWchyh5Pl+aUwSpCp3l
	 otWU6eKS2geRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E4C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526943368.27273.4453173256991387599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e47da35273f7c5839855526a90bfc642e3e32648250d665f7069af471c30be9
Date: Tue, 28 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785269433
