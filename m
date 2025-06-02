Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7092C3251
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748899794; cv=none; b=hpsjHSwLmtavc3eG7eSMwchYK+Mr6Dc9dUiM1+pliBFDrLV+NzMjtTXPpYawqusB/+luQ1cJqZRteErODtxiARADU8mwnuIqyj1Ue1455XOuOZM7lb6vVrIgzF+cSVENc3Sph2fk7oJ/QJceCHtW50EP3Pl5N1M0LzhSwQCCGQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748899794; c=relaxed/simple;
	bh=Gu/MiEBvog3E5dV0uzqVhKxg89vesDGadAHau4hLYRw=;
	h=To:Subject:From:Message-Id:Date; b=H6rSCUK6FjIpKZ4Bc0121WvIlqnWCrZs1daZsk06PjHxAiDEj/FLN141lFDT7clAAAO8mtsADMFRJ6qlEZLAR+24Jnz7f4Tye4pDVhG+zIIrycB7Ry+XVwR8Su8UDJoBHHevm1hmIuXs04dG165CJ9VLk68zEX/STnovV3UDPjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlmiO7aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlmiO7aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D0DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748899793;
	bh=Gu/MiEBvog3E5dV0uzqVhKxg89vesDGadAHau4hLYRw=;
	h=To:Subject:From:Date:From;
	b=TlmiO7aAwd6MLQtZEz4afq7RuC0P+u54tQ6eLEH4ISeYfcq/S1noGfKRctKy5si56
	 bJ+kwYmAQKlI1T4PRuPorWTR5TSpSH2o27j5YfuzxaW4kIlJtVxgBKaoZKVRQJ6HL5
	 /p5TEWMR4joOMC8HDzmfBsVIgovQYCVMSA8w6yi5HOMcL7Mm9g0Kzr26P9OYx5s4Qj
	 cQkjL3bmDy2qbfetIZNnTXsfW0zxAOMWeOJg2T7G/1JZmrIg7bvLYP6x1ny36qHKmE
	 Y1IB0Sb4nOWYU8D1PSmicyY2Yp+7BXZc6NTkSm7EKZsjD9jJ74DlZOQvPVwOST5pe9
	 San8Mi0GPLqHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94376C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889979359.14747.12780133073468805226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae98b7a5a34bfb391d4a6e27482effad987fe4cdd31db8b307920573a621e03
Date: Mon, 02 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748899793
