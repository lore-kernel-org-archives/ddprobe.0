Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA45C8CE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783904914; cv=none; b=J9FgOGnRGyXA1DT+bdXz1SLx0Rb91JV6gANQokV+77+oY+dgDti+02zXnbHKc9fAJbwbWmYIiE2zaYHEjBQumIxqQGdpSdf6v6YhKobQxFnmcrkiy7VQkuZfSOKxz8El/DxtgknFcCulwV6BUiDhLl2iR9UIHveEE/ohA16CnnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783904914; c=relaxed/simple;
	bh=KoINysN8+Mo4ae/0XDkAA0DSKkQeDSgbGt10aWkCXEE=;
	h=To:Subject:From:Message-Id:Date; b=Cz1/JZy/5+a36seIC9UJruWrQNI7V0Q68USytKChGF2vb+Nsnt0CwglhlRvHjTJtismiZjdVW4LhegLXQEYuARodXcOUHy3pJ7py5YbGeNq3GYpjTYrpZEkzqK2eBQhsqOIibFDEBMLMUgZ65CNV+o4agovDsGf5gYOdmScnI54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS96THyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS96THyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FA4C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783904913;
	bh=KoINysN8+Mo4ae/0XDkAA0DSKkQeDSgbGt10aWkCXEE=;
	h=To:Subject:From:Date:From;
	b=WS96THyPoqyjkQPKnXowqaNzoVMXhYwa7Wy8IXVVg1YHPu45GlAsJGT1tpA8uDN5o
	 MOD1jq+UGoa8TDbvnMDAzE42fQ0rGuaecsy6vG57JfFDcbThp9SmnU29WHrgjq8NKT
	 HM2sauJh4fmfXFoVNLbY8Z5xJRAqtaEF+jyPEWgwl1NXSLhpYe9cm0CSgcHijeqrfC
	 TZ13ShDMzVaV1Ap3WzfL07gpxiGYRf71/S35cQsMwocDtopGqZoypFfCYUsb8AEpHc
	 DJqkwtdccKP1DYYJ98Vud3Qf5TEIJ6K67YoC6tQ3O/yL9HzQtrf+ZCcQyZmBfZzpMG
	 FRMK5ABztXrtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E99C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390491368.29462.17678190982008746421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3744c138eaca14fe17d49a519064578719b551240f96eb172a6d39350fd237b
Date: Mon, 13 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783904913
