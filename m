Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AF25228
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718374703; cv=none; b=nBmfmmcX0xLchJznauXBzWp+Wsalm4V6eWNkt1XIbl6+QOFE+UPdT9W8yJZ55YYCz3eCFjkuNu82zpp5titakguW/RGvvmwVgXmY2xBWPGWHkpWbEInq5h+dIunmNgnHLTQAceKPywuej/W8kj53ykb8GqnddrTDUOPDx0rglXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718374703; c=relaxed/simple;
	bh=m6kCKxe8eKXGpEaKz8h46UZKdQlkXC76MJH17kfPfEY=;
	h=To:Subject:From:Message-Id:Date; b=hoB5CdQviODuelPSlYXZFKi2hjiOl74OUwM9Z9PKgp66i+iilrWm9K84FAQNabw7soeh4K3TQjwdezPmrYi4r9X3bsmgs6nwPcev59U6hMzeNq5w9z/BSSXgjyM/NcPwAcUMMZZwQ4xJeAX+7Fxg7rVR4VQxILtEsOQvCp0InAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bi+IJTgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi+IJTgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDC4C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718374702;
	bh=m6kCKxe8eKXGpEaKz8h46UZKdQlkXC76MJH17kfPfEY=;
	h=To:Subject:From:Date:From;
	b=bi+IJTgIWm+lXHex1t27W5nNvn+YvameCcGZDgCpoY619rEV6hiJljs5CNz9K7bSD
	 yR8CouONNzNtaLFkTFDpTWXFp83YH3XuM375cAzYba7yQjwkb3QfkBa4FQ1L5E82UX
	 zhnZM1ZBKWr1OKI6IwvMaPy5bXw5lB85GaJT6Y1wWCQ/3HJ4FtPixRXzcY7OQopKTY
	 tkBuuKfFe0s/8YVkCGiDLXORLCzPd1svk5NgGLO0ARLIgUOf0GKr8YKh1hTB7lR8Q+
	 AP0Lagp7BUPO3joXRgFKGxMpQVNp5J2/R/lFEXkiMGQUqHjDb81cdcMcFV8GVTrQEY
	 gW3ovEpGc00Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D2FC27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837470281.10704.14131622146634423537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5920202db8b7018b92029b9e732bbd27768a70c828630cbb0594807d16fe86b
Date: Fri, 14 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718374702
