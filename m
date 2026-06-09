Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8B40D576
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781046934; cv=none; b=IzFDylBWByaSOjdX9MkCVRcETXM4Nb6y5RMcfPSc+Z2EZF7efxHv/UDfqmRMOQccwDj6RtEyfm4CBPKmdJofb07yfQ7IjXyv96cPEbXLSr51zeIEHLlbnJqWhTPfCIbXST08hHPzZAVG35rMRkGJJuk5ZvA2S+TmogTBR1MFexk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781046934; c=relaxed/simple;
	bh=6O6hH0ecYLt311CtDsvsunM6QHUKXKniPNfkMIKZzSM=;
	h=To:Subject:From:Message-Id:Date; b=drNLJg1SZZvneVReN9SPEWXeE8rDyXyg8AQfQjIx3VnYn4/VIdzTICUNL2k2j48llZviry8K/f9RJ0Q8iZ4LV4D70h1U2vIM3AkXM4K5LhwHDXlIyz629CkwOo7PYMinpcSUEiZkRzqHdePZS5uBzdyWNo0+RznrKIW8kimzh2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9Go22nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9Go22nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80B0C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781046933;
	bh=6O6hH0ecYLt311CtDsvsunM6QHUKXKniPNfkMIKZzSM=;
	h=To:Subject:From:Date:From;
	b=O9Go22nnep3qVbo/mol43xrsNicNC9uWTTVCkYEDju8/L5W9EUGJI4WOdXp9nJu5L
	 U4+fmuse/APjYxsIb8oGBteciNOVNbDsTKAglMQa6CsI4YPYKsSJ8ApqbnC2QKzknG
	 OavwhnDmim/hEQZiuWeG/MO5bJPvFkEW33uTs6NBSo2hpYv1sZyGHdKCG2qCUTOkk1
	 Y0uo2C1Zjfcl7DCyy57scL+TZ/S6GqE+mQb4Mk37IVDTEvONQfF8CxfeoadGZXa4Qg
	 Q+3b/lGKhyhhYcP976BMY/zyh6Dg/sfQKEuovjBGVi1L7H7OvzGu0xkIgBcy5TiYS8
	 lBRzEed6ROcxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE828CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104693370.13280.6312081959768897761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8245ea67f6af3241bf9d8a0d084e908f652ca65db5bd0413fe668af99091320
Date: Tue, 09 Jun 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781046933
