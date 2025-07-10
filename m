Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E96B22FDF2
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752167995; cv=none; b=DjyYvKJAQcuYXzlOF0idrGYLMiuMSoVCXJ28iQ916cunZxqRaCD517ub416bKv3/hcqDJaIjTIKmtEVu6D7hv3oojmf1DjgdvpfzTT/248kLEqB2KiYD+SwM1KEIpmUY88ndnt93YgPf+PrQUlBFSqQgRsK1zUZRKEU0yE0D8rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752167995; c=relaxed/simple;
	bh=thIkdR299eSn+ZqcT6s7SDbI2AFovr8q4CakLKi0Qtc=;
	h=To:Subject:From:Message-Id:Date; b=eVCixVEzfi79oH3270ZuTc0I532qaDbD2eeBqOMhVblFX1mus6lE8NzD2Q7+pKADiMcMRuaaLsUEIqX2HllcjTUZQEfhH+P1BZRrJZqmXYhfB+oWN9SQyxjO7TCB0RXho7CHDCAeOzq6Ox7junWPThs5Rnig8my6OYT0briBZFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I14J1a8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I14J1a8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1007C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752167993;
	bh=thIkdR299eSn+ZqcT6s7SDbI2AFovr8q4CakLKi0Qtc=;
	h=To:Subject:From:Date:From;
	b=I14J1a8qUbUqA+yXwVdFi4LtBhexRl44cdF/DXHKbjGg2njxoonualcPZSJQ/UPDU
	 nCEQIOyO/PuimnLXv8s35l9HQNW0l//PCdUYtvZzf3kjI/bMuaOXuMBjeaphyGTjPV
	 RO+TfqXCizNfg83bla/YLnBSEzh6P4TrKNg/wUpF9HhKVb80nJM++ojIrYVwJox2Zt
	 XoWxf/W7THm3iRKnRjZhf21ogwTNsJrssOPk6XFdu9Qwum974IuWipnUnoh0zP6G+a
	 1H2xdhTW3/b1HRkHwnyn1MsVHfgal1z8b81eMKFrn9xcuHAEmQvTf0AUQcEvHyFPqi
	 fgqTtKgf/SwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE9C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216799357.510.7064462767478183577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d0fada3c879906afb5413216a5898a887e0d56ac3b9238e60ab3c392048a79
Date: Thu, 10 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752167993
