Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475AB2772D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782214594; cv=none; b=Yo/DQTnbzVCVXznUcvj+VM/r+rdtBfPYZ5+ZBvPL0rZfXQL73laxzuusq2+QqMowtlO+h+Sjr0UG8jKGIgWKQbEvxoJvjRd24H8zS8x0cr3zE0NSmkQAAVe3L7AT8daFQ94dTgyu43WL5H9z+sNmv7lwWvXKm/Ks2W9NkfohEiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782214594; c=relaxed/simple;
	bh=NZY7HlVQkmjIhRYX/2CIVFHpMi+7vPUpfE8hgbG5iDw=;
	h=To:Subject:From:Message-Id:Date; b=SAgnth8joVXT5PADuqeRAEdzZhIuL1ggcctTKGFm4gtENQf70H1dBwho0pWt3EBQJwVaeYU59fGxkMIugUWh8zDbvQPwuB4T3ZESYFID/e+SubJ6iAnp4NR9uf93nRsf3AUvXPK9yvrQcaVv2vdVaiDeARg5w+foLJ/buEk/xzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deSbDAir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deSbDAir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FBDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782214593;
	bh=NZY7HlVQkmjIhRYX/2CIVFHpMi+7vPUpfE8hgbG5iDw=;
	h=To:Subject:From:Date:From;
	b=deSbDAiri1epD2DVZbxN4F5rURmg96WymRBTPQA5MVZv4AtjT0liI7PFJwlHtTYfP
	 znaDhRUbfxyE21YRuEh6MXU19YQQZnrlLRgizyQ2tuxqmmt6TAhFU01heylf8xrHdf
	 1Te7PwbsUmji18lvdpEvOBtSlOGIkEsxfxTpSIeYdiADtZfV9aX2FAvetimy8Av5np
	 Xl4ZkatS46d8wo0yyZ47XhbiR9M95OO9zbF7lXxGrGher9D8GyglLg5aTAg7eDbG3b
	 6f6lVdwnZL5UpTGtOVrk8gUg5sWk1GEKxlTjp8JVdtmGJPtK925FKOxqssaytHK3aM
	 47mWKpV0901mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F45CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221459372.17432.12701369352731169114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855eb8885856bb211af3e3fa6210c0d5ebf91a0eb4974f5c79d4f049a4601b5c
Date: Tue, 23 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782214593
