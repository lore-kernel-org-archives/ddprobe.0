Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5D43E5577
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783420714; cv=none; b=UdO+dLYvzHhFABxjAxaqLfDgclOc652whQQGTDk10L7yLHkq2Som0A1nJS7urunCyQoSyzt0F0TkryCoP7W9+tyATduiJ0CUn5JdTt7PMSuLGCZmn9D7uFmyDbvF/nUR1qKkYr29QSRjLDxu62brX3dTHVHxOrP+V85YIBG/FTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783420714; c=relaxed/simple;
	bh=VbBaPqZGqKUIObgsfkR5fE6LJa9efmdEMtzb0JVzlIQ=;
	h=To:Subject:From:Message-Id:Date; b=d0YrJ24GyYxoqbNVG0Lw3UQMY9AiPjegl6ALJ7UQGHLPY7bJVftVK9xGvkzxAc0AD6Rk2rxFxO41j8hdeQT9yIEoRkFlZgvah15BsdAYuhaPUwIv0E43Wbk47hNAED+xvBxVCZ+NS/OoXXszu9yPa8W1lcK/Avvn/ZVnpgubH3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYVoYto/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYVoYto/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED81C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783420713;
	bh=VbBaPqZGqKUIObgsfkR5fE6LJa9efmdEMtzb0JVzlIQ=;
	h=To:Subject:From:Date:From;
	b=WYVoYto/av2xRC0Uf7A/9tbXKLFofRQ15eR7HRirEezmgAuIFGacPdLvW5vwuCU4A
	 jhEBOpGr6HVjJ1QwrKxzUnNXPcx3o88WKHesFgnzNfGTxu5gU3SriUoe6IkWRHE3kA
	 XM5dzq6seFIqR8EUpxigXlVrxDHjcn2ld1PWnBGqJwlUc8gxLhLRR5Q+QAT71Kb7q7
	 fM8ghzOQ0YlXyCfoEOVvhLPBn0qzu8rtfrZEM6CjMqzvGVtWSMIPoN/cEFCn2LP/8E
	 ePUKpsQaUYs8rsvBwRoXlP221KYOd5JJB+LMPKwkECDy/BDK7WkYzNMS91nZM2GtrX
	 WlHukN6gFJ7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDF8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342071369.24313.819618609790622348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313820d4f1c4b473b9fdbc3879da79fab18bcf5a8e5f96089a8a9a8c4c9f5558
Date: Tue, 07 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783420713
