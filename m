Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683C938B12D
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792248034; cv=none; b=ujGl0XVTat8jaQTn4X9Pig2/7PqoWvsAQSdIQ0OCcUhuVObk/8kJo1DX6IRDWP6SzQ/qVNh0irlyrkNmTDMHqD+TksCc2HyaZ8ms8BTvzMYQxO/E/6IXzvT2x6zAOzPDKvZZXWy5haVpU3KINbQZivlFt4tHKzXLu8zOLJyb808=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792248034; c=relaxed/simple;
	bh=Hgy7/p+e1tt1Xz+YdZ3kVecPSEIWpu4iIwC/53iN2rg=;
	h=To:Subject:From:Message-Id:Date; b=kst47eKRmpyaHoqFo/gaNjCcTp7/5Geaw0LCh9++nuC2F3tLcN1MvdYzp0XiOMYzKhduyJaE6pxSDwpyIbuvZRoUBo0LT6LCWki46GQwqA1XkhL5GDZsuWjXATH5OQFmUw7D5Fo/aLnMkK3r9fiR0qJTccJM42Ptx65mKUKBb1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGQI7akA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGQI7akA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 027D0C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792248034;
	bh=Hgy7/p+e1tt1Xz+YdZ3kVecPSEIWpu4iIwC/53iN2rg=;
	h=To:Subject:From:Date:From;
	b=CGQI7akAYPKNA9+lNzL/ZJwkMh5LvSsB8k/fhGjO4mZtL2yeiNrVWg3FxuMZdRfUr
	 cWRWaLk0uDMFoa/cwuKHh7Uh5uBomaLlOvWRi+gmQtDd8fjPagnWlRYh4iYlHkNucd
	 L1ZgZhEoS3lH1WHboJHu/KSNup1qXpnXW7wJLHki80AQdua4tEQkSAkf3mIC1ztef1
	 B/7AkJA8uEpjMMlnJLLIRkHQ8ydC4vMLB0OCveGgy6/2r6TZKT5VN7AxP3eoZndRsj
	 MOtW6IRmJI7PCEcerIO3hji/6DuEnD0frz71rYG4w9feYN2S9kyhddPKsW2NNqvJ1/
	 l9+SeSO0jynrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA01ECCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224803371.19114.17457614930708467858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a7728fec5c394c8a47af2080371f6c3bf1869d6635a8d1bafa52fd60884190
Date: Sat, 17 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792248033
