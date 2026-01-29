Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A658313281
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769704434; cv=none; b=us/V86NYnv5IkOeab4GqEbgocyNJDBYIA7mNRsPnsdYiMZ16hQ9xmEu8Y3upqAiObDHyqlJWW642MOa4hCR+MUAyGH6uy+Yxgvs07ocq9g4b+X1nw35msKB6LEBAPNbMqQOUcTO4j6OJu6dvM/vOsyxcUT6sqf5PQBDcTR4+y8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769704434; c=relaxed/simple;
	bh=nXnefyaNJY0xsVPbWccCqpklnx6l9juHtDVYlV60Z7U=;
	h=To:Subject:From:Message-Id:Date; b=ubGkXzv4I6I4vFQz0UnvwGG+LnvZPLwERv5fWbmDKi0mYLY2u50S8hafi6kmk0oIN5tcNlCeRL4ituhcWIX6aaeccdqG82SOKi1R9B65gbeoLKWi7GuY6RYW9fkDi1pMNZsCGmVe3F6HcIEQ4PpE8483Cl0g9Cj8wUE57hUwAS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWjPMXHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWjPMXHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5EEC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769704433;
	bh=nXnefyaNJY0xsVPbWccCqpklnx6l9juHtDVYlV60Z7U=;
	h=To:Subject:From:Date:From;
	b=WWjPMXHzVXy0E0dZ9rbSYIP9iE2UnEsd8CQu6Q85AZW5DSBa3/inXUkM4w6jjwAsw
	 7A9hpuqsKdMKgHdJW0TJE0BZDJr6A6nj6BMOPnHzj96GuPRDoLlJYoHFpayHFMC42s
	 AVxKRmMn1eFmSyMat00eFEKmv893h/ROT4N85Wl3xuOGjlT8+87SlzmSuNQW/m3wVf
	 pf0eXt9Uz+0vtM8M2+UAEuzqO/dx2KVB/g9SjroBV0iENUTYkPxG85Wzpt0MMTlK87
	 4GJaU1NV4y77T9TqGa/HnKTbXUiJ5yZVAnFtdTXpxlM/NEDWYrKht1rytwziLFNvl6
	 pNFN0oyWW7loQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B9D6B08A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970443358.28586.10445224110003557903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b92ac8891bd54844339a3c21ef414d57c89ef9151d9e19f31a22a260c33c92
Date: Thu, 29 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769704433
