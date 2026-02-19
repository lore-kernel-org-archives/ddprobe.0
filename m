Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B834D39C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771520094; cv=none; b=hxawCik61pcFl824d/JnniqES0qY/nMfDIAk437T19MVexLGePAHX1TfRLfXAoUQSEHU2OUrPh1u3EW3KKE7vgkWG2m6wSny7nUaISe00L3E43n8aajTtnRlMm07OF+AEln3khKgLtKb1dh7XpXyxkHT4TDLHK945IZKoqMbID4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771520094; c=relaxed/simple;
	bh=kxfYInbKee73SRfVEfpzORAKvUGq65bUoCPOZ+YMzLQ=;
	h=To:Subject:From:Message-Id:Date; b=llvn2ZWPuTIqk9j7M0nktPOwf77mxy19GQp2GKuhCcqLfRcPTLz5kJZHtKuhxnSx3FyhDF041ez8SNwgjpgUZ4kQA9lSgQ0LotaZi1e2ljS22WuvRiAbG/mcGHqyE5Hf5sadpLWNgSx8LfJMp6F3BfbNceuPyU1ONQyUpoga0is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPDGu4kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPDGu4kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771520093;
	bh=kxfYInbKee73SRfVEfpzORAKvUGq65bUoCPOZ+YMzLQ=;
	h=To:Subject:From:Date:From;
	b=NPDGu4knNcIJbbt9nhx/+Psj4KnWwxn3rg+rBIxcqP/zWOWiyB3wjCxb+kDRWIxSS
	 vkJ4vijFkeFGJiwnOruzrOZ1EYgybg7HKfdJZHNFKf8MD1YBa7cHbz32NwylT37/a+
	 K+Lq1W6lsd5qGYiYI625mlisV5wa4sdPRSJySg29ohKQhh+kv+YnpF1iRlrNUh5tdL
	 Kf0/mLD4nKUXUEIPW5S0ZefJeBDoMVuCQ58gudDxm5BQ2fE3oxlTlFS+7IVags2xnC
	 OUF161R3N48Z40IgdVFW/KwdPXy3Q6u+WtbJC3o62motF9glwFms4/rL7kidco7Lod
	 k+opoc4aux36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E88E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152009360.28129.14442368220769902596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19d8525812a0660464a09a1894adf600795086d6e178b9daf9f97bf124ee7ff
Date: Thu, 19 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771520093
