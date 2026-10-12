Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEC03B4E83
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791848434; cv=none; b=PdIOuP5liK/FjWqf/aGPN1qjoUWhi0K8XsuCQCvOgZMBTvIx+TZHSdO27CoB+/uG9LnUCXyfO59tx2UwWYsEA50HxxjN/Ol+Ox1CjDKEVPp866PtQ8+0/Mt71Xz4m/MHma8ZojxzlXvRcAu/IRtDF0E6fOYSwEM6j4A8T6qMlBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791848434; c=relaxed/simple;
	bh=hc9kzoPph7t/IEZljXS1GAF62gnRnzsWPL94J019o70=;
	h=To:Subject:From:Message-Id:Date; b=KbPcNcRqZw6xD2xIjgtOFg2V9RNbtucL67jPc5Z1xp2Tb6t3Gp6nmSSO6xg1lyYQ24jprtARsB8SEJ4Y1OPfpwGhN91XtQrTWp0SeRIlIgWxE37Qly1BkslPffNJKoLle1ELv6/VRLOpYhStv5UVe6fHWVg+jwPH1Lc2xwyCMzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOYZuy42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOYZuy42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D243CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791848433;
	bh=hc9kzoPph7t/IEZljXS1GAF62gnRnzsWPL94J019o70=;
	h=To:Subject:From:Date:From;
	b=gOYZuy42xjdVKFyGr5GXdhb8F8xT/MiwKxBvFWd5IL/ErwHbD3TaWF97KJ6qJFOXZ
	 j/FoD0UEGDf/YeYaFSZhZuLmGNc8RXFIA8WuIKtYjYDr2qs1i4bafWgWmgPbwseeVv
	 ruWCBzC0BIKXZNMA98F+CwnT2Yo5pLrptkW5KOTxGnOh2wmuFqdXeqGyH+uZV3yyDH
	 3xNVeJfyOBkKmtD92PrSKbEiLr8wv1krbr3M7t80ao3cLoZg/QP/ispvr/o6gQsCYl
	 kQVag4SnSI7YhXZJoypbJ+wls1wzFeLts28mh0d0mpMjzlYkt6c0/saAqldeo9HAmV
	 RAFrTQl+9khcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF1CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184843368.19086.17222513307277025451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72a72c425f830c7927747c7f17f6cb8c6f06a10cb2ba153972898491550c3ec
Date: Mon, 12 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791848433
