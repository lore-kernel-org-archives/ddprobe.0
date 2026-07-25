Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413CE2F5498
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784938834; cv=none; b=H/bLzC7uWxhUM1kAsWA7yPTmJY/LnyRNts6jzP+CtPngqqrY2G40EM7gYgfXqm1jW+qFNLE2A1Tl9rOjnF4xLEROHtnQewZOU0IGAwD9fHKvHnh61SIoxKeGaqWjHv2mERAE1l4zxoMa+nW0yiz/g1RaWKelrfw4EQOT7EsBy8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784938834; c=relaxed/simple;
	bh=3uEnD4JxynDMP/L3BkhE+5tXXkbShIy8QMIyDcElNZk=;
	h=To:Subject:From:Message-Id:Date; b=YbnKusGhRkqSgs7ihFEDITG7uEkxe7hJv1i154z7dKXM8tdqUUWyhbgBz1CMQJFt4hsqdkVC9wuVCN4LLIzrmF7KaOKzLzUSQSuNtM29LyPbvbeouhrvhr0mm3MAsGKLYp6eKEl7V4jq88pnfypX+HUMS2mDcQJiz7qgdHx68+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWUwzfe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWUwzfe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF85C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784938833;
	bh=3uEnD4JxynDMP/L3BkhE+5tXXkbShIy8QMIyDcElNZk=;
	h=To:Subject:From:Date:From;
	b=FWUwzfe2Wv5TfronqSEdmbXLBCUPWIqc941Wkz8usrIeBnup/pcQT0+SWos5pmn+x
	 dCp3odKBZwNcsCGm9Zv0U1z+nM/p4b2Bcb+m9UmJnf1fYx+o0IfJLX4NjswWEA8bZ9
	 2lgYRkSyjAVDmmt+UultL9iz49ppqYUsjWyzXr2z2v7xbe9Ssp6c14KSWyCR9B6C9c
	 ENJgfutSFx95gLv5EaI6bQTZ+2CV2H/Y96+WR0kacy5YhYfrTG3Mq86DytQIWdbTjo
	 rrudKQtu9vwsPiFqDh+ljRfJ2oBuv2WrNH7IIfaMbam0syCEtpJ3xBts2yjfptdM2d
	 WzqcF7oelLvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB9C531FA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493883368.5285.9391024847549099712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223ced3e3368187160c253014eedce382f5805f7a6f23ef8f8aa98fd8a3f26ef
Date: Sat, 25 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784938833
