Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7D3909A4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780425874; cv=none; b=tbGsxQnJCXpmn+oD6e5g7wlo8B/mn+4pGCioQQbAaF/sFYXPgPY1Mseq5uGW7y9j+BDGFM7axKiuQnkKwD/c0zkbnmGzwyR1HklCdmGYNi/DivFmKBP2PpgOq91PYc+lPqkYnlNilsV7Un76mrMUc7r8aqMfAZ8kmPsDQ85E4F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780425874; c=relaxed/simple;
	bh=zDBluWNJeeoxYdM/MZEFpmsEOULtEBbd/88gB3fajGY=;
	h=To:Subject:From:Message-Id:Date; b=XKjsOuDa3lrMYqVwPdmvUERQNePW+NOZhIZ8EFrddK9wk98q7PtGuV4BI/bVbm0rYa19b0skXhzEuFHGVOthDYPq7T7KsugkAeolnSzTtp8quD2e7Wfx7cupS3FTXbcNhE7GawJQhgdB+bXFGuDjaNbhMET3nSI9pbOiifaBSX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTOJoO5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTOJoO5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24C4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780425873;
	bh=zDBluWNJeeoxYdM/MZEFpmsEOULtEBbd/88gB3fajGY=;
	h=To:Subject:From:Date:From;
	b=GTOJoO5JERiC+1XHqliq8zIA8rW5BS5nOmE+B1LlPEG3wSvJ+avO90CH9I4BKwg31
	 xHnpGnScmxjfDjhDentzRLPlfNy8lAyLrhFvqX4ijBdIi5AzA/uKi8oPFucR+Yz1q8
	 Qj2HEVw1bqlEDAQafoMIQMW4J13IfaRzKmkWUBsDublNl4XtY4IXoUnRqPpMsn3EYS
	 6KQXQ+4ZFpOtWoZP+UVmK/wJW1FKDo9rSQhGJ2Gw/TACZo+RWI51e8xC2TGlG6qof3
	 LsCAsaXIX2FHA7k32trm/MRgGj8jvj1QHQ+eA+/tDvFRMzjF4NUqwLf4LjY+jMmtbN
	 9Z5bIIROYb+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9684CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042587368.15469.14528419519596503227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fd6ad93fed8104af5fbe48c3cf6fdb69c6bbcb3da4c5c7237c0b225b212ebb
Date: Tue, 02 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780425873
