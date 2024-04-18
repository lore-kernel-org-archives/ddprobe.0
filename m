Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF9C2576E
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713425363; cv=none; b=B5GBIQ/RpTN9ryrgzSgn2bO38wNOsCkPrg7uxU9EsTbElX8x+J1AJ2pkvGhIXcvGLFj1cUAW8eHZ+hgM0/ofNN83YSAEvWJaWdUidxomWuh+6KwXsE+hHoBn0+LqW6yT1QdC2kg2abFOArQjCnziM6ObSnNHxtv4JbJh/CYECO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713425363; c=relaxed/simple;
	bh=9/h1KJyFBWrla1TqHv9qqRlt6wzksPV1LcDYpwOa6YI=;
	h=To:Subject:From:Message-Id:Date; b=DoiUXleg44fRcoTyrJaBB4/bSuoRxI3LIWnpwJQMLDXGf/gGGeYG5QQn9x0+1BZ4XxsHJNl1qlX5aONFgwksb7jIYHnhIiAhaTm5An7SXHIgIMoieJ55MK+3PddCbBa8ZqYZcdU6tB8uC0ljzlJtJfFXw3tC80vUXgGwwnR+0y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ixb6Phjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ixb6Phjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD93EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713425362;
	bh=9/h1KJyFBWrla1TqHv9qqRlt6wzksPV1LcDYpwOa6YI=;
	h=To:Subject:From:Date:From;
	b=Ixb6PhjwKCWGyjuBo/U4xQ8LmblcjsSN8bjboeTVVUZKRYdC23d5fQ0kyJ0BCqUgQ
	 2cAxPcVh+HjVjEcziKShKKsvyFPhk0SXupU5QyAvh9SbAcaM4vlqZNDPGdTw+76brJ
	 YwjchUX4QpJOtU7TbWPnF92CoibMH60ASl/HRuMjUy373HQ6nDzkkfUpMQjUSnJEJm
	 L3W9wdENzzrKhWf7/VypfY6xTP204LApK2aCUPWlvQyq1hnuxVEO8ob0t4slgEQL8/
	 ASFuZvtUpVYaOA/cMH7epR+W83b7EozqqOu0Zi5juPxTGWaUgD07oGp/5Im9ykXsZD
	 eDDzvQmdKTsng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C446AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342536279.2857.17652704491522079827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afacc2374619ff2616e56ae751e595d014bce69bd2acf9690efc276ebcde5077
Date: Thu, 18 Apr 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713425362
