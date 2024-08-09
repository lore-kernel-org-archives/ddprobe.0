Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385571649CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723177554; cv=none; b=pfM/Z3iRi1pFVXAniAdwwxEzT4HQbMyHB2+4HltnuzRxBQ2DtytMk7h/i1/bjXng6ELhDpcjRdaN8IYV4nncFNwl0dS6i3Ooj8bhLkfInSPkRgjAna/+e7AKe/VxAJOzR3u+TU42W9c8AFhYdqddl47MQGomHaJ2ohjTVG0V4IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723177554; c=relaxed/simple;
	bh=dWuIp77+osBZ16mUeQbESe0u4FXL5GcFh8Gf/pAwveg=;
	h=To:Subject:From:Message-Id:Date; b=e+nR154U3FW44bdaF3it6DmbKc8D0SEzGNEURM+DwebNBx7FYB3PB+ZNBmZOacmxuqH4YcnIDS9vsb0X5BbHKYpK4g0XUC76hwp31pYhsNaxKx+hgcgsqtbqsr1bXHF2USuEyhqGOR4kqsXD0Q/WjMiqBHphRYTVEOxz9mKQpmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feq2RuNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feq2RuNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7920C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723177553;
	bh=dWuIp77+osBZ16mUeQbESe0u4FXL5GcFh8Gf/pAwveg=;
	h=To:Subject:From:Date:From;
	b=feq2RuNJ0VOhUqSjOEqxqbb3NgIYKEpqY8W3F1F9vcQcaIKU6srK5HMeH68yF96RP
	 5NFBBmOoyW3mt/EwqrLobkByluCR8hCREpuqyD9D4iYlIAI0447yXI6xr0P0VSbB/C
	 dSnKtnZk6p2ntErXj1AIF3+cWUzPRmdPu5b9KBLd7Pe4jlfuQscUgk4rEx4tflBvr9
	 TZ3bwQtHNlaCLFC9Yp0t/AN6uUuZLfh14owPQlAWiD6mvlgMghlI5kFZ6nXEjndDik
	 fD4Sy1E7Es9ONjYBNFU1ybFhrlVspn77n38V2ysiRpU9XgZWmC/7LCbbay+ZrKFndQ
	 K4UCHKKlqJZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94480C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317755359.30423.1710996292570090577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbf2ecffd4ac71397e12e8e8a30ccca5e406ffdeae329cf1392e26c800b6a0f
Date: Fri, 09 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723177553
