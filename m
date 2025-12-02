Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309642DFF04
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764704574; cv=none; b=gH55wpMvof6tYjUS5HpzhorKqrVhHphWF1irwu7PNWWNIV8m7Oi/F8C5DOPR33eqGHah3l7llxJT/UjtSMUCfBJ5lJYKpG902Rv4lv9LxL1UR3dU2Ed7k6aY8N2OzN/oqn/Ii+wXsajJzCgvyFEqYGheifRknl8OZ7PD5nsgCT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764704574; c=relaxed/simple;
	bh=qANvpNWHvqY9KFeZZaccFNhqq6NjA1DXgJobO3V5II8=;
	h=To:Subject:From:Message-Id:Date; b=ZAFxmsMgAw36ln7Oyq1G2SnecdPyN4QdBGL8sA+3WY40MtGIEcrg6CV2uozeDe4RV7EvbdOXsVSTCh/bK+siV5wAN7aCF5XazQnsOSTQje2YybKpY8yPKMdQV7pHcGKcUmPUJRen5xicckYYc70vxBK/g4Ai9TQQM+6w+bSfLKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnwkVdRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnwkVdRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6AAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764704573;
	bh=qANvpNWHvqY9KFeZZaccFNhqq6NjA1DXgJobO3V5II8=;
	h=To:Subject:From:Date:From;
	b=YnwkVdRYXTXKcXCQlIOFYzM+4FoLjX00tx1gETcNtrdzSkX8qV8oVx7WnBjutqcSo
	 o+CadRk9v+ZRsd6BUIWrVw1u636G8wKMNq9CAa2VeIihqsN6tA3vfH2FY41pUjEt5n
	 tim1/D+MrY47b9OFiju3QTohq6MZpGTHcU4cuaSQkM3TDJJEVYP1EEoqOCgpC6nSCw
	 NGOevMg/7ENpk/BPIc4HaPLUU4jYX+8rw9Kols4Xqx73hrdIMzE/XbldswUy5H//YY
	 +w+KFZdA7/oGwXd+exuVGv6q2W+31dLSzP2ZkO4Ku+/R1oitYaschzf476T+hKaU97
	 59qMb3c3bpadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98383D1266A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470457358.20453.1312070330748770112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78a77324720d1dae11830344199b039b1573e3e2f3ba23f9de18cbf8598ba10
Date: Tue, 02 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764704573
