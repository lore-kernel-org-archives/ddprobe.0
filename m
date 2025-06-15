Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BACFC2ED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749980994; cv=none; b=uXcn0kS/jVXXvVg2bMd0ibO/a0pL7kfckaODmuW2T0hHJ7PpQ+a5UfAH6HjgcFdSxFzdNaDB+CQH9pm2Duz/3erhpse9RDCQ3AWoHm47U16ZP3ip59XWC1gqYfBCcgVdw08pn3VQrFrclBdkq2xH58U/T6WCBwpKvkLrYsgsHnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749980994; c=relaxed/simple;
	bh=WgL07c59glcFaDWF1NYuOIxUljn2kdFhlaQ6YMSLAtA=;
	h=To:Subject:From:Message-Id:Date; b=kXatIqF2LqRDQcAPopgiPWFiN3DLI/XlzhfRR9LYeQ0XVoEXGUXB5oGkVZN4NlfBi8rTfXMBKt0/mU4Z0krgfIHvMjakdee42lvIv3A7dAUE/vQITje/HSvw5TLXc7U20dy80IK7enNLtjwaAFeCBOGaCWt4IFx7e93Sq65cyys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr3HtaZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr3HtaZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD635C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749980993;
	bh=WgL07c59glcFaDWF1NYuOIxUljn2kdFhlaQ6YMSLAtA=;
	h=To:Subject:From:Date:From;
	b=Fr3HtaZCtNFRwPxPN+t1Q75PG+Wf/svUtpKqBmMlHmKry7KWhIoKz51EK8xcNWGFS
	 UQoZiLctq8jn/8H9sPrXkLKs+mvGkyd5qa/PKlwFxtnvxEo6auKXi466Pf0cZFX9rH
	 U/4KVk3Ai2KK7m0HzVwwtj5VKXKz0uXoomsgzd2fITmizDA8nxTcH/68QAjPl27L8o
	 8QwMG4nn6dnWfurcWixt6c0cl92GDHLb7dPYMSzRRJLd4HSrX68W68HcC/0sOtBXGx
	 0ILZ5hdbwv2FtDfX/ti3p2AJZlxC6tyF3X36S2cRCMHjh5ErDXcKcoswdRTAtchpte
	 vHV8oHojGJrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987C2C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998099358.7550.15623510290094638429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3cca04f1a3f27cbbca5729e7b4c74194ca2cb9736a623f2d4a4636fc23862b
Date: Sun, 15 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749980993
