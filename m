Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24381288D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753661994; cv=none; b=QjmcfzyeFcHablA39DtId6Pv3tiRHcAVUT4InAh0GN09hlhEtsCqtIXdVdDmhdq01QppE4bdAbVXKF6pG5jD2xLe9vWeSwQ7jv22kWFPBxv4kTsmkVTkmxZaCicFzE/pk4NceXpRgEkqSkAoK0hhUqfjMAvLDr9FcGL9qCAbrp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753661994; c=relaxed/simple;
	bh=9w2q8ySoP5w51/Njke33MDyQItP/wMrRyH67PF836V8=;
	h=To:Subject:From:Message-Id:Date; b=HGtbOPUw+5tCM5MzJjvSvE8sxvTNilmjoiK6xGfNgu1LtQ77D3UqflNHWtuWrxy8bdhTr7u+hevOCclNeXLZGXespLhXd1GsZMG+8NAjpW05kz8fRmcy/l/PYZrTUeVezmDt5s/D/kyFwmRxsO2Hi2Ob08AjpXwJn2nqLLLbe7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSRygde6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSRygde6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7072C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753661993;
	bh=9w2q8ySoP5w51/Njke33MDyQItP/wMrRyH67PF836V8=;
	h=To:Subject:From:Date:From;
	b=pSRygde6qKe/Ows14jcnFwMTJA0NWO7idTytICVhOfH/FtTg9Yi7IjOG4c4zljSrb
	 JV5CKwtg/yemR+SWXqqjO8PUlD9KrlPBovUcuEtWorkA2NyKk+lxjderFrns2icw0K
	 /Jsf8kHoIOus35GlQfOZ6aOIRr5xbLhBE2MSd6yviiSzwnzGRgvzPSUIPYJXgUtdf2
	 Uaw8VEf6wHYmKxvbEfis34MnF9RHzgYJwFrKPjW9mSbeMTaWhTNG54k3PhH/fV8x8e
	 Gj4LWjpD/uypsveIPBCkqh1NcpC6mhAVWNTRlrIn1jTYxvVz2ElF2bAuIHFLDL+kTc
	 8WttMN3iwBikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E96C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366199357.7994.4676450393723123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4673eaf064ed65bdb5833abfe4529f970af1cea9905f94027836258151cbc0
Date: Mon, 28 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753661993
