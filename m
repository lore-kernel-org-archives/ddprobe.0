Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C547080D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753466394; cv=none; b=UQ6cwwVl4nAc81MrwdLyPHXlVu3/eAdmn/CS9Ptse0+YVopPZEk2ziW4RymwlUgCwRNTor44WhUmqxq2YHak9/jGe1Mov/fgD7PqqgYMu8e2Zg6Y88rpO6Ev8QJw3V2qew2GOx2Pqz/LtyBPkhnQxyEyIvY/2Gw73GoqHK2/EDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753466394; c=relaxed/simple;
	bh=PH7o/wvW7SQRCPlI3Z0jcjseImC4aGw1R5SOScyjkzE=;
	h=To:Subject:From:Message-Id:Date; b=EJxnptNZ5CwKdY7n2niXAr7LdIk40GD78YRBsQ/McCLE57v96SzWlgvf5IalCI0VO/C9qEejRBxraA3Y+w6dbTqDtpWGj64TAzOS7vuHJaAFOxKAKVQXR63ZkE0ej2L2CJj1WCtgKkdG6/l10zaakNdMXnsGh8b4NSiAhFUYMpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqeJqBWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqeJqBWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE62C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753466393;
	bh=PH7o/wvW7SQRCPlI3Z0jcjseImC4aGw1R5SOScyjkzE=;
	h=To:Subject:From:Date:From;
	b=lqeJqBWedD42D1gI85tAhy3R/05kU9JsNQdwTAlbS6DiMkTe1cD1FThyrdvQpGCAi
	 DiXGYT7cGD6YQishKZHMTe9Nj32uw9AoQnHiBTVKyc0XWVpAqXOI8n3Zz7q3Ak2VG/
	 TpBakn00yYT7WCfm8vO1rafQxMPkkhYO4itBu7SH43owpltiFY8h3m66wcKF/mdjoM
	 FCG7zsL+9cu8bSGNja4YD7Vli50dNvNHC55BQz702VjdQgorHYYWJlgHURMfelwMNc
	 Skfr6iHnPM6gl5x7nNQntjOme5bZPcs2ZQju5YnM18D3A/nv1vpj3T/eOM3X4NVaXK
	 8QDUmoqFk48Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F661C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346639357.15886.7180443503812516378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26741655a7e4f3df1620ed93d7da16aa9aef5c26760e73d15298076fc10b0bc4
Date: Fri, 25 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753466393
